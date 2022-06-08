#!/usr/local/bin/bash

# search query
res=$(gh pr list -s merged --repo knative-sandbox/net-gateway-api -L 200 --search "sort:updated-desc" --json author,title,author,createdAt,updatedAt,mergedAt,number,url,state,labels,files)

printf '🦎 project:       knative-sandbox/net-gateway-api - Merged \n';
printf '📕 open online: https://github.com/knative-sandbox/net-gateway-api/pulls?q=is:merged+sort:updated-desc \n---\n';
echo "$res" | jq '
[.[] |
{
    merged: (if .mergedAt == null then "" else (.mergedAt | strptime("%Y-%m-%dT%H:%M:%SZ") | todate[0:10]) end),
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
