
function post_install(){
    local pluginname=vim-airline
    local giturl=https://github.com/bling/vim-airline.git

    info "Installing or updating the $pluginname git repository..."
    mkdir -p "${PEARL_PKGVARDIR}/plugins/pack/pearl/start"
    install_or_update_git_repo $giturl "${PEARL_PKGVARDIR}/plugins/pack/pearl/start/$pluginname" master

    info "airline package requires fonts to be installed into the system."
    info "Use the fonts Pearl package:"
    info "> pearl install fonts"
}

function post_update(){
    post_install
}

function pre_remove(){
    rm -rf "${PEARL_PKGVARDIR}/plugins"
}

# vim: ft=sh
