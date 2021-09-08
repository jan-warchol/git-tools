# use git's built-in autocompletion for new commands wherever it makes sense

_git_pretty_log() {
    _git_log "$@"
}

_git_watch_history() {
    _git_log "$@"
}

_git_divergence() {
    _git_log "$@"
}

_git_smart_commit() {
    _git_commit "$@"
}
