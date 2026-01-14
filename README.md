# Garage with Shell Support

This repository builds an extended Docker image for [Garage](https://garagehq.deuxfleurs.fr/) (an open-source distributed object storage service).

The upstream Garage image is built `FROM scratch` for minimal size, which makes debugging or executing shell commands impossible. This image rebases the static binary onto **Alpine Linux**, adding `sh` and `bash` support while maintaining the original entrypoint and configuration.

## Usage

Pull the image from the GitHub Container Registry:

```bash
docker pull ghcr.io/jcookeak/garage:latest