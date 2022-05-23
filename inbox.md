# inbox

## 🪣 Backlog

### [[networking]]

#### [[net-gateway-api]]
- ask Kanjiro for a deep dive ♥‿♥
- create a listing of learning resources - share it with [[downstream]] ♥‿♥
- add gw tests for the new contour/envoy - better supported kourier, still doesn't support our kingress, long term we might not need to support kourier [[DP]] ♥‿♥
  - we can deprecate kourier in favor of the above
  - watch the last [[TOC]] update for networking group
- would be interesting to create 2 gateways in contours, 1 loadbalance service, 1 cluster ip service - do a manual test - would be nice bc you could say no need to have two copies of contour to have internet exposed [[EA]] ♥‿♥
- [ReconcileIngressFailed in Serving kind e2e testing · Issue #275 · knative-sandbox/net-gateway-api · GitHub](https://github.com/knative-sandbox/net-gateway-api/issues/275) (seems hard, need to watch 2 walkthru recordings from [[DP]]) (-_-)
- installation guide (improvement) - https://github.com/knative-sandbox/net-gateway-api/issues/292 (-_-)
- [Test Evan's net-contour PR to run tests locally - see gh action scrips as example to add metllb: Add nightly build to run e2e tests against Contour main by sunjayBhatia · Pull Request #728 · knative-sandbox/net-contour](https://github.com/knative-sandbox/net-contour/pull/728/files) [[testing]] ♥‿♥

#### [[net-contour]]
- remove contour operator [May 3rd, 2022](https://www.amplenote.com/notes/5ec5a698-cb15-11ec-8957-a6b52dd98539) ♥‿♥
- add loglevel as well double check that net-contour has this as well: [https://github. com/knative-sandbox/net-kourier/issues/740](https://github.com/knative-sandbox/net-kourier/issues/740) ♥‿♥

#### [[gateway-api]]
- [Indicate a new Route "Readiness" condition · Issue #1156 · kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api/issues/1156) ♥‿♥
- [Improvement to the website description of what a Gateway API is and is not · Issue #1157 · kubernetes-sigs/gateway-api · GitHub](https://github.com/kubernetes-sigs/gateway-api/issues/1157) (-_-)

### [[support]]
- add links from these pages to rainbow.io:
  - [ ] [support references and troubleshooting](https://www.amplenote.com/notes/ad25a434-8ff9-11ec-a4cd-0ac1ffe50cf3?tag=support) ♥‿♥
  - [ ] [test grid](https://www.amplenote.com/notes/d2bc5198-8fae-11ec-927c-0ac1ffe50cf3?tag=support) ♥‿♥

### [[automation]]
- dependabot: do we need to add it to the net-* repos to auto update the dependencies? ♥‿♥
- seems the pr labeling automation is not picking up nested folders under directories with [[networking]] owners files in the [[serving]] repo. could also be useful for the [[gh queries]] to search on that label instead of iterating over owner files in the serving repo ♥‿♥

### [[contributor]]
- [PROCESS CHANGE: Guidance for improved repo structure + centralize/update common files · Issue #925 · knative/community · GitHub](https://github.com/knative/community/issues/925) [sad because it's late] (-_-)
  - look at [INCUBATING PROJECT ONBOARDING] Knative · Issue #794 · cncf/toc and the license scanning tool (fossa or snyk) 🥱
  - get back to krna about health files propagation
  - get back to mauricio
- suggest a triage process to ensure issues get responded to (-_-)
- issue triage + search query across all networking repos for good first issue for the WG

### [[pr reviews]]
- guy who needs help with test
- write up blog post on how to respond to PRs as a maintainer (vis a vis the guy who needs help with tests) [[contributor]]

### planning
- update gh project board
- Add issues to each item in the gh bets board
- update [Knative Serving Bets Breakdown - Feb 2022](https://github.com/orgs/vmware-tanzu/projects/37/views/1) with new tasks
- change Mark's 1.1 meeting time[[MF]]
- create a new 1.1 doc [Mark <<>> Carlisia - Google Docs](https://docs.google.com/document/d/1CUtNJEQB5ncyQPwzSvRnkEoHnj0YXHv31k6ccr425ZE/edit#heading=h.f3rr838kod4r)

### admin
- [ ] do dap survey (-_-)
  - [https://vmware.slack.com/archives/G012YRRQRQ9/p1651688261353299](https://vmware.slack.com/archives/G012YRRQRQ9/p1651688261353299)
  - [https://vmware.slack.com/archives/C014B9H63LP/p1651195321092949](https://vmware.slack.com/archives/C014B9H63LP/p1651195321092949)
- vmw hive training (-_-)
  - [ ] [Saba: Health and Safety Orientation for Employees](https://vmware.sabacloud.com/Saba/Web_spf/NA1PRD0121/app/shared;spf-url=common%2Flearningeventdetail%2Fcrtfy000000004358392%3Fcontext%3Duser&learnerId%3Demplo000000000948793&returnPage%3DMyLearning) - 2020
  - [ ] [Saba: Respectful Workplace - US Employees](https://vmware.sabacloud.com/Saba/Web_spf/NA1PRD0121/app/shared;spf-url=common%2Flearningeventdetail%2Fcrtfy000000004361812%3Fcontext%3Duser&learnerId%3Demplo000000000948793&returnPage%3DMyLearning)
  - [ ] [Saba: Employee - Health & Safety Orientation Training](https://vmware.sabacloud.com/Saba/Web_spf/NA1PRD0121/app/shared;spf-url=common%2Flearningeventdetail%2Fcrtfy000000004362149%3Fcontext%3Duser&learnerId%3Demplo000000000948793&returnPage%3DMyLearning) - 2022
  - [ ] [Saba: Psychological Safety: An Introduction](https://vmware.sabacloud.com/Saba/Web_spf/NA1PRD0121/app/shared;spf-url=common%2Fleclassdetail%2Fregdw000000006681925%3Fcontext%3Duser&learnerId%3Demplo000000000948793&returnPage%3DMyLearning)
- [ ] expense serveless and other books [[reimbursements]] (-_-)

## 💃 Would be extra fun
### [[productivity]]
- finish the [[gh queries]] scripts ♥‿♥
- create a macro to generate the weekly log (file name, title) ♥‿♥
- create a km macro to paste the weekly log headers ♥‿♥
- worklog improvement: [Code blocks and syntax highlight · Issue #5 · hikerpig/foam-template-gatsby-kb](https://github.com/hikerpig/foam-template-gatsby-kb/issues/5) ♥‿♥


[//begin]: # "Autogenerated link references for markdown compatibility"
[networking]: networking "networking"
[net-gateway-api]: notes/net-gateway-api "net-gateway-api"
[downstream]: downstream "downstream"
[DP]: notes/DP "DP"
[TOC]: notes/TOC "TOC"
[EA]: notes/EA "EA"
[DP]: notes/DP "DP"
[testing]: testing "testing"
[net-contour]: notes/net-contour "net-contour"
[gateway-api]: gateway-api "gateway-api"
[support]: support "support"
[automation]: automation "automation"
[networking]: networking "networking"
[serving]: notes/serving "serving"
[gh queries]: <notes/gh queries> "gh queries"
[contributor]: contributor "contributor"
[pr reviews]: <pr reviews> "pr reviews"
[contributor]: contributor "contributor"
[MF]: notes/MF "MF"
[reimbursements]: notes/reimbursements "reimbursements"
[productivity]: productivity "productivity"
[gh queries]: <notes/gh queries> "gh queries"
[//end]: # "Autogenerated link references"