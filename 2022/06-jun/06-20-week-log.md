# log week of June 20th

## 🚫 review [[06-06-week-log]]
  - [[06-13-week-log]] skiped, PTO
## ✅ fully plan this week
## 🙋‍♀️ Planned
- ✅ Figure out when v1beta1 is dropping - [from roadmap board](https://github.com/orgs/knative-sandbox/projects/10/views/2)
  - [Release v0.5.0-rc1 · kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api/releases/tag/v0.5.0-rc1) is out and the actual release might be cut this week.
- ✅ Figure out the priority of the different Ingress implementations (ie. istio, contour, envoy gateway) - [from roadmap board](https://github.com/orgs/knative-sandbox/projects/10/views/2)
  - > I'm going to focus on [[net-contour]] for Knative v1.6. It'd be great to have someone take on the Istio compatibility work for v1.6 as well. Regardless, that would be next.
  - > [[envoy-gateway]] doesn't seem to be in need at the moment, but it will be beneficial to start work on that once we have the two above working with the beta1 version of Gateway API. It could potentially be the default Ingress that Knative uses? TBD.
- ✅ Sortout tasks from [[2022/gateway-api-beta#Roadmap]] for [[v1.6]] - [from roadmap board](https://github.com/orgs/knative-sandbox/projects/10/views/2)
- 🚧 [Bump Gateway API version to v0.5.0-rc1 · Issue #306 · knative-sandbox/net-gateway-api](https://github.com/knative-sandbox/net-gateway-api/issues/306)
  - ✅ [Skip Istio TestVisibilitySplit failing test for now by carlisia · Pull Request #312 · knative-sandbox/net-gateway-api](https://github.com/knative-sandbox/net-gateway-api/pull/312?w=1) [[prs]]
- ❌ [Update Contour Version - figure out if gateway features are behind flags and enable them · Issue #308 · knative-sandbox/net-gateway-api](https://github.com/knative-sandbox/net-gateway-api/issues/308)
- ❌ [Add contour continuous testing to net-gateway-api test grid · Issue #309 · knative-sandbox/net-gateway-api](https://github.com/knative-sandbox/net-gateway-api/issues/309)


## 😞 Unplanned

---

## Assessments
### Positives
### Negatives
- [[negatives]] did not complete [Bump Gateway API version to v0.5.0-rc1](https://github.com/knative-sandbox/net-gateway-api/issues/306). More:
  - I started out by trying to upgrade the Go version for the project to `v1.17`. It seemed like it should not be postponed any longer since other dependencies are now at this version or higher.
    - running `./hack/update-deps.sh` and `./hack/update-codegen.sh` were taking absolutely foooooreeeeeeveeeeeer to run on my machine. And blowing everything up at times. Awesome. ミ●﹏☉ミ
    - `v0.5.0-rc1` of the Gateway API uses `v0.24.1` of `k8s.io` stuff, but Knative is still on `v0.23.8`.
      - I was not getting the dependency graph correctly
      - Boy, was this a good time for me to finally seriously go mod ◕_◕
      - Not being able to check my failures quickly because the update scripts were taking so long was... painful.
    - running `./hack/update-codegen.sh` was not generating any code. At all. **on my machine** [see desc](https://github.com/knative-sandbox/net-gateway-api/pull/311?w=1#issuecomment-1167408724)
      - took a long time to catch on to this and more time trying to resolve it - still don't know
      - extra fun because running the scripts on my machind was takiing soooo loooong
  - Bypassed these issues by updating to Go v1.17 in a separate PR:
    - didn't have to coordinate the k8s.io deps
    - did not have to (re)generate gateway api code

### Reflections

[//begin]: # "Autogenerated link references for markdown compatibility"
[06-06-week-log]: 06-06-week-log.md "log week of June 6th"
[06-13-week-log]: 06-13-week-log.md "log week of June 13th"
[net-contour]: ../../knative/net-contour.md "net-contour"
[envoy-gateway]: ../../kubernetes/envoy-gateway.md "envoy gateway"
[2022/gateway-api-beta#Roadmap]: ../../scrapbook/2022/gateway-api-beta.md "gateway-api beta"
[v1.6]: ../../contributions/v1.6.md "v1.6"
[prs]: ../../contributions/prs.md "pull requests"
[negatives]: ../negatives.md "negatives"
[//end]: # "Autogenerated link references"