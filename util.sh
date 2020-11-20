function get_lock_name() {
    lockname="k8s-lock-${GITHUB_RESPOSITORY/\//-}-${INPUT_LOCK_NAME}"
}

# Can exit. Invoke directly, not from a subshell.
function env_check() {
    [[ -n "$INPUT_LOCK_NAME" ]] || {
        echo "Please set an input-lock-name in your 'with:' block"
        exit 1
    }
}