# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/opt/zinit/zinit.zsh

# begin zinit

# powerlevel10k theme
zinit ice depth=1; zinit light romkatv/powerlevel10k

# z jump
zinit ice lucid wait='1'
zinit light skywind3000/z.lua

# plugins
zinit light Aloxaf/fzf-tab
zinit light paulirish/git-open
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

# OMZ
zinit snippet OMZ::lib/git.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/clipboard.zsh
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh

zinit snippet OMZP::cp
zinit snippet OMZP::gitignore
zinit snippet OMZP::colored-man-pages
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zinit snippet OMZ::plugins/git/git.plugin.zsh

# zinit ice svn
# zinit snippet OMZ::plugins/extract

zinit for \
  atload"zicompinit; zicdreplay" \
  blockf \
  lucid \
  wait \
  zsh-users/zsh-completions

# end zinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if command -v nvim >/dev/null 2>&1; then
    alias vim=nvim
    alias vi=nvim
fi
export PATH=/Users/bytedance/.local/bin:$PATH
