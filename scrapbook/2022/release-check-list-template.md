# release-check-list-template.md
- PR: [Add checklists + restructure instructions    by carlisia · Pull Request #132 · knative/release · GitHub](https://github.com/knative/release/pull/132) [[prs]]
- Issue: [Create a GH issue template with a checklist for releases · Issue #111 · knative/release · GitHub](https://github.com/knative/release/issues/111)

## References

## Questions

## Notes
In this PR:

Major changes:

- Edited the instruction text for improvements
-

Minor changes worth noting:

- changed the PR used as reference to add/remove leads, existing one didn't update the `OWNERS_ALIASES` file
-

Notes:

- In INSTRUCTIONS.md, I removed the subsection below from section `## 14 days prior to the release` because it is also in the section `## 7 days prior to the release` and seemed to be unintentially duplicated.

        `### 2. Announce the imminent `pkg` cut`
```
assignees:
  - knative-release-leads
```

### checklists to double check
- link to releasability for the 14-days

### Test:
✅ Please open the [Release - Second Batch of Repos Checklist](https://github.com/carlisia/carlisia/issues/new?assignees=carlisia&template=6-release-second-batch-checklist.yaml) to track the releases.

### Check

🚨 To start only after both **eventing** and **serving** have been released.

- readme.md changes to the schedule, add new, archive oldest

- that these links didn't brake or need fixing:

## Summary

- For a timeline and listing of all tasks for a release:
  * [First week of the rotation](#first-week-of-the-rotation)
  * [14 days prior to the release](#14-days-prior-to-the-release)
  * [7 days prior to the release](#7-days-prior-to-the-release)
  * [1 day prior to the release](#1-day-prior-to-the-release)
  * [Start of the release](#start-of-the-release)
  * [Post-Release work](#post-release-work)

- For details on how to cut a release:
  - [Release a repository](#release-a-repository)

## Resources
[Create a GH issue template with a checklist for releases · Issue #111 · knative/release · GitHub](https://github.com/knative/release/issues/111)