# Gateway et al

This is a very crude attempt to explain the difference between ingress, proxy, api gateway and other networking resources for people who only need a basic understanding about these concepts so they can get on with doing their jobs with some level of confidence. This is mostly in the context of work done around the Kubernetes ecosystem and, especially, the Kubernetes Gateway API.

tl;dr: at a high, conceptual level, there's not really a difference, they are all pieces of software that "gate" the entry of network traffic into a system. The boundaries for these things are very much in the ballpark of each other, the differences are in the detail of specific specializations intended for each. Sometimes one of those things is used (so they are sort of interchangeable), sometimes many of them are used simultaneously (so they are sort of complementary also).

I submit that when one doesn't understand the concept of something that is used to build something else that is used to build something else, it is naturally hard to grok how things work as things move up through higher levels of a tech stack. And, understanding a technical concept a lot of times has a lot to do with understanding the meaning that a group of people assigned to a software functionality, as well as understanding the intended boundaries around that functionality. If one can sort of grasp those two things, they will be pretty much fluent. This is the goal for this (very rudimentary) "documentation".

Each of the headers in this document is the Google search terms used to obtain the cited references. In other words: there's lots more where these came from! Looking at images of diagrams (not included) that come up with these searches can be very helpful.

## references
- [[ingress]]
- [[envoy]]
- [[kubernetes-networking]]
## Status
This document is currently a wip.

## what is an API
Starting at (sort of) the beginning. It is all "APIs all the way down". I actually just thought of googling this and, lo and behold, there's a great techie friendly post I would strongly recommend to anyone wanting to get a better understanding of what an API actually is: [APIs All the Way Down - Not Boring by Packy McCormick](https://www.notboring.co/p/apis-all-the-way-down?s=r).

It is **very much** worth noting that in most all cases when we talk API we mean an `http` API:
- [HTTP API vs REST API: 3 Critical Differentiators - Learn | Hevo](https://hevodata.com/learn/http-api-vs-rest-api/)

[API - Wikipedia](https://en.wikipedia.org/wiki/API):
> An application programming interface is a connection between computers or between computer programs. It is a type of software interface, offering a service to other pieces of software. A document or standard that describes how to build or use such a connection or interface is called an API specification.

[What is an API? (Application Programming Interface) | MuleSoft](https://www.mulesoft.com/resources/api/what-is-an-api):
> API is the acronym for Application Programming Interface, which is a software intermediary that allows two applications to talk to each other.

## api vs service
[API vs Web Service: What’s the Difference? - guru99.com](https://www.guru99.com/api-vs-web-service-difference.html#:~:text=Web%20service%20is%20a%20collection%20of%20open%20source%20protocols%20and,other%20without%20any%20user%20involvement):
> Web service is a collection of open source protocols and standards used for exchanging data between systems or applications whereas API is a software interface that allows two applications to interact with each other without any user involvement.Apr 23, 2022


## what is an api gateway
[What does an API gateway do? - readhat](https://www.redhat.com/en/topics/api/what-does-an-api-gateway-do#:~:text=An%20API%20gateway%20is%20an,and%20return%20the%20appropriate%20result):
> An API gateway is an API management tool that sits between a client and a collection of backend services. An API gateway acts as a reverse proxy to accept all application programming interface (API) calls, aggregate the various services required to fulfill them, and return the appropriate result.

## what is a proxy
[Proxy server - Wikipedia](https://en.wikipedia.org/wiki/Proxy_server)
> In computer networking, a proxy server is a server application that acts as an intermediary between a client requesting a resource and the server providing that resource.

[What is a Proxy Server? How It Works & How to Use It | Fortinet](https://www.fortinet.com/resources/cyberglossary/proxy-server):
> A proxy server is a system or router that provides a gateway between users and the internet. Therefore, it helps prevent cyber attackers from entering a private network.

## what is a reverse proxy
[Reverse proxy - Wikipedia](https://en.wikipedia.org/wiki/Reverse_proxy):
> In computer networks, a reverse proxy is the application that sits in front of back-end applications and forwards client requests to those applications. Reverse proxies help increase scalability, performance, resilience and security. Wikipedia

## proxy vs reverse proxy
[The Difference Between Proxy and Reverse Proxy](https://www.strongdm.com/blog/difference-between-proxy-and-reverse-proxy#:~:text=A%20traditional%20forward%20proxy%20server,on%20behalf%20of%20multiple%20servers):
> A traditional forward proxy server allows multiple clients to route traffic to an external network. For instance, a business may have a proxy that routes and filters employee traffic to the public Internet. A reverse proxy, on the other hand, routes traffic on behalf of multiple servers.May 26, 2022

## ingress vs egress
[Ingress/Egress - txdot.gov](https://www.txdot.gov/driver/txdot-visual-dictionary/ingress-egress.html#:~:text=Ingress%20refers%20to%20the%20right,roadways%20to%20houses%20and%20businesses):
> Ingress refers to the right to enter a property, while egress refers to the right to exit a property. For example, a driveway provides ingress and egress from roadways to houses and businesses.

## what is ingress vs egress in networking
[What is Ingress Traffic? — Definition by Techslang](https://www.techslang.com/definition/what-is-ingress-traffic/#:~:text=Ingress%20traffic%20pertains%20to%20all,message%20from%20an%20external%20source):
> Ingress traffic pertains to all network traffic and data that come from outside a local network and is expected to land on a specific location within it. It is initiated from a remote location or within a network but outside a subnetwork. An example of such is an email message from an external source.

[What is Ingress Traffic? - Definition from Techopedia](https://www.techopedia.com/definition/2415/ingress-traffic):
> Ingress traffic is composed of all the data communications and network traffic originating from external networks and destined for a node in the host network. Ingress traffic can be any form of traffic whose source lies in an external network and whose destination resides inside the host network.Aug 18, 2011

[Ingress vs. Egress: What is egress and ingress in the cloud? | Aviatrix](https://aviatrix.com/learn-center/cloud-security/egress-and-ingress/#:~:text=Egress%20in%20the%20world%20of,the%20boundary%20of%20a%20network):
> Egress in the world of networking implies traffic that exits an entity or a network boundary, while Ingress is traffic that enters the boundary of a network.

[Ingress and egress rules  |  VPC Service Controls  |  Google Cloud](https://cloud.google.com/vpc-service-controls/docs/ingress-egress-rules):
> The ingress and egress rule blocks specify the direction of allowed access to and from different identities and resources. Ingress and egress rules can replace and simplify use cases that previously required one or more perimeter bridges.

## Now entering Kubernetes territory...
- See [[kubernetes-networking]] for more resources.

## what is a Kubernetes ingress
[What is an Ingress? | kubelabs](https://collabnix.github.io/kubelabs/Ingress101/#:~:text=In%20Kubernetes%2C%20an%20Ingress%20is,rules%20into%20a%20single%20resource):
> In Kubernetes, an Ingress is an object that allows access to your Kubernetes services from outside the Kubernetes cluster. You configure access by creating a collection of rules that define which inbound connections reach which services. This lets you consolidate your routing rules into a single resource.

### is kubernetes an api gateway
Note: think of this question as: "Is Kubernetes Ingress an API Gateway?"
[Can you expose your services with an API gateway in Kubernetes? - learnk8s.io](https://learnk8s.io/kubernetes-ingress-api-gateway#:~:text=Gloo%20is%20a%20Kubernetes%20Ingress,service%2Dmesh%20integration%20and%20security):
> Gloo is a Kubernetes Ingress that is also an API gateway. It is capable of providing rate limiting, circuit breaking, retries, caching, external authentication and authorisation, transformation, service-mesh integration and security.

### ingress vs proxy
- See [[ingress]] for more resources.

[nginx - What is the difference between an Ingress and a reverse proxy? - Stack Overflow](https://stackoverflow.com/a/59710277/3389881):
> You are right in your understanding.Ingress has two parts a controller which implements kubernetes ingress API interface for automated and fast way to configure a reverse proxy such as nginx or envoy.
> The other part is the reverse proxy itself such as nginx, envoy.
> So when you deploy a ingress setup in kubernetes it will deploy a ingress controller and a reverse proxy in your kubernetes cluster.

### ingress object vs controller
[Kubernetes Ingress Controller Overview & Comparison | The Startup](https://medium.com/swlh/kubernetes-ingress-controller-overview-81abbaca19ec#:~:text=Strictly%20speaking%2C%20an%20Ingress%20is,responsible%20for%20fulfilling%20those%20requests):
> Strictly speaking, an Ingress is an API object that defines the traffic routing rules (e.g. load balancing, SSL termination, path-based routing, protocol), whereas the Ingress Controller is the component responsible for fulfilling those requests.Jul 7, 2020

### what is an envoy
> en·voy - noun - 1. a messenger or representative, especially one on a diplomatic mission. "the UN special envoy to Yugoslavia"

### what is envoy
For more resources:
- [[envoy]]
- [[envoy-gateway]]

[What is Envoy — envoy 1.23.0-dev-44b03e documentation](https://www.envoyproxy.io/docs/envoy/latest/intro/what_is_envoy#:~:text=Envoy%20is%20an%20L7%20proxy,the%20source%20of%20the%20problem):
> Envoy is an L7 proxy and communication bus designed for large modern service oriented architectures. The project was born out of the belief that: The network should be transparent to applications. When network and application problems do occur it should be easy to determine the source of the problem.

### what is Kubernetes Gateway API
- [[gw-api-desc#Question: Why is it named "gateway api" and not "api gateway".]]
- [[serving#Knative serving runtime post Kubernetes Gateway API]]

- Some resources:
  - [[gateway-api#Read]]
  - [[gateway-api#Videos]]


[//begin]: # "Autogenerated link references for markdown compatibility"
[ingress]: ingress.md "Kubernetes Ingress"
[envoy]: envoy.md "envoy"
[kubernetes-networking]: kubernetes-networking.md "kubernetes networking"
[envoy-gateway]: ../kubernetes/envoy-gateway.md "envoy gateway"
[gw-api-desc#Question: Why is it named "gateway api" and not "api gateway".]: ../scrapbook/2022/gw-api-desc.md "Gateway API description"
[serving#Knative serving runtime post Kubernetes Gateway API]: ../knative/serving.md "serving"
[gateway-api#Read]: ../kubernetes/gateway-api.md "Kubernetes Gateway API"
[gateway-api#Videos]: ../kubernetes/gateway-api.md "Kubernetes Gateway API"
[//end]: # "Autogenerated link references"