FROM alpine:3.8

ENV KUSTOMIZE_VERSION 3.6.1

RUN wget -c https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz -O - | tar -xz -C /usr/local/bin && \
  chmod +x /usr/local/bin/kustomize

ENTRYPOINT [ "kustomize" ]
