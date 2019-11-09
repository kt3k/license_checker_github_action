FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install curl
RUN curl -fsSL https://deno.land/x/install/install.sh | sh
FROM gcr.io/distroless/cc
COPY --from=0 /root/.deno/bin/deno /
ENTRYPOINT ["/deno", "https://deno.land/std/examples/welcome.ts"]
