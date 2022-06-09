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
    res=$(gh pr list -s merged --search "author:@me sort:updated-desc" --json author,title,createdAt,mergedAt,mergedAt,number,url,labels,files)
    name=$(git remote show origin -n | grep "Fetch URL:" | sed -E "s#^.*/(.*)#\1#" | sed "s#.git##")

    if [ "$name" == "serving" ]; then
        # Contributions that count for the Networking WG are all of those made to the `networking`, as well as all
        # the `net-*` repos and the `serving` repo. However, for the `serving` repo, only the contributions made
        # to Go packages designated as part of 'area/networking' are attributed to the Networking WG.
        # One way to search for that is to run the following at the root of the `serving` repo:
        # `echo "\n" | find . -name OWNERS | xargs grep -rl 'area/networking'`.

        # This block handles this special case where PRs that contain files pertaining to the Networking WG
        # need to be included in the result.

        # fetch all the owners files for this WG area
        NETWORKING_DIR=$(dirname $(find . -name OWNERS | xargs grep -rl 'area/networking') | xargs | sed 's/\.\///g' | yq -o=json | jq ' [.] | map(. |= split(" ")) [] | sort_by(.) | .[]' )

        serving=()
        for p in $NETWORKING_DIR; do
        # echo "$res" | jq  -s '.[] | map(select([.files[].path]  | contains([ '"$p"' ]))) | .[]'
            serving+=$(echo "$res" | jq  -s '.[] | map(select([.files[].path]  | contains([ '"$p"' ]))) | .[] ' )
        done

        printf '🦎 project:       %s\n' "$name";
        printf '📕 open in editor:  %s\n---\n' "$i";
        echo "${serving[@]}" | jq  -s '
            [.[] |
            {
                created:  (if .createdAt == null then "" else (.createdAt | strptime("%Y-%m-%dT%H:%M:%SZ") | todate[0:10]) end ),
                merged: (if .mergedAt == null then "" else (.mergedAt | strptime("%Y-%m-%dT%H:%M:%SZ") | todate[0:10]) end),
                num: .number,
                title: .title | .[0:70],
                labels: [.labels[].name] | join(", "),
                url: .url,            }
            ] | sort_by("lastupdate")' | jtbl -m
        continue
    fi

    len=$(echo "$res" | jq '[.[]] | length')
    if [ "$len" == 0 ]; then
        continue
    fi

    printf '🦎 project:       %s, %s\n' "$name" "$len";
    printf '📕 open in editor:  %s\n---\n' "$i";
    echo "$res" | jq '
    [.[] |
    {
        created:  (if .createdAt == null then "" else (.createdAt | strptime("%Y-%m-%dT%H:%M:%SZ") | todate[0:10]) end ),
        merged: (if .mergedAt == null then "" else (.mergedAt | strptime("%Y-%m-%dT%H:%M:%SZ") | todate[0:10]) end),
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
