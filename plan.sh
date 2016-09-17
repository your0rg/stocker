pkg_origin=your0rg
pkg_name=todos
pkg_version=0.1.0
pkg_maintainer="Warehouseman <mhb.warehouseman@gmail.com>"
pkg_license=('MIT')

pkg_filename=your0rg-todos.tar.gz
pkg_source=http://192.168.122.198:8088/todos/${pkg_filename}
pkg_shasum=4226db035fd568a011b4fc35a8c28cd6d3a77b1a1402b7d2adf8a5593dfde74a

pkg_deps=(core/node)
pkg_expose=(3030)


# do_download() {
# 
#   build_line "do_download() > 01 > ===========================================";
#   build_line "do_download() ============================================ < < <";
#   return 0
# }
# 
# do_verify() {
#   build_line "do_verify()   > 02 > ===========================================";
#   build_line "do_verify()   ============================================ < < <";
#   return 0
# }

do_check() {
  build_line "do_check()    > 03 > ===========================================";
  build_line "do_check()    ============================================ < < <";
  return 0
}

do_clean() {
  build_line "do_clean()    > 04 > ===========================================";
  build_line "do_clean()    ============================================ < < <";
  return 0
}

# do_unpack() {
#   build_line "do_unpack()   > 05 > ===========================================";
#   build_line "do_unpack()   ============================================ < < <";
#   return 0
# }

do_prepare() {
  build_line "do_prepare()  > 06 > ===========================================";
  rm -fr ./*;                              # Clear away any pre-existing files
  mv -f ${HAB_CACHE_SRC_PATH}/bundle/* .;  # Move to here from downloaded bundle
  rm -fr ${HAB_CACHE_SRC_PATH}/bundle;     # Trash the bubdle
  build_line "do_prepare()  ============================================ < < <";
  return 0
}

do_build() {
  build_line "do_build()    > 07 > ===========================================";
  pushd programs/server;
  npm install
  popd;
  build_line "do_build()    ============================================ < < <";
  return 0
}

do_install() {
  build_line "do_install()  > 08 > ===========================================";
  cp -fr ./* ${pkg_prefix};
  ls -l ${pkg_prefix};
  build_line "do_install()  ============================================ < < <";
  return 0
}

do_strip() {
  build_line "do_strip()    > 09 > ===========================================";
  build_line "do_strip()    ============================================ < < <";
  return 0
}

# do_end() {
#   build_line "do_end()      > 10 > ===========================================";
#   build_line "do_end()      ============================================ < < <";
#   return 0
# }
