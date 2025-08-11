# mu-search-tika-backend
This is the Tika backend for [mu-search](https://github.com/mu-semtech/mu-search/).  It is to be used in conjunction with that microservice.  Please see the README of mu-search in order to use this component.

This image is based on Tika and includes the components which
are commonly expected to be available for mu-search.

** Reference
*** OCR support
As of v2 Tika has out-of-the-box support for performing automatic OCR on PDF documents. The [official Tika Docker images](https://github.com/apache/tika-docker) provides support for:
- English
- French
- German
- Italian
- Spanish
- Japanese

This image additionally adds support for:
- Dutch
