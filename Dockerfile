FROM alpine:3.17.2

ENV KUSTOMIZE_VERSION 4.5.2

RUN wget -c https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz -O - | tar -xz -C /usr/local/bin && \
  chmod +x /usr/local/bin/kustomize

ENTRYPOINT [ "kustomize" ]
