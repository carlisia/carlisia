#!/usr/local/bin/bash

# search query
res=$(gh pr list -s merged -L 200 --search "org:knative org:knative-sandbox author:@me" --json title,createdAt,updatedAt,mergedAt,number,url,state,labels,state)

# printf '🦎 project:       %s, %s\n' "$name" "$len";
# printf '📕 open in editor:  %s\n---\n' "$i";
echo "$res" | jq '
[.[] |
{
    state: .state,
    updated: (if .updatedAt == null then "" else (.updatedAt | strptime("%Y-%m-%dT%H:%M:%SZ") | todate[0:10]) end),
    created:  (if .createdAt == null then "" else (.createdAt | strptime("%Y-%m-%dT%H:%M:%SZ") | todate[0:10]) end ),
    num: .number,
    title: .title | .[0:70],
    labels: [.labels[].name] | join(", "),
    url: .url,
}
] | sort_by("lastupdate")' | jtbl -m

printf '\n';

echo -e "\ndone ✅"
