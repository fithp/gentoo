# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils kodi-addon

DESCRIPTION="Shadertoy visualizer for Kodi"
HOMEPAGE="https://github.com/notspiff/visualization.shadertoy"
SRC_URI=""

case ${PV} in
9999)
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/notspiff/visualization.shadertoy.git"
	inherit git-r3
	;;
*)
	KEYWORDS="~amd64 ~x86"
	SRC_URI="https://github.com/notspiff/visualization.shadertoy/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/visualization.shadertoy-${PV}"
	;;
esac

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND="
	=dev-libs/libplatform-2*
	media-tv/kodi
	virtual/opengl
	"

RDEPEND="
	${DEPEND}
	"
