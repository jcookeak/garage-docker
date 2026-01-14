FROM dxflrs/garage:v2.1.0 AS source

FROM alpine:latest

# Install bash to supplement the default sh
RUN apk add --no-cache bash

# Copy the binary from the source image
COPY --from=source /garage /garage

# Restore environment variables
ENV RUST_BACKTRACE=1
ENV RUST_LOG=garage=info

CMD [ "/garage", "server"]