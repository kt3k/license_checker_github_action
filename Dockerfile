# Copyright 2019 Yoshiya Hinosawa. All rights reserved. Blue Oak license.
FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install curl
RUN curl -fsSL https://deno.land/x/install/install.sh | sh
FROM gcr.io/distroless/cc
COPY --from=0 /root/.deno/bin/deno /
ENTRYPOINT ["/deno", "--allow-read", "https://deno.land/x/license_checker@v2.0.0/main.ts"]
