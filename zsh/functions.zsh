func add_plugin() {
    if [ $# -ne 1 ]; then
        return 1
    fi

    PLUGIN_NAME=$(echo $1 | cut -d / -f 2)
    if [ ! -d "${ZDOTDIR}/plugins/${PLUGIN_NAME}" ]; then
        git clone "https://github.com/$1.git" "${ZDOTDIR}/plugins/${PLUGIN_NAME}"
    fi
    source ${ZDOTDIR}/plugins/${PLUGIN_NAME}/${PLUGIN_NAME}.zsh 2> /dev/null || \
        source ${ZDOTDIR}/plugins/${PLUGIN_NAME}/${PLUGIN_NAME}.plugin.zsh
    FPATH=${ZDOTDIR}/plugins/${PLUGIN_NAME}:$FPATH
}
