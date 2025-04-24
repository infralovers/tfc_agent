ARG OP_VERSION=2.30.3
ARG VERSION=1.22.0

FROM docker.io/1password/op:${OP_VERSION} AS op 

FROM docker.io/hashicorp/tfc-agent:${VERSION}

COPY --from=op /usr/local/bin/op /usr/local/bin/op
