FROM rust

RUN apt-get update && \
    apt-get install -y curl plantuml git && \
    cargo install \
        mdbook \
        mdbook-linkcheck \
        mdbook-plantuml \
        mdbook-mermaid

ENTRYPOINT [ "mdbook" ]
CMD [ "build" ]