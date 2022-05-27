# release-check-list-template.md


## References

## Questions

## Notes
In this PR:

Notes:

- In INSTRUCTIONS.md, I removed the subsection below from section `## 14 days prior to the release` because it is also in the section `## 7 days prior to the release` and seemed to be unintentially duplicated.

        `### 2. Announce the imminent `pkg` cut`

- I don't know if the value for the `assignees` field will work. The `knative/knative-release-leads` failed the regex validation, so I used only `knative-release-leads`.

```
assignees:
  - knative-release-leads
```

### Test:
✅ Please open the [Release - Second Batch of Repos Checklist](https://github.com/carlisia/carlisia/issues/new?assignees=carlisia&template=6-release-second-batch-checklist.yaml) to track the releases.


## Resources
[Create a GH issue template with a checklist for releases · Issue #111 · knative/release · GitHub](https://github.com/knative/release/issues/111)