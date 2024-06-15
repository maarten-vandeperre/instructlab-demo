FROM registry.redhat.io/rhel9/python-312@sha256:884310589ce80d48960c81ad08b71ccc184babfd02e768e792ab01f649d5b3fa

USER root

RUN dnf install g++ gcc make pip python3 python3-devel -y
RUN pip install --upgrade pip
RUN pip install instructlab --extra-index-url=https://download.pytorch.org/whl/cpu

USER 1001

run mkdir -p instructlab
WORKDIR instructlab

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]