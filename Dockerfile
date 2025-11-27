FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN mamba create --yes -n docker-env --file /tmp/conda-linux-64.lock && \
    mamba clean --all -f -y

# Activate environment by default
ENV PATH="/opt/conda/envs/docker-env/bin:$PATH"
