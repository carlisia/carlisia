#!/usr/local/bin/bash

# search query
res=$(gh pr list -s open --repo kubernetes-sigs/gateway-api -L 200 --search "sort:updated-desc" --json author,title,author,createdAt,updatedAt,mergedAt,number,url,state,labels,files)

printf '🦎 project:       Gateway API - Open PRs \n';
printf '📕 open online: https://github.com/kubernetes-sigs/gateway-api/pulls \n---\n';
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

echo -e "\ndone ✅"
