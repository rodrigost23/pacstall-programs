pkgname="yq-bin"
gives="yq"
pkgver="4.47.2"
pkgdesc="Portable command-line YAML processor"
maintainer=("Rodrigo Tavares <dev@rodrigotavar.es>")
repology=("project: yq-mikefarah")
arch=("amd64" "arm64" "armel" "i386" "ppc64el" "riscv64" "s390x")
source_amd64=("@${pkgname}~${pkgver}::https://github.com/mikefarah/yq/releases/download/v${pkgver}/yq_linux_amd64.tar.gz")
sha256sums_amd64=("76453f017fedde0d1c0fbfa7565376f6abc183305d379a9be5b7b6efc049ad48")
source_arm64=("@${pkgname}~${pkgver}::https://github.com/mikefarah/yq/releases/download/v${pkgver}/yq_linux_arm64.tar.gz")
sha256sums_arm64=("87838ca29d89bbe153c5117c828673b9233bf2ab1c8010ec12a9ec966e4216b8")
source_armel=("@${pkgname}~${pkgver}::https://github.com/mikefarah/yq/releases/download/v${pkgver}/yq_linux_arm.tar.gz")
sha256sums_armel=("521c903513c93042b05e2d18536520cf263df1045103499da8b46126ebab8d7b")
source_i386=("@${pkgname}~${pkgver}::https://github.com/mikefarah/yq/releases/download/v${pkgver}/yq_linux_386.tar.gz")
sha256sums_i386=("6ce2beace1ee83c56fc8496c89dc4e6d22f70630dd75299caa6702fa6ed6bce6")
source_ppc64el=("@${pkgname}~${pkgver}::https://github.com/mikefarah/yq/releases/download/v${pkgver}/yq_linux_ppc64le.tar.gz")
sha256sums_ppc64el=("2214fb1437757ef50d7a74f73cb3773401efc658a5678fb691e3162f98721e93")
source_riscv64=("@${pkgname}~${pkgver}::https://github.com/mikefarah/yq/releases/download/v${pkgver}/yq_linux_ppc64le.tar.gz")
sha256sums_riscv64=("2214fb1437757ef50d7a74f73cb3773401efc658a5678fb691e3162f98721e93")
source_s390x=("@${pkgname}~${pkgver}::https://github.com/mikefarah/yq/releases/download/v${pkgver}/yq_linux_s390x.tar.gz")
sha256sums_s390x=("19fc7b6497472b9227260f3809abb84d8f46233d95442d3782e87bdfe5af8830")

package() {
  cd "${pkgname}~${pkgver}"
  install -Dm644 ./yq.1 -t "${pkgdir}/usr/share/man/man1"
  install -Dm755 yq_linux* "${pkgdir}/usr/bin/yq"
}
