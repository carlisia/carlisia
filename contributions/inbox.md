# inbox

## 🪣 Backlog


### networking
#### net-gateway-api
- installation guide (improvement) - [Improve installation documentation · Issue #292 · knative-sandbox/net-gateway-api](https://github.com/knative-sandbox/net-gateway-api/issues/292) - [[net-gateway-api]] ¿ⓧ_ⓧﮌ
- ask Kanjiro for a deep dive ♥‿♥
- create a listing of learning resources - share it with [[downstream]] - [[net-gateway-api]] ♥‿♥
- we can deprecate kourier in favor of the new contour/envoy?
- would be interesting to create 2 gateways in contours, 1 loadbalance service, 1 cluster ip service - do a manual test - would be nice bc you could say no need to have two copies of contour to have internet exposed [[EA]] - [[net-gateway-api]] ♥‿♥
- [ReconcileIngressFailed in Serving kind e2e testing · Issue #275 · knative-sandbox/net-gateway-api · GitHub](https://github.com/knative-sandbox/net-gateway-api/issues/275) (seems hard, need to watch 2 walkthru recordings from - [[net-gateway-api]] [[DP]]) (-_-)
- [Test Evan's net-contour PR to run tests locally - see gh action scrips as example to add metllb: Add nightly build to run e2e tests against Contour main by sunjayBhatia · Pull Request #728 · knative-sandbox/net-contour](https://github.com/knative-sandbox/net-contour/pull/728/files) - [[testing]] [[net-gateway-api]] ♥‿♥

#### net-contour
- remove contour operator [May 3rd, 2022](https://www.amplenote.com/notes/5ec5a698-cb15-11ec-8957-a6b52dd98539) ♥‿♥
- add loglevel as well double check that net-contour has this as well: [https://github. com/knative-sandbox/net-kourier/issues/740](https://github.com/knative-sandbox/net-kourier/issues/740) - [[net-contour]] ♥‿♥


### net-kourier
- can it be dropped now with the news from [[net-contour]]? [[net-kourier]] [[DP]] [[questions]]

#### Kubernetes gateway-api
- [Indicate a new Route "Readiness" condition · Issue #1156 · kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api/issues/1156) - [[gateway-api]] ♥‿♥
- [Improvement to the website description of what a Gateway API is and is not · Issue #1157 · kubernetes-sigs/gateway-api · GitHub](https://github.com/kubernetes-sigs/gateway-api/issues/1157) - [[gateway-api]] (-_-)

### support
- add links from these pages to the shared bookmark link:
  - [ ] [support references and troubleshooting](https://www.amplenote.com/notes/ad25a434-8ff9-11ec-a4cd-0ac1ffe50cf3?tag=support) - [[support]]
 ♥‿♥
  - [ ] [test grid](https://www.amplenote.com/notes/d2bc5198-8fae-11ec-927c-0ac1ffe50cf3?tag=support) - [[support]]
♥‿♥

### automation
- [ ] issue with the [[owners-file]] ♥‿♥

### contributor
- suggest a triage process to ensure issues get responded to - [[contributor]] (-_-)
- issue triage + search query across all networking repos for good first issue for the WG - [[contributor]]
- write up blog post on how to respond to PRs as a maintainer (vis a vis the guy who needs help with tests) [[contributor]] [[pr-reviews]]

### pr reviews
- guy who needs help with test


### working group
- next WG update? - [[working group]]
  - watch the last [[TOC]] update for networking group

### questions
- look at the dep for pod readiness gates - ,might be worth surfacing the discussion of how this work vis a vis a potential implementaion of readiness in net-contour- openshift has some routing sequencing- readiness becomes a collaboration of things that need to come together that need to mark the route as ready - ex: this won't be ready until i do something else [[DP]] [[questions]]
-
### planning
- update gh project board
- Add issues to each item in the gh bets board
- update [Knative Serving Bets Breakdown - Feb 2022](https://github.com/orgs/vmware-tanzu/projects/37/views/1) with new tasks
- change MF 1.1 meeting time[[MF]]
- create a new 1.1 doc [MF - Carlisia - Google Docs](https://docs.google.com/document/d/1CUtNJEQB5ncyQPwzSvRnkEoHnj0YXHv31k6ccr425ZE/edit#heading=h.f3rr838kod4r)

### corp
- [ ] submitt serveless and other books [[expenses]] for reimbursement (-_-)

### [[deferred]]
## 💃 Extra fun
### [[productivity]]
- finish the [[gh-queries]] scripts ♥‿♥
- create a macro to generate the weekly log (file name, title) ♥‿♥
- create a km macro to paste the weekly log headers ♥‿♥
- worklog improvement: [Code blocks and syntax highlight · Issue #5 · hikerpig/foam-template-gatsby-kb](https://github.com/hikerpig/foam-template-gatsby-kb/issues/5) ♥‿♥


[//begin]: # "Autogenerated link references for markdown compatibility"
[net-gateway-api]: ../knative/net-gateway-api.md "net-gateway-api"
[downstream]: ../oss/downstream.md "downstream"
[net-gateway-api]: ../knative/net-gateway-api.md "net-gateway-api"
[EA]: ../collaborators/EA.md "EA"
[net-gateway-api]: ../knative/net-gateway-api.md "net-gateway-api"
[net-gateway-api]: ../knative/net-gateway-api.md "net-gateway-api"
[DP]: ../collaborators/DP.md "DP"
[testing]: ../oss/testing.md "testing"
[net-gateway-api]: ../knative/net-gateway-api.md "net-gateway-api"
[net-contour]: ../knative/net-contour.md "net-contour"
[net-contour]: ../knative/net-contour.md "net-contour"
[net-kourier]: ../knative/net-kourier.md "net-kourier"
[DP]: ../collaborators/DP.md "DP"
[questions]: questions.md "questions"
[gateway-api]: ../kubernetes/gateway-api.md "gateway-api"
[gateway-api]: ../kubernetes/gateway-api.md "gateway-api"
[support]: ../knative/support.md "support"
[support]: ../knative/support.md "support"
[owners file]: <../notebook/2022/owners file.md> "owners file"
[contributor]: ../oss/contributor.md "contributor"
[contributor]: ../oss/contributor.md "contributor"
[contributor]: ../oss/contributor.md "contributor"
[pr reviews]: <../oss/pr reviews.md> "pr reviews"
[working group]: <../oss/working group.md> "working group"
[TOC]: ../oss/TOC.md "TOC"
[DP]: ../collaborators/DP.md "DP"
[questions]: questions.md "questions"
[MF]: ../collaborators/MF.md "MF"
[expenses]: ../corp/expenses.md "expenses"
[deferred]: deferred.md "deferred"
[productivity]: productivity.md "productivity"
[gh queries]: <../notebook/2022/gh queries.md> "gh queries"
[//end]: # "Autogenerated link references"
[//begin]: # "Autogenerated link references for markdown compatibility"
[net-gateway-api]: ../knative/net-gateway-api.md "net-gateway-api"
[downstream]: ../oss/downstream.md "downstream"
[net-gateway-api]: ../knative/net-gateway-api.md "net-gateway-api"
[EA]: ../collaborators/EA.md "EA"
[net-gateway-api]: ../knative/net-gateway-api.md "net-gateway-api"
[net-gateway-api]: ../knative/net-gateway-api.md "net-gateway-api"
[DP]: ../collaborators/DP.md "DP"
[testing]: ../oss/testing.md "testing"
[net-gateway-api]: ../knative/net-gateway-api.md "net-gateway-api"
[net-contour]: ../knative/net-contour.md "net-contour"
[net-contour]: ../knative/net-contour.md "net-contour"
[net-kourier]: ../knative/net-kourier.md "net-kourier"
[DP]: ../collaborators/DP.md "DP"
[questions]: questions.md "questions"
[gateway-api]: ../kubernetes/gateway-api.md "gateway-api"
[gateway-api]: ../kubernetes/gateway-api.md "gateway-api"
[support]: ../knative/support.md "support"
[support]: ../knative/support.md "support"
[owners file]: <../notebook/2022/owners file.md> "owners file"
[contributor]: ../oss/contributor.md "contributor"
[contributor]: ../oss/contributor.md "contributor"
[contributor]: ../oss/contributor.md "contributor"
[pr reviews]: <../oss/pr reviews.md> "pr reviews"
[working group]: <../oss/working group.md> "working group"
[TOC]: ../oss/TOC.md "TOC"
[DP]: ../collaborators/DP.md "DP"
[questions]: questions.md "questions"
[MF]: ../collaborators/MF.md "MF"
[expenses]: ../corp/expenses.md "expenses"
[deferred]: deferred.md "deferred"
[productivity]: productivity.md "productivity"
[gh queries]: <../notebook/2022/gh queries.md> "gh queries"
[//end]: # "Autogenerated link references"