# Gateway API description

## Question: Why is it named "gateway api" and not "api gateway".
Answered by [youngnick (Nick Young)](https://github.com/youngnick):
> It's because it's a Kubernetes API for making Gateways, not an API Gateway.
> An API Gateway is a way you _could_ implement the Gateway API, but the concept of a Gateway is more broad than just an API Gateway.
> We did start out by calling it Ingress V2, then Services API when it expanded, but given that we are not removing Ingress or Service, we needed a new name, and the Gateway resource is what everything ended up pivoting around.

## Issue
[Improvement to the website description of what a Gateway API is and is not · Issue #1157 · kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api/issues/1157)
## Resources
- [Add Kubernetes Gateway API docs assessment by mehabhalodiya · Pull Request #109 · cncf/techdocs · GitHub](https://github.com/cncf/techdocs/pull/109)
- [The evolution of Ingress through the Gateway API | Cloud Native Computing Foundation](https://www.cncf.io/online-programs/the-evolution-of-ingress-through-the-gateway-api/) - (this is a good desc)