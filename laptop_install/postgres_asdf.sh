#!/usr/bin/env bash

# This adds dependencies needed to install postgresql and 
# postgis with asdf
asdf install python 3.10 #required for gdal
asdf reshim
brew install gcc readline zlib curl ossp-uuid geos proj gdal libxml2 protobuf-c

asdf plugin-asdd
asdf plugin-add postgis https://github.com/francois/asdf-postgis.git