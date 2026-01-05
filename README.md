# LibCarna-Python-Docker

This repository provides a Docker image called `libcarna-python` that extends the [biocontainers mulled-v2](https://quay.io/biocontainers/mulled-v2-7719c30f6f3e5179d6d50bebb8eed79eb79898da:189ae3b3e1a1f65873dcb1eae58e9809dc233c92-0) base image.

## Features

The Docker image includes:
- Base image: `quay.io/biocontainers/mulled-v2-7719c30f6f3e5179d6d50bebb8eed79eb79898da:189ae3b3e1a1f65873dcb1eae58e9809dc233c92-0`
- Additional packages installed via apt:
  - build-essential
  - cmake
  - git
  - wget
  - curl
- A file added to the filesystem at `/opt/libcarna-python-info.txt`

## Building the Image

To build the Docker image locally:

```bash
docker build -t libcarna-python:latest .
```

## CI/CD

The repository includes a GitHub Actions workflow that automatically builds and tests the Docker image on:
- Push to `main` or `master` branches
- Pull requests to `main` or `master` branches
- Manual workflow dispatch

The CI workflow:
1. Builds the Docker image
2. Tests that the info file exists
3. Verifies that required packages (cmake, git) are installed