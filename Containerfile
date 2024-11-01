FROM quay.io/rh-aiservices-bu/postgresql-15-pgvector-c9s:latest
WORKDIR /opt/app-root/src

# copy artifacts
COPY --chown=26:0 ./developer-redhat-com/*.dmp ${WORKDIR}/dev-red-rag/
COPY --chown=26:0 ./developer-redhat-com-images/*.dmp ${WORKDIR}/dev-images-red-rag/
COPY --chown=26:0 ./developer-redhat-com-images/*.tar.gz ${WORKDIR}/dev-images-red-rag/
COPY --chown=26:0 ./quarkus-rag/*.dmp ${WORKDIR}/quarkus-rag/
