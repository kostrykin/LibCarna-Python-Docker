FROM quay.io/biocontainers/mulled-v2-7719c30f6f3e5179d6d50bebb8eed79eb79898da:189ae3b3e1a1f65873dcb1eae58e9809dc233c92-0

# Install additional packages via apt
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        git \
        wget \
        curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Add a file to the filesystem
RUN echo "LibCarna-Python Docker Image" > /opt/libcarna-python-info.txt

# Set working directory
WORKDIR /workspace
