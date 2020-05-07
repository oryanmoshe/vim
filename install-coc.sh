curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv - -C "$(pwd)/"$(basename "$(dirname "${BASH_SOURCE[0]}")")/.vim/pack/packless-plugins/start
