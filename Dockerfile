ARG OP_VERSION=2.29.0
ARG VERSION=1.15.3
FROM 1password/op:${OP_VERSION} as op 

FROM hashicorp/tfc-agent:${VERSION}

COPY --from=op /usr/local/bin/op /usr/local/bin/op
