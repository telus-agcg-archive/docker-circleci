# CircleCI Build Image

An Alpine based Docker image that [meets the requirements](https://circleci.com/docs/2.0/custom-images/#required-tools) of a CircleCI 2.0 primary image. This image includes `docker` and `docker-compose` allowing for builds to take advantage of your existing configuration.

# Usage

List this image as the primary in `.circleci/config.yml` then run the `docker-compose` commands of your choosing.

```yaml
version: 2
jobs:
  build:
    docker:
      - image: technekes/circleci:alpine

    working_directory: /tmp/app

    steps:
      - checkout
      - setup_remote_docker

      - run:
          name: Build the image(s)
          command: |
            docker-compose build

      - run:
          name: Run tests
          command: |
            docker-compose run ci
```
