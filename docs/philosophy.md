# Philosophy

The goals of this config are to:

- stay fast without being fragile  
- work the same way on any machine  
- rely on built-in Vim behavior as much as possible  
- keep the surface area small and understandable  
- avoid unnecessary abstraction or indirection  

This is not meant to be a “perfect” or “maximal” Vim setup. It’s intentionally limited.

Most of the decisions here come from unwinding earlier setups that were over-optimized:
- too many custom mappings  
- too many plugins  
- too many environment-specific tweaks  

Those made me faster on my own machine, but less effective everywhere else.

This config leans in the opposite direction:
- minimal remapping  
- minimal plugins (mostly things that extend Vim without changing how it works)  
- readable and editable without needing extra tooling  

If something isn’t clearly pulling its weight, it doesn’t belong here.

A big part of this is reducing cognitive overhead. The goal is not fewer keystrokes—it’s more consistent ones.

For example:
- I don’t optimize for something like `gT` vs `gtgt`. Even if it’s technically more keystrokes, repeating `gt` is more uniform and easier to execute without thinking.
- I use `Ctrl-C` to exit insert mode because it matches how I already stop commands in the terminal.

The advantage is that muscle memory doesn’t have to branch. The same patterns apply everywhere:
- in Vim  
- in the shell  
- across different machines  

That consistency compounds over time. It makes things feel more automatic, and in practice, faster.

The idea is that speed comes from familiarity and repetition, not from stacking custom behavior on top of the tool.

It should be easy to drop into a fresh environment, use stock Vim, and still feel at home.
# References

These are the main references I’ve used to build my Vim setup, roughly in order of influence:

1. `vimtutor`  
2. *Practical Vim* by Drew Neil  
3. *tmux 3: Productive Mouse-Free Development* by Brian P. Hogan  
4. *The Bash Cookbook*  
5. *Version Control with Git*  
6. *Learn Vimscript the Hard Way* by Steve Losh  
7. `:h holy-grail`  
8. tpope’s config and plugins (NYC Vim Meetup talk)

---

# Evolution

## TextMate Era

My first editor was TextMate, which I used a lot in college.

I also knew a little Emacs for projects where we had to `scp` to a server, but TextMate was my main editor.

When I started working at a startup around 2010, I leaned further into TextMate. I even bought a book on it.

Around that time, a lot of people were starting to move to Sublime Text.

---

## MacVim / Pivotal Era

At that startup, most of the engineers used the Pivotal Labs Vim config. They had helped get the company up and running, and the config stuck around as part of the culture.

Eventually they convinced me to switch to Vim—specifically MacVim.

I got really into it. I read through the Pivotal config line by line, explored each plugin, and learned how everything worked.

That’s when things really clicked. I got much faster—it felt like night and day.

From there, I started customizing things and eventually rewrote my config from scratch as my own dotfiles.

---

## Tmux Era

Around that time, our DevOps engineer was using Vim in the terminal, and that caught my attention—especially how he would suspend Vim with `Ctrl-Z` and run commands.

I started doing the same, and not long after we both discovered tmux.

I read the tmux book by Brian P. Hogan, and it was just as impactful as Vim had been. That’s when the full terminal workflow really came together for me.

From there, I got into Bash and read the Bash Cookbook. I built a custom prompt and got comfortable with standard Unix tooling.

Around the same time, I read *Version Control with Git*.

I went pretty deep in this era:
- custom Git aliases (mnemonic-based)
- custom tmux setup
- heavily customized Vim
- Vim mode in Bash
- switched to Dvorak
- remapped Caps Lock to Control
- dual-booted Arch Linux on my Mac

I got very fast—probably as close to “wizard level” as I’ve been.

---

## The Great Simplification

Eventually, all of that became too much.

Arch Linux caused constant issues. Dvorak made me faster on my own machine, but worse everywhere else. The same applied to my shell, Git, and Vim customizations.

So I reset everything and rebuilt my dotfiles from scratch.

This time, I only added things back if they were clearly necessary.

Caps Lock → Control stayed. It’s a big improvement and avoids accidental Caps Lock.

My Git aliases stayed because they were mnemonic (e.g. `g rbih` → `git rebase --interactive HEAD`), so the knowledge still transferred.

For Vim, I kept things simple:
- no custom leader schemes like `,` or space
- no unnecessary remaps
- relied on built-in behavior

Around this time I read *Practical Vim*, which reinforced the idea of learning the tool well instead of layering on shortcuts.

I also spent more time in the Vim docs (`:help`, including `holy-grail`) and focused on becoming a better end user of the tool itself.

---

## The tpope Era

From there, I got really into Tim Pope’s plugins.

I spent a lot of time reading his code and understanding how his plugins worked.

Things like:
- `vim-sensible`
- `vim-vinegar`

had a big influence on how I thought about Vim.

I also went through *Learn Vimscript the Hard Way* and ended up writing my own plugin, which a few people use.

That was more or less the end of my major “learning” phase.

After that, I just applied it for years and consistently outpaced colleagues using editors like Sublime or Atom.

---

## Early Neovim

I picked up Neovim very early—back when it was just starting out. I remember compiling it myself when it first dropped.

That said, I still used Vim 8 as my main editor for a while since it was stable and comparable at the time.

---

## VS Code Era

For about five years, I primarily used VS Code.

The main reason was TypeScript. At the time, getting TypeScript working well in Vim (even with Neovim) was difficult and fragile. It slowed things down and broke often.

VS Code just worked:
- TypeScript support
- Prettier
- minimal setup

The Vim keybindings were also good enough.

Since I was already using tmux, I could keep a terminal-based workflow—opening a terminal in VS Code, attaching to sessions, or dropping into Vim when needed.

It felt close to Vim, with a few differences.

The biggest one for me was:
- VS Code uses **tabs inside splits**
- Vim uses **splits inside tabs**

I strongly prefer Vim’s model because it allows for multiple workspaces more naturally.

I tried going back to Vim a few times, but it always felt like too much effort compared to how easy VS Code was.

Recently, though, things seem to have improved quite a bit.
