# wordpress-wpcli

![Docker Pulls](https://img.shields.io/docker/pulls/kirelos/wordpress-wpcli.svg)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/kirelos/wordpress-wpcli.svg)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/kirelos/wordpress-wpcli.svg)

**NOTE: The official WordPress Docker images now include wp-cli as a variant**
- [Official WordPress Image](https://hub.docker.com/_/wordpress/)

---

This repository contains the Dockerfile for the autobuild of [wordpress-wpcli](https://hub.docker.com/r/kirelos/wordpress-wpcli/) Docker image.

The Dockerfile uses the official WordPress image and adds [wp-cli](http://wp-cli.org/).

To use, simply run:

    docker run --name <containername> kirelos/wordpress-wpcli

For all other configuration items, please see the official Docker WordPress [ReadMe](https://github.com/docker-library/docs/tree/master/wordpress).

After you've completed the WordPress installation via the browser, you call the standard wp-cli commands via `docker exec`. For example, to install and activate the Quark theme:

    docker exec <containername> wp theme install quark
    docker exec <containername> wp theme activate quark

# Development and Contributions

As the official [WordPress Docker Image](https://hub.docker.com/_/wordpress/) now includes wp-cli, this project should be consided to be legacy only. Please feel free to fork for your own usage if it's still required.
