# Knative features missing gateway api implementation

[hack/test-env.sh at main](https://github.com/knative-sandbox/net-gateway-api/blob/main/hack/test-env.sh)


## e2e
- tls:
  - [Add support for TLS (conformance test passes) by evankanderson · Pull Request #316 · knative-sandbox/net-gateway-api](https://github.com/knative-sandbox/net-gateway-api/pull/316?w=1)
- retry
- httpoption
- basics/http2
- websocket
- websocket/split
- grpc,grpc/split
- visibility/path\
- visibility
- update
- host-rewrite
  - needed for domain mapping, (`--enable-beta`)
  - [GEP-726: Add Path Redirects and Rewrites - Kubernetes Gateway API](https://gateway-api.sigs.k8s.io/geps/gep-726/)
  - [GEP: Add Path Redirects and Rewrites · Issue #726 · kubernetes-sigs/gateway-api](https://github.com/kubernetes-sigs/gateway-api/issues/726)

## conformance
### Istio
- visibility/split
### Contour
- basics/http2
- websocket
- websocket/split
- grpc
- grpc/split
- host-rewrite
- visibility/path
- visibility