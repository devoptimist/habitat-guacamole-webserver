pkg_name=guacamole-webserver
pkg_origin=devoptimist
pkg_version=1.17.1
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")
pkg_deps=(core/nginx core/openssl)
pkg_svc_run="nginx"
pkg_svc_user="root"

pkg_exports=(
  [webproxy-http-port]=http_port
  [webproxy-https-port]=https_port
)

pkg_binds=(
  [guacamole]="tomcat-port tomcat-address"
)

pkg_exposes=(webproxy-http-port webproxy-https-port)

do_build() {
  return 0
}

do_install() {
  return 0
}
