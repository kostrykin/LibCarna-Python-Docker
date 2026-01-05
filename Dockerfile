FROM quay.io/biocontainers/mulled-v2-7719c30f6f3e5179d6d50bebb8eed79eb79898da:189ae3b3e1a1f65873dcb1eae58e9809dc233c92-0

# Install additional packages via apt
RUN apt-get update && \
    apt-get install -y --no-install-recommends libegl1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Add missing vendor file
WORKDIR /usr/share/glvnd/egl_vendor.d
ADD 10_nvidia.json .
RUN ldconfig
