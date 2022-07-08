# docker-tika
Tika Docker image with added OCR support for the Dutch language

Starting from version 2.0.0, Tika adds out-of-the-box support for performing automatic OCR on PDF documents. The [official Tika Docker images](https://github.com/apache/tika-docker) provide support for:

- English
- French
- German
- Italian
- Spanish

This image additionally adds support for:

- Dutch

# Adding to Docker compose

``` yaml
tika:
  image: redpencil/tika:2.4.0
```
