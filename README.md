# React VIM IDE

This is one of my vim IDE custom setups, in particular this one contains following features:

  - One script installation (at least tested on macos mojave, should work fine in linux)
  - Will start with vim and native directory browser
  - Use tmux to create two panes that contains vim and a terminal
  - Vim setup with:
    - Javascript syntax highlighting and indentation with https://github.com/pangloss/vim-javascript
    - JSX syntax highlighting and indentation with https://github.com/pangloss/vim-javascript
    - Abbreviations expansion with https://github.com/mattn/emmet-vim
    - Async linting with https://github.com/w0rp/ale
    - Some help to implement async eslint with https://github.com/skywind3000/asyncrun.vim
    - Auto closing tags for HTML and JSX with vim-closetag https://github.com/alvan/vim-closetag
    - Auto closing characters like paranthesis and brackets with vim-autoclose https://github.com/Townk/vim-autoclose
    - Modern autocompletion feature with very popular YouCompleteMe https://github.com/Valloric/YouCompleteMe
    - And powerful fuzzy search with ctrlp https://github.com/kien/ctrlp.vim

This is my personal setup to use vim as my IDE for React with following packages:

  - Babel
  - Jest
  - Enzyme
  - Eslint
  - Jsdom
  - and Webpack

Check file `package.json`, `.babelrc` and `webpack.config.js` to better understand packages and their versions

This vim setup has following features:

  - Autoinstall script: simply execute `./start-ide` script and will get the vim IDE up & running installing any needed package (so far tested on macos mojave)

## With Directory Browser

  - To open a file simply navigate through vim directory browser
  - If you want to keep directory browser open, I use commands like `:sp` (to split horizontally) and `:vs` to split vertically
  - If directory browser is open in the left most split, you can access it from any other split by pressing `ctrl + w + t`
  - Selected files in directory browser will open in previously selected window
  - To move between vim and the terminal in the bottom press `ctrl + b + DOWN` to go to the terminal, and `ctrl + b + UP` to move to vim
  - If you want to exit this "IDE" press `ctrl + b + q`

## Without Directory Browser

  - I use splits with commands `:sp` (for horizontal split) and `:vs` (for vertical split), once the split is created I use `ctrl + p` to quickly search a file
  - If you want to avoid the directory browser, you can open splits and use `ctrl + p` and start writing the filename to open it
  - To remove the directory browser on startup, edit the `.vimrc` and locate the statement `augroup DirectoryBrowserOpenIfNoArgs` and remove that block

## General Features

  - Auto close html and jsx tags, so you type `<div>` and it will complete to `<div></div>` and puts cursor in center
  - Auto close characters, for instance you type a paranthesis, a bracket or a quote and vim automatically adds the closing pair, and puts the cursor in center
  - Autocomplete works automatically
  - Eslint will fix indentation erros automatically

You can check the list of vim plugins to tweak them on your own way or learn how to use them properly.

## Webpack & Yarn Scripts

  - You can use the command `yarn build` to create the `dist` directory with the webpack bundle file
  - You can also use the command `yarn dev` to create a development web server with the app running with hot reload

## Inspiration & Acknowledgments

This vim setup was created because I wanted a super fast IDE (like vim), with some modern features like autocompletion, fuzzy search, auto close tags, auto close opening characters, etc.

I took some ideas like async eslint, initial look and feel (with line numbers, cursor line and indentation with spaces instead of tabs) from some blogs on the internet

One of these cool sites: https://drivy.engineering/setting-up-vim-for-react/

I don't remember the others, but I will publish their sites once I do :)

## License

Use it as you prefer, MIT licensed

## Known Issues

Sometimes when you call the `./start-ide` script, the directory browser can be painted ugly

If you like this idea, please share it, fork it and send me some pull requests
