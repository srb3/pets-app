pkg_name=pets-app
pkg_origin=srb3
pkg_version="0.1.0"
pkg_maintainer="Steve Brown"
pkg_license=("Apache-2.0")
pkg_deps=(core/jre8 core/bash)
pkg_build_deps=(core/maven)

do_build() {
  mvn clean package
}

do_install() {
  mv ${PLAN_CONTEXT}/../target/${pkg_name}-${pkg_version}.war ${pkg_prefix}/${pkg_name}-${pkg_version}.war
}
