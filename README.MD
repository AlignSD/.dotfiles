# My Dotfiles

This repository hosts my dotfiles for both my development environment as well as my arch linux/hyprland environment.

# Stow Instructions

1. Create a base directory (.dotfiles) in our $HOME directory
2. Create a foler for the applications dotfiles we want to stow
3. `cd` into .dotfiles folder
4. Stow files and create syslinks using `stow -t <location/of/app/directory appname`

# Installation References

We're using GNU Stow to manage our dotfiles. This application creates syslinks to our dotfiles allowing us to store all of our dotfiles in a .dotfiles directory

https://www.youtube.com/watch?v=FHuwzbpTTo0 Video for Reference

# Tips & Tricks

We can create a new branch to test new app configurations freely allowing us to either merge at a later time
or revert back to our main branch. This gives us the ability to easily try out new configurations and tools without
having to worry about going off the rails.
