# "Papaya" Theme for Vim

<p align="center">
  <b>256-color & 24-bit truecolor support</b>
</p>

Example within a C++ file:
![drag](https://i.imgur.com/9zBGEMZ.png)

Example within an HTML file:
![drag](https://i.imgur.com/uHsoHkn.png)

---

## Installation

**Vim Plug or other plugin managers:**
Open your `vim.rc` files, and within the area of adding plugins, add
`Plug: 'HenryNewcomer/vim-theme-papaya'`.

Now scroll down past the `plug#end()` area and add:
`colorscheme papaya`

If using another plugin manager, such as Vundle, the steps are appropriately
similar for the first part. The second part is the same. Just reference your
plugin manager's manual for further assistance on what syntax to use for
automatically installing plugins.

## Manual Installation
Linux/Mac OS) If on a Unix-based OS, simply clone/save this and place it in your
 `~/.vim/colors/` directory (assuming you haven't changed this path).

Next, open, your `.vimrc` file and add:
`colorscheme papaya`

Note that if you have a plugin manager and are using the manual installation,
you will most likely have to add the three commands *after* your plugin's closing
method. For example, if using Vim Plug, you'd add the lines after `plug#end()`.

---

If your terminal has *truecolor* support, add the following to your *.vimrc*
file. Alternatively, if you're using gvim, you shouldn't have to add this.
This theme supports terminals with 256-color support, but was designed for
*truecolor*.


    if (has("termguicolors"))
      set termguicolors
    endif

---

#### Alternative Color Scheme - Papaya: Blue

While this theme is still a work-in-progress, I've made a version that
is more "blue-oriented," compared to the standard purple Papaya theme.
For anyone wishing to use the blue version, open your vimrc. Instead of
`colorscheme papaya` put:

    colorscheme papaya
    let g:papaya_gui_color='blue'

Most of the colors will be shared bewteen the different Papaya themes,
hence why I'm not making the blue one it's own separate theme. Also note
that this blue version is only for terminals that support truecolor. There
aren't enough color variations to properly do the theme justice on 256-color
terminals.


---

Since I plan to continue updating this theme in an effort to help support
additional filetypes, I've kept a copy of the original Papaya theme in
case anyone wants it. To use it, instead of putting `colorscheme papaya`
in your .vimrc file, put `colorscheme papaya_original`

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
