# "Papaya" Theme for Vim

<p align="center">
**Supports *256-color* or *truecolor***

Example within a C++ file:
<p align="center">![drag](https://i.imgur.com/9zBGEMZ.png)

Example within an HTML file:
![drag](https://i.imgur.com/uHsoHkn.png)
</p>

---

## Installation

**Vim Plug or other plugin managers:**
Open your `vim.rc` files, and within the area of adding plugins, add
`Plug: 'HenryNewcomer/vim-theme-papaya'`.

Now scroll down past the `plug#end()` area and add:
`
    colorscheme papaya
`

If using another plugin manager, such as Vundle, the steps are appropriately
similar for the first part. The second part is the same. Just reference your
plugin manager's manual for further assistance on what syntax to use for
automatically installing plugins.

## Manual Installation
Linux/Mac OS) If on a Unix-based OS, simply clone/save this and place it in your
 `~/.vim/colors/` directory (assuming you haven't changed this path).

Next, open, your `.vimrc` file and add:
`
    colorscheme papaya
`

Note that if you have a plugin manager and are using the manual installation,
you will most likely have to add the three commands *after* your plugin's closing
method. For example, if using Vim Plug, you'd add the lines after `plug#end()`.

---

If your terminal has *truecolor* support, add the following to your *.vimrc*
file. Alternatively, if you're using gvim, you shouldn't have to add this.
This theme supports terminals with 256-color support, but was designed for
*truecolor*.
`
if (has("termguicolors"))
"  set termguicolors
endif
`

---

Feel free to check out my other themes:
+ https://github.com/HenryNewcomer/vim-theme-mutenight-scene
+ https://github.com/HenryNewcomer/vim-theme-underflow

---

I haven't tested this theme using every language that Vim supports, but most of
the more popular ones should look good. If you notice any oddities or have any
questions or suggestions, feel free to e-mail me at a.cliche.email@gmail.com

Otherwise, you're more than welcome to make a topic in the Issues tab if you
prefer.

*This project is licensed under the MIT License. Feel free to use and distribute
it.*
