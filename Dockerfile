FROM alpine:3.8

ENV KUSTOMIZE_VERSION 3.2.3 

RUN wget -O /usr/local/bin/kustomize https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_kustomize.v${KUSTOMIZE_VERSION}_linux_amd64 && \
  chmod +x /usr/local/bin/kustomize

ENTRYPOINT [ "kustomize" ]
