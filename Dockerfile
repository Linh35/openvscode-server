# created by GrimZZZ-404 & Milo123459
ARG RELEASE_TAG=latest PORT TOKEN
FROM gitpod/openvscode-server:${RELEASE_TAG}
EXPOSE 80
EXPOSE 3000
ENTRYPOINT [ "/bin/sh", "-c", "exec ${OPENVSCODE_SERVER_ROOT}/bin/openvscode-server --port ${PORT} --host 0.0.0.0 --connection-token ${TOKEN}",  "--" ]
