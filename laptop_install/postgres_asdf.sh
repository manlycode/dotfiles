#!/usr/bin/env bash

brew install gcc readline zlib curl ossp-uuid icu4c pkg-config
export PKG_CONFIG_PATH="/opt/homebrew/bin/pkg-config:$(brew --prefix icu4c)/lib/pkgconfig:$(brew --prefix curl)/lib/pkgconfig:$(brew --prefix zlib)/lib/pkgconfig"
asdf plugin add postgres https://github.com/smashedtoatoms/asdf-postgres.git

# This adds dependencies needed to install postgresql and 
# postgis with asdf
asdf install python 3.10 #required for gdal
asdf reshim
brew install gcc readline zlib curl ossp-uuid geos proj gdal libxml2 protobuf-c

asdf plugin add postgis https://github.com/francois/asdf-postgis.git