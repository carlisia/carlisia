#!/usr/local/bin/bash
# search query
res=$(gh api -X GET /search/issues -f "q=Update+action in:title org:knative OR org:knative-sandbox is:pr is:open author:knative-automation first:10" )

# TODO fixme
# releasability+=$(echo "$res" | jq  -s '.[] | map(select([.files[].path]  | contains([ "knative-releasability.yaml" ]))) ' )

echo "$res" \
| jq '
[.[] |
{
    updated: (if .updatedAt == null then "" else (.updatedAt | strptime("%Y-%m-%dT%H:%M:%SZ") | todate[0:10]) end),
    created:  (if .createdAt == null then "" else (.createdAt | strptime("%Y-%m-%dT%H:%M:%SZ") | todate[0:10]) end ),
    num: .number,
    assignees: [.assignees[].login] | join(", "),
    title: .title | .[0:70],
    labels: [.labels[].name] | join(", "),
    url: .url,
}
] | sort_by("lastupdate")' | jtbl -m

printf '\n';

echo -e "\ndone ✅"
