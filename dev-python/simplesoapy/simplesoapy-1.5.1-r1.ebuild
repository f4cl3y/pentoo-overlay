# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )
inherit distutils-r1

DESCRIPTION="Simple pythonic wrapper for SoapySDR library"
HOMEPAGE="https://github.com/xmikos/simplesoapy"

LICENSE="MIT"
SLOT="0"

if [ "${PV}" = "9999" ]; then
	KEYWORDS=""
	inherit git-r3
	EGIT_REPO_URI="https://github.com/xmikos/simplesoapy.git"
else
	KEYWORDS="~amd64 ~x86"
	SRC_URI="https://github.com/xmikos/simplesoapy/archive/v${PV}.tar.gz -> ${P}.tar.gz"
fi


DEPEND=""
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]
		net-wireless/soapysdr[python]
		net-wireless/soapysdr[${PYTHON_USEDEP}]"
