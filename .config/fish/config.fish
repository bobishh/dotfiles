# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

function copy_examples
  set mask $argv[1]
  set regex $argv[2]
  for file in $mask
    cp $file (echo $file | sed $regex)
  end
end

set -x PKG_CONFIG_PATH /usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig
set -x GOPATH /Users/bogdan/workspace/gofiles

set -x NVM_DIR ~/.nvm
source ~/.config/fish/nvm-wrapper/nvm.fish
nvm use default

set -x PATH $PATH /Users/bogdan/.rvm/gems/ruby-2.2.1/bin /Users/bogdan/Library/Python/2.7/bin/ /Users/bogdan/.rvm/gems/ruby-2.2.2/bin /Users/bogdan/.rvm/gems/ruby-2.1.0/bin /Users/bogdan/.rvm/gems/ruby-2.1.0@global/bin /Users/bogdan/.rvm/rubies/ruby-2.1.0/bin /Users/bogdan/.rvm/bin /usr/bin /bin /usr/sbin /sbin /usr/local/bin /Users/bogdan/bin /usr/local/sbin /usr/local/go/bin /Users/bogdan/.tmuxifier/bin /Users/bogdan/workspace/lfe/bin/ $GOPATH/bin 

set -x MITSCHEME_LIBRARY_PATH /Applications/MIT_GNU_Scheme.app/Contents/Resources/
set fish_greeting
source /usr/local/lib/python2.7/site-packages/powerline/bindings/fish/powerline-setup.fish
powerline-setup
alias vim="mvim -v"
alias gA="git add -A"
alias ga="git add"
alias gmm="git merge -m"
alias gm="git merge"
alias gfs="git flow feature start"
alias gff="git flow feature finish"
alias ghs="git flow hotfix start"
alias ghf="git flow hotfix finish"
alias gl="git log"
alias gc="git commit"
alias gpo="git push origin"
alias gfp="git flow feature publish" 
alias gco="git checkout"
alias gp="git pull"
alias gs="git status"
alias gst="git stash"
alias dbundle='ruby -I /Users/bogdan/workspace/bundler/lib/  /Users/bogdan/workspace/bundler/bin/bundle'
set -x  RUBY_GC_HEAP_INIT_SLOTS 600000
set -x  RUBY_GC_HEAP_FREE_SLOTS 600000
set -x  RUBY_GC_HEAP_GROWTH_FACTOR 1.25
set -x  RUBY_GC_HEAP_GROWTH_MAX_SLOTS 300000
set -x EDITOR vim

#DOCKER
set -x DOCKER_CERT_PATH /Users/bogdan/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1
set -x DOCKER_HOST tcp://192.168.59.103:2376

rvm use default
alias be='bundle exec'
alias e='emacs'
alias vim='emacs'
alias gb='git branch'
function checkout_feature
    gco feature/$argv
end

function rake_devtest
  set -x RAILS_ENV test; rake $argv; set -x RAILS_ENV development; rake $argv
end

function rubytags
  ctags -R --languages=ruby --exclude=.git --exclude=log . (bundle list --paths)
end

function elixirtags
  ctags -R --languages=elixir --exclude=.git --exclude=log .
end
