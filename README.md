# doom-nano-testing

This is my attempt at adapting the gorgeous Nano Emacs by Nicolas Rougier to work with the powerhouse that is Doom Emacs. 

I am a learning coder and did not write most of the code in this repo. What I've done is trimmed down the Nano codebase to just the files I need and wrote some code to get it working and looking the way I like. 

Load this code by adding the cloned repo to the load path and requiring it in your private config. Like so for instance: 

``` emacs-lisp
(add-to-list 'load-path "~/build/nano-doom-testing")
(require 'load-nano)
```

Files I wrote:

  * `load-nano.el` - This file loads Nano and attempts to fix some issues with cursor appearance. This file is something of a testbed for my attempts to understand/fix compatibility issues between doom and nano.
  * `nano-face-override.el` - This file is necessary for forcing faces to /not look so flipping crazy/. Doom's `custom-set-faces!` does not seem to work at all because of the way that Nano redefines faces. There is undoubtedly a better/easier way of accomplishing this which would likely involve lots of work on `nano-faces.el` or replacing the way that file works entirely with doom functionality. As it is now, I've been adding code to this file every time I come across a face that looks out of place. Colors used in this file are all hard-coded and don't follow any sort of best-practices. They are the result of me seeing something insane (Hot pink is the default for `sh-quoted-exec`? I'm not having that.) and having to immediately change it for yak shaving glory. When you use this, you can possibly end up with errors about undefined faces. As I understand it, this is due to lazy loading. Solve it by wrapping the `set-face-attribute` in question with `(after!)`. There are several examples of this in the file.
  
  Files from Nano containing large scale changes by me:
  
    * `nano-faces.el` - I've changed the font from `Roboto Mono` to `Hack Nerd Font`. Find/Replace will let you set whatever your favorite font is. Hack doesn't have 20 weights like `Roboto Mono`, which is not a problem for me but do expect that using a different font than the Nano default will result in a very different look, especially if the chosen font doesn't have as many weights as `Roboto Mono`. 
    * `nano-theme-light.el` - This has been completely changed to suit my aesthetic desire. I expect anyone who clones this repo will want to adapt this to their own preferred color scheme. Using the dark theme from the Nano repo should be easy enough; one could replace the contents of this file with those of the dark scheme, or one could edit `nano-theme.el` to load the dark theme file instead. The possibilities are endless.
    

I've decided to upload this code for a few reasons: 
  1. Doom Emacs needs a `:ui nano` module! I'm willing to contribute to that, once I have more time. 
  2. My code, though likely not optimal, is usable as is (for me at least). I've discussed using it in a few internet communities and have had people ask me about it. Now there's a repo I can direct them to.
  3. I'm learning this stuff in a hobbyist fashion! I want to contribute to the open source community and this is something I can do with the knowledge I have right now. I really hope that someone with more knowledge than I sees this and, whether out of outrage at my bad code, or because they like this idea as much as I do, decides to write some better code that I can learn from and shamelessly use for myself. 

Sources, and inspiration:

[Nano Emacs](https://github.com/rougier/nano-emacs)

[Doom Emacs](https://github.com/hlissner/doom-emacs)

Screenshots:
[](https://github.com/skyler544/doom-nano-testing/blob/main/screenshots/1.png)
[](https://github.com/skyler544/doom-nano-testing/blob/main/screenshots/2.png)
