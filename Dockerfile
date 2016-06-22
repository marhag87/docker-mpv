FROM build
MAINTAINER Martin Hagstrom <marhag87@gmail.com>

RUN dnf update -y && dnf install -y autoconf automake libtool freetype-devel fribidi-devel fontconfig-devel yasm-devel mesa-libgbm-devel libass-devel libbluray-devel libdvdread-devel libdvdnav-devel libcdio-paranoia-devel libguess-devel lcms2-devel pulseaudio-libs-devel alsa-lib-devel libdrm-devel libX11-devel libvdpau-devel libcaca-devel mesa-libEGL-devel enca-devel libXScrnSaver-devel libXv-devel libXinerama-devel libXrandr-devel libva-devel libv4l perl-Math-BigInt perl-Math-BigRat youtube-dl luajit-devel openssl-devel && dnf clean all

RUN git clone https://github.com/marhag87/docker-mpv.git

COPY build.sh /

RUN mkdir /output

ENTRYPOINT ["/build.sh"]
