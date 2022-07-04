# fix net-gw-api e2e tests

- [Add filtering secret informer label for internal-encryption · knative/serving@d4d5681](https://github.com/knative/serving/runs/7152434512?check_suite_focus=true)
  - look at everything that the e2e action runs
    - [serving/kind-e2e.yaml at main · knative/serving](https://github.com/knative/serving/blob/main/.github/workflows/kind-e2e.yaml)
      - [serving/kind-e2e.yaml at 838305e4e47719006b954946acd597cb53e30a58 · knative/serving · GitHub](https://github.com/knative/serving/blob/838305e4e47719006b954946acd597cb53e30a58/.github/workflows/kind-e2e.yaml#L124)
    - tip: comment out all other tests
    - do not comment out these:
```
        - ingress: kourier-tls
          ingress-class: kourier
          enable-tls: 1

        - test-suite: runtime
          test-path: ./test/conformance/runtime/...

        - test-suite: api
          test-path: ./test/conformance/api/...

        - test-suite: e2e
          test-path: ./test/e2e
```
todo:
- find or get dave's profile script for setting up a kind cluster with metalb
- build the code locally, run the tests in the docker container
- add action teamate to the gh action while testing
  - run action against origin repo
- also change the kind cluster setup in the action to do auditing (see kind website docs)
  - in gke: turn on logging and monitoring (go to log viewer)
- create a script that I can curl and install things (ko, kubectl, etc)