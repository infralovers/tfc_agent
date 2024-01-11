ARG OP_VERSION=2.24.0
ARG VERSION=1.14.2
FROM 1password/op:${OP_VERSION} as op 

FROM hashicorp/tfc-agent:${VERSION}

COPY --from=op /usr/local/bin/op /usr/local/bin/op
