#!/usr/local/bin/bash

# TODO: #fixme

all_paths=()
read -r -a all_repo_names < <(gita group ll net)

for i in "${all_repo_names[@]}"
do
    all_paths+=( "$(gita ls "$i")" )
done

now=$(date +"%m_%d_%Y")
printf "📆 Ran on: %s\n" "${now}"
echo -e "🤓 (｡◕‿◕｡)\n"
RELEASE=1.5
go get -u knative.dev/test-infra/buoy

for i in "${all_paths[@]}"
do
    pushd "$i" > /dev/null || exit;

    name=$(git remote show origin -n | grep "Fetch URL:" | sed -E "s#^.*/(.*)#\1#" | sed "s#.git##")
    printf '🦎 project:       %s\n' "$name";
    printf '📕 open in editor:  %s\n---\n' "$i";

    if buoy check go.mod --domain knative.dev --release "$RELEASE"; then
        git checkout -b release-${RELEASE}
        ./hack/update-deps.sh --upgrade --release "$RELEASE"
        git status
        git restore .
        git co main
    fi

    printf '\n';
    popd > /dev/null || exit;
done

echo -e "\ndone ✅"

# ```bash
# RELEASE=0.20
# REPO=git@github.com:knative/example.git

# tmpdir=$(dirname $(mktemp -u))
# cd ${tmpdir}
# git clone ${REPO}
# cd "$(basename "${REPO}" .git)"

# if buoy check go.mod --domain knative.dev --release ${RELEASE} --verbose; then
#   git checkout -b release-${RELEASE}
#   ./hack/update-deps.sh --upgrade --release ${RELEASE}
#   git status
# fi
# ```