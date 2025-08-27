# mu-search-tika-backend
This is the Tika backend for [mu-search](https://github.com/mu-semtech/mu-search/).  It is to be used in conjunction with that microservice.  Please see the README of mu-search in order to use this component.

This image is based on Tika and includes the components which
are commonly expected to be available for mu-search.

## Tutorials
### Add Tika to your stack
Add the Tika service to `docker-compose.yml`

``` yaml
services:
  tika:
    image: semtech/mu-search-tika-backend
```

Restart the stack using `docker compose up -d`. The `tika` service will be created.

## How-to guides
### How to customize the Tika config
Generate a default Tika config

``` bash
mu script tika generate-config
```

Mount the generated config folder in `/config`

``` yaml
services:
  tika:
    image: semtech/mu-search-tika-backend
    volumes:
    - ./config/tika:/config
```

(Re)create the service using `docker compose up -d tika`.

### How to increase the Java heap space
To increase the Java heap space, mount a custom config `tika-config.xml` and config the server's `forkedJvmArgs`

``` xml
<properties>
  <server>
    <params>
      <forkedJvmArgs>
        <arg>-Xms4g</arg>
        <arg>-Xmx4g</arg>
       </forkedJvmArgs>
    </params>
  </server>
</properties>
```

### How to disable the OCR parser
To disable the OCR parser, mount a custom config `tika-config.xml` containing the following content

``` xml
<properties>
  <parsers>
    <parser class="org.apache.tika.parser.DefaultParser">
      <parser-exclude class="org.apache.tika.parser.ocr.TesseractOCRParser"/>
    </parser>
  </parsers>
</properties>
```

## Reference
### Tika configuration
Overwrite the default Tika config by mounting a folder containing `tika-config.xml` in `/config` as explained in 'How to customize the Tika config'.

All config options are documented in the [official Tika documentation](https://tika.apache.org/3.2.2/configuring.html).

### OCR support
As of v2 Tika has out-of-the-box support for performing automatic OCR on PDF documents. The [official Tika Docker images](https://github.com/apache/tika-docker) provides support for:
- English
- French
- German
- Italian
- Spanish
- Japanese

This image additionally adds support for:
- Dutch
