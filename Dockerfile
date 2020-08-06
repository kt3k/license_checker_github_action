# Copyright 2019 Yoshiya Hinosawa. All rights reserved. Blue Oak license.
FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install curl git unzip
RUN curl -fsSL https://deno.land/x/install/install.sh | sh
ENTRYPOINT ["/root/.deno/bin/deno", "run", "--unstable", "--allow-read", "https://deno.land/x/license_checker@v3.0.3/main.ts"]
