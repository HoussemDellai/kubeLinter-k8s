# Install KubeLinter as a CLI tool or run it inside a Docker container.
# src: https://docs.kubelinter.io/#/

# Scan Kubernetes YAML manifest files
kube-linter lint cd k8s-yaml-sample/pod.yaml

# Create a new sample Helm chart:
helm create helm-chart-sample

# Lint the helm chart:
kube-linter lint helm-chart-sample/

# Run KubeLinter in Docker container (sample command):
docker run -v /path/to/files/you/want/to/lint:/dir 
           -v /path/to/config.yaml:/etc/config.yaml 
           stackrox/kube-linter 
           lint /dir 
           --config /etc/config.yaml

# KubeLinter list of checks: 
# https://docs.kubelinter.io/#/generated/checks

# KubeLinter uses a config file to customize the checks:
# https://docs.kubelinter.io/#/configuring-kubelinter