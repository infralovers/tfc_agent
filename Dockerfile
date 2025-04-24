ARG OP_VERSION=2.30.3
ARG VERSION=1.22.0

FROM 1password/op:${OP_VERSION} as op 

FROM hashicorp/tfc-agent:${VERSION}

COPY --from=op /usr/local/bin/op /usr/local/bin/op
