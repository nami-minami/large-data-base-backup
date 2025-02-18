FROM debian:12.9-slim AS builder
RUN apt update; apt install -y git
RUN git clone --depth=1 https://github.com/datacharmer/test_db.git

FROM mysql:9.2.0
COPY --from=builder /test_db /test_db
COPY --chmod=400 ./db-access.cnf .
