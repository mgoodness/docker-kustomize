FROM alpine:3.8

ENV KUSTOMIZE_VERSION 2.0.1

RUN apk add --no-cache git
RUN wget -O /usr/local/bin/kustomize https://github.com/kubernetes-sigs/kustomize/releases/download/v${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64 && \
  chmod +x /usr/local/bin/kustomize

ENTRYPOINT [ "kustomize" ]
