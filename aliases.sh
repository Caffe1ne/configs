#!/bin/bash

# Some yum-aliases... #
alias icanhas="sudo yum install -y"
alias icanfind="yum search"
alias update-all="yum check-update && sudo yum upgrade"

# Various good-to-have stuff #

# Setting up duckduckgo-search... #
duckduckgo-search() {
    QUERY=$*
    SEARCH=${QUERY// /+}
    lynx --accept_all_cookies duckduckgo.com/?q=$SEARCH
}
alias ddg=duckduckgo-search
