FROM denoland/deno:latest AS builder
COPY ./backup.ts .
RUN deno compile \
    --target aarch64-unknown-linux-gnu \
    --output backup \
    backup.ts


FROM gcr.io/distroless/cc:debug
COPY --chmod=700 --from=builder ./backup .
ENTRYPOINT [ "./backup" ]
