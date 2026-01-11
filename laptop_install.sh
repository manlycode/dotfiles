#!/usr/bin/env bash

# Setup
# $ git clone manlycode/dotfiles

# Prerequisites: 
# 1. Copy your ssh keys
# 2. Install Xcode

mkdir -p ~/git/collectiveidea # This is where my code goes
mkdir -p ~/git/manlycode 
mkdir -p ~/bin

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# The Basics
brew install wget
brew install git
brew install gh
brew install coreutils
brew install gnupg
brew install asdf
brew install rg
brew install direnv
brew install dark-mode

# Find largest files on disk
brew install ncdu 

brew tap heroku/brew && brew install heroku
brew tap knrz/iterm-workspace && brew install iterm-workspace

brew services start redis

# ZSH w/ zplug
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Xcode
brew install carthage
brew install swiftlint
# Fastlane should use bundler per project
# brew install fastlane


# Wine
brew upgrade
# Sikarugir-App makes wine skins
brew install --cask --no-quarantine Sikarugir-App/sikarugir/sikarugir


brew install ltspice
brew install visual-studio-code
brew install blackhole-2ch
brew install figma
brew install figma
# Per-app function keys
brew install flour 
brew install neovide-app
brew install openemu
brew install slack
brew install visual-studio-code

# https://frankengraphics.itch.io/nexxt
brew install vysor


source $HOME/.dotfiles/laptop_install/rcm.sh
source $HOME/.dotfiles/laptop_install/ruby.sh
source $HOME/.dotfiles/laptop_install/python.sh
source $HOME/.dotfiles/laptop_install/node.sh
source $HOME/.dotfiles/laptop_install/casks.sh
asdf install

source $HOME/.dotfiles/laptop_install/vs_code.sh
source $HOME/.dotfiles/laptop_install/nvim.sh

# Slow to compile, commenting out
# source ~/.dotfiles/laptop_install/qmk_firmware.sh


# Other previously installed homebrew packages
# ==> Formulae
# abook                           devcontainer                    icu4c@76                        libngtcp2                       lz4                             pyqt                            sdl_net
# abseil                          dfu-programmer                  icu4c@77                        libogg                          lzo                             python-packaging                sdl_sound
# ack                             direnv                          icu4c@78                        libomp                          m4                              python-tk@3.11                  shared-mime-info
# act                             dnsmasq                         imagemagick                     libpng                          mame                            python@3.11                     shellcheck
# aom                             dosbox                          imath                           libpq                           maven                           python@3.12                     simavr
# apache-arrow                    dosbox-x                        innoextract                     libpqxx                         mbedtls                         python@3.14                     simdjson
# aribb24                         double-conversion               isl                             libraqm                         mbedtls@3                       qemu                            snappy
# asdf                            dtc                             iterm-workspace                 libraw                          md4c                            qhull                           sourcery
# assimp                          epsilon                         jansson                         librist                         minizip                         qpdf                            spatialindex
# assimp@5                        esbuild                         jasper                          librsvg                         mono                            qt                              speex
# at-spi2-core                    expat                           jpeg-turbo                      librtlsdr                       mozjpeg                         qt3d                            sql-language-server
# atk                             fceux                           jpeg-xl                         librttopo                       mpdecimal                       qt5compat                       sqlite
# autoconf                        fd                              json-c                          libsamplerate                   mpfr                            qtbase                          srt
# autoconf-legacy-otp             ffmpeg                          jsoncpp                         libslirp                        mpg123                          qtcharts                        stylelint
# automake                        fftw                            kdoctor                         libsm                           ncdu                            qtconnectivity                  svt-av1
# avr-binutils                    findutils                       kerl                            libsndfile                      ncurses                         qtdatavis3d                     swift-format
# avr-gcc@9                       flac                            khard                           libsodium                       neovim                          qtdeclarative                   swift-protobuf
# avr-gdb                         flatcam-evo                     kotlin                          libsoxr                         nestopia-ue                     qtgraphs                        swiftformat
# aws-c-auth                      fltk                            kotlin-lsp                      libspatialite                   netcdf                          qtgrpc                          swiftlint
# aws-c-cal                       fluid-synth                     krb5                            libssh                          nettle                          qthttpserver                    tcl-tk
# aws-c-common                    flyctl                          ktlint                          libssh2                         nginx                           qtimageformats                  tcl-tk@8
# aws-c-compression               fontconfig                      lame                            libtasn1                        nightlight                      qtlanguageserver                tctl
# aws-c-event-stream              fop                             lbdb                            libtiff                         ninja                           qtlocation                      telnet
# aws-c-http                      freetds                         ldns                            libtommath                      node                            qtlottie                        terminal-notifier
# aws-c-io                        freetype                        leiningen                       libtool                         npth                            qtmultimedia                    tesseract
# aws-c-mqtt                      freexl                          leptonica                       libudfread                      nspr                            qtnetworkauth                   the_silver_searcher
# aws-c-s3                        frei0r                          libaec                          libultrahdr                     nss                             qtpositioning                   theora
# aws-c-sdkutils                  fribidi                         libarchive                      libunibreak                     numpy                           qtquick3d                       thrift
# aws-checksums                   fs-uae                          libass                          libunistring                    ola                             qtquick3dphysics                tinty
# aws-crt-cpp                     gawk                            libassuan                       libusb                          open-mpi                        qtquickeffectmaker              tree
# aws-sdk-cpp                     gcc                             libb2                           libusb-compat                   openblas                        qtquicktimeline                 tree-sitter
# awscli                          gcc-arm-none-eabi               libbluray                       libuv                           opencore-amr                    qtremoteobjects                 unbound
# bash                            gdal                            libcbor                         libvidstab                      openexr                         qtscxml                         unibilium
# bash-language-server            gdbm                            libdap                          libvmaf                         openjdk                         qtsensors                       universal-ctags
# berkeley-db                     gdk-pixbuf                      libde265                        libvorbis                       openjpeg                        qtserialbus                     unixodbc
# berkeley-db@5                   geos                            libdeflate                      libvpx                          openjph                         qtserialport                    unrtf
# boost                           gerbv                           libdicom                        libx11                          openslide                       qtshadertools                   unzip
# brotli                          gettext                         libelf                          libxau                          openssh                         qtspeech                        uriparser
# buffalo                         gh                              libepoxy                        libxaw                          openssl@1.1                     qtsvg                           utf8proc
# bundletool                      giflib                          libevent                        libxcb                          openssl@3                       qttools                         uthash
# c-ares                          git                             libexif                         libxdmcp                        opus                            qttranslations                  uvwasi
# c-blosc                         glew                            libffi                          libxext                         ossp-uuid                       qtvirtualkeyboard               vde
# ca-certificates                 glib                            libfido2                        libxfixes                       p11-kit                         qtwebchannel                    vips
# cairo                           gmp                             libgcrypt                       libxft                          pango                           qtwebengine                     webp
# capstone                        gnu-tar                         libgeotiff                      libxi                           pcre                            qtwebsockets                    wget
# carthage                        gnupg                           libgit2                         libxinerama                     pcre2                           qtwebview                       wxwidgets
# cc65                            gnutls                          libgpg-error                    libxml2                         perl                            rav1e                           wxwidgets@3.2
# cffi                            gopls                           libheif                         libxmu                          picocom                         rbenv                           x264
# cfitsio                         gpgme                           libice                          libxpm                          pillow                          rcm                             x265
# cgif                            gpgmepp                         libidn2                         libxrender                      pinentry                        rdb                             xcbeautify
# cjson                           gpp                             libimagequant                   libxslt                         pipx                            re2                             xcode-build-server
# clang-format                    graphite2                       libiodbc                        libxt                           pixman                          readline                        xerces-c
# cljfmt                          grpc                            libkml                          libxtst                         pkgconf                         reattach-to-user-namespace      xorgproto
# clojure-lsp-native              gtk+                            libksba                         libyaml                         pmix                            redis                           xpdf
# cmake                           gumbo-parser                    liblerc                         libzip                          poppler                         ren                             xterm
# cmake-language-server           gzip                            liblo                           litehtml                        popt                            ripgrep                         xvid
# cocoapods                       harfbuzz                        liblqr                          little-cms2                     portaudio                       rtmidi                          xz
# coreutils                       hdf5                            libmatio                        llvm                            portmidi                        rtmpdump                        yarn
# cryptography                    heroku                          libmicrohttpd                   lpeg                            proj                            rubberband                      z3
# curl                            hicolor-icon-theme              libmng                          lsusb                           protobuf                        ruby                            zeromq
# dark-mode                       highway                         libmpc                          lua                             protobuf-c                      ruby-build                      zimg
# dashing                         hub                             libmpeg2                        luajit                          psqlodbc                        rust                            zlib
# dav1d                           hunspell                        libnghttp2                      luarocks                        pugixml                         sdl12-compat                    zstd
# dbus                            hwloc                           libnghttp3                      luv                             pycparser                       sdl2
#
