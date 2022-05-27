#!/usr/local/bin/bash

all_paths=()
read -r -a all_repo_names < <(gita group ll net)

for i in "${all_repo_names[@]}"
do
    all_paths+=( "$(gita ls "$i")" )
done

now=$(date +"%m_%d_%Y")
printf "📆 Ran on: %s\n" "${now}"
echo -e "🤓 (｡◕‿◕｡)\n"
for i in "${all_paths[@]}"
do
    pushd "$i" > /dev/null || exit;
    # search query
    res=$(gh issue list -s open --search "author:@me" --json author,title,author,createdAt,updatedAt,number,url,state,labels)
    name=$(git remote show origin -n | grep "Fetch URL:" | sed -E "s#^.*/(.*)#\1#" | sed "s#.git##")

    len=$(echo "$res" | jq '[.[]] | length')
    if [ "$len" == 0 ]; then
        continue
    fi

    printf '🦎 project:       %s, %s\n' "$name" "$len";
    printf '📕 open in editor:  %s\n---\n' "$i";
    echo "$res" | jq '
    [.[] |
    {
        updated: (if .updatedAt == null then "" else (.updatedAt | strptime("%Y-%m-%dT%H:%M:%SZ") | todate[0:10]) end),
        created:  (if .createdAt == null then "" else (.createdAt | strptime("%Y-%m-%dT%H:%M:%SZ") | todate[0:10]) end ),
        num: .number,
        author: .author.login,
        title: .title | .[0:70],
        labels: [.labels[].name] | join(", "),
        url: .url,
    }
    ] | sort_by("lastupdate")' | jtbl -m

    printf '\n';
    popd > /dev/null || exit;
done

echo -e "\ndone ✅"
