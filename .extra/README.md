https://medium.com/the-code-review/make-your-terminal-more-colourful-and-productive-with-iterm2-and-zsh-11b91607b98c

# Iterm2

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install iterm2
```


# ZSH
```
brew install zsh
chsh -s /bin/zsh
```

# Fonts
```
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```
then in iterm2 change: iTerm2 -> Preferences -> Profiles -> Text -> Font -> Change Font

# Oh my zsh
Will enable git autocompletion
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

# Hub
`brew install hub`
