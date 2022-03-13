# created by GrimZZZ-404 & Milo123459
ARG RELEASE_TAG=latest PORT TOKEN
FROM gitpod/openvscode-server:${RELEASE_TAG}
EXPOSE 80
ENTRYPOINT [ "/bin/sh", "-c", "exec ${OPENVSCODE_SERVER_ROOT}/bin/openvscode-server --port ${PORT} --connection-token ${TOKEN}",  "--" ]
