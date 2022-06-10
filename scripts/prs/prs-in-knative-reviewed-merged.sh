#!/usr/local/bin/bash

# search query
res=$(gh pr list -s merged -L 100 --search "-author:@me -author:knative-automation -org:carlisia org:knative org:knative-sandbox -org:vmware-tanzu involves:@me" --json author,title,author,createdAt,updatedAt,mergedAt,number,url,state,labels,state,headRepository)

printf '🦎 My PRs in Knative\n\n';
echo "$res"  | jq '
[.[] |
{
    state: .state,
    repo: .headRepository.name,
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
