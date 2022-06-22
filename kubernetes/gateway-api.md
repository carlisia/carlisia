# Kubernetes Gateway API
## What is it
- [[gw-api-desc#Question: Why is it named "gateway api" and not "api gateway".]]
- [[serving#Knative serving runtime post Kubernetes Gateway API]]
- [[gateway-et-al]] - for context around networking resources, if it helps

## Timeline
### GA
GA won't be for at least nine months after v0.5.0 is released, probably a year.

### v6.0
- GH [v0.6.0 Milestone](https://github.com/kubernetes-sigs/gateway-api/milestone/6)
- v0.6.0 won't be GA, it will be the next time we need to move something to v1beta1 (most likely ReferencePolicy once we've settled on a name).

### v5.0 - v1beta1
- [Release v0.5.0-rc1 · kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api/releases/tag/v0.5.0-rc1)
- GH [v0.5.0 Milestone](https://github.com/kubernetes-sigs/gateway-api/milestone/5)
- v0.5.0 is v1beta1 for some resources (GatewayClass, Gateway, HTTPRoute), but not all of them.
- [Gateway API v0.5.0 API Review by robscott · Pull Request #1086 · kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api/pull/1086?w=1)
- [feat: introduce v1beta1 types by mehabhalodiya · Pull Request #1073 · kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api/pull/1073?w=1)

### v1alpha2
- [\[SIG-NETWORK\] Gateway API v1alpha2 Release Plan - Google Docs](https://docs.google.com/document/d/1S5PH72QFIGdYSeinBIIha4Wmnse2l9KQRA-hRzJpNWk/edit)
- [\[SIG-NETWORK\] Gateway API v1alpha2 - Google Slides](https://docs.google.com/presentation/d/1GpvHDSrF-p8xlukXBz4RlVxlxWjDMi8TUhVPPzwa4U8/edit?resourcekey=0-7b8zugLLjBEu2-rTTt85qw#slide=id.p)

Summary of big changes:
- Gateway API now does GEPs (Gateway Enhancement Proposals) for large changes.
- Move to networking.k8s.io apiground (from networking.x-k8s.io). This means that the API will now need to do a full Kubernetes API review process, which is excellent.
- Big changes to how Gateways and Routes interact, see the GEP 724 PR: https://github.com/kubernetes-sigs/gateway-api/pull/725
- Changes to cross-namespace references (adding ReferencePolicy), see GEP 709: https://gateway-api.sigs.k8s.io/geps/gep-709/
- There's now a mechanism for attaching policy to objects, see GEP 713: https://gateway-api.sigs.k8s.io/geps/gep-713/

## Conformance tests
[Slack](https://kubernetes.slack.com/archives/CR0H13KGA/p1647527392531919)
[Slack](https://kubernetes.slack.com/archives/CR0H13KGA/p1648051661322509)

- Core
- Extended
- Custom

## Questions

## Resources
- [Main GH Project Board](https://github.com/kubernetes-sigs/gateway-api/projects/1?query=is%3Aopen+sort%3Aupdated-desc)
- [kubernetes-sigs/gateway-api: Repository for the next iteration of composite service (e.g. Ingress) and load balancing APIs.](https://github.com/kubernetes-sigs/gateway-api)
- [Releases · kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api/releases)
- [\[SIG-NETWORK\] Gateway API Meeting Notes - Google Docs](https://docs.google.com/document/d/1eg-YjOHaQ7UD28htdNxBR3zufebozXKyI28cl2E11tU/edit)
- [SIG Network Gateway API Bi-Meeting - YouTube](https://www.youtube.com/playlist?list=PL69nYSiGNLP1GgO7k02ipPGZUFpSzGaHH)
- [get org membership for kubernetes-sigs](https://github.com/kubernetes/community/blob/master/community-membership.md#member)
- [kubernetes-sig-network/search?q=gateway - Search Conversations](https://groups.google.com/g/kubernetes-sig-network/search?q=gateway)

### Docs
- [\[SIG-NETWORK\] Gateway API user stories - Google Docs](https://docs.google.com/document/d/1OAzVO0HfmF4qD8AW41_eeUY0KP6xjqghusUVwhp4BNg/edit?pli=1#heading=h.nd4ieigrfasq) [[gateway-et-al]]
- [Assessment: Project Gateway API - Google Docs](https://docs.google.com/document/d/1qeSwZ4WVevybTQoL5hG20Dcsh2qMzyPKv-z7qM3ho1c/edit) [[2022/gateway-api-beta]]
- [Troubleshooting Distance | youngnick.net](https://youngnick.net/post/troubleshooting-distance/)
- [Versioning - Kubernetes Gateway API](https://gateway-api.sigs.k8s.io/concepts/versioning/)

#### Videos
- [Understanding the new Kubernetes Gateway API vs Ingress - YouTube](https://www.youtube.com/watch?v=Zqlwn5TZknI) [[2022/gateway-api-beta]] [[video]]
- [Gateway API: Beta to GA - Rob Scott, Google & Nick Young, VMware - YouTube](https://www.youtube.com/watch?v=YPiuicxC8UU) [[2022/gateway-api-beta]] [[video]]
- [Webinar: The evolution of Ingress through the Gateway API - YouTube](https://www.youtube.com/watch?v=IGymKBPyBVw) [[2022/gateway-api-beta]] [[video]]
- [Gateway API: A New Set of Kubernetes APIs for Advanced Traffic Routing - Harry Bagdi & Rob Scott - YouTube](https://www.youtube.com/watch?v=lCRuzWFJBO0) [[gateway-et-al]] [[video]]
- [Sponsored Session: Google Cloud - Multi-cluster, Blue-green Traffic Splitting with the Gateway API - YouTube](https://www.youtube.com/watch?v=vs8YrjdRJJU) [[video]]

### Read
- [Kubernetes Gateway API — Evolution of Service Networking | by Ali Naqvi | May, 2022 | Flomesh](https://blog.flomesh.io/kubernetes-gateway-api-evolution-of-service-networking-aa76ec4efa7e)
- [Unifying Kubernetes Service Networking (Again) with the Gateway API – The New Stack](https://thenewstack.io/unifying-kubernetes-service-networking-again-with-the-gateway-api/)
- [Evolving Kubernetes networking with the Gateway API | Kubernetes](https://kubernetes.io/blog/2021/04/22/evolving-kubernetes-networking-with-the-gateway-api/) [[gateway-et-al]] [[read]]
- [From One to Many: The Road to Multicluster - Containerized Adventures](http://kaslin.rocks/from-one-to-many-the-road-to-multicluster/) [[2022/gateway-api-beta]]

[//begin]: # "Autogenerated link references for markdown compatibility"
[gw-api-desc#Question: Why is it named "gateway api" and not "api gateway".]: ../scrapbook/2022/gw-api-desc.md "Gateway API description"
[serving#Knative serving runtime post Kubernetes Gateway API]: ../knative/serving.md "serving"
[gateway-et-al]: ../learning/gateway-et-al.md "Gateway et al"
[2022/gateway-api-beta]: ../scrapbook/2022/gateway-api-beta.md "gateway-api beta"
[video]: ../learning/video.md "video"
[read]: ../learning/read.md "read"
[//end]: # "Autogenerated link references"