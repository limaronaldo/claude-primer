FROM python:3.12-slim AS builder
WORKDIR /build
COPY python/ python/
RUN pip install --no-cache-dir pyinstaller && \
    pyinstaller --onefile --strip --name claude-primer python/claude_primer.py

FROM debian:bookworm-slim
RUN apt-get update && \
    apt-get install -y --no-install-recommends git ca-certificates && \
    rm -rf /var/lib/apt/lists/*
COPY --from=builder /build/dist/claude-primer /usr/local/bin/claude-primer
WORKDIR /project
ENTRYPOINT ["claude-primer"]
CMD ["--help"]
