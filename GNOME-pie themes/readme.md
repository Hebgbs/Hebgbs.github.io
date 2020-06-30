# GNOME-Pie themes

These themes are designed for the UI interface element known as GNOME-pie.

Both function as clocks, and are based on Simon Schneegans' Analog Clock design.

### Themes
**`numix_clock`**  
This theme was the imputus of these modified clocks. I like the concept, not so much the execution.

The clock face was entirely remade with Inkscape and the the hands, also in Inkscape were designed to hide the edges closest to centre with the seconds hand. Not the most ornate thing, but considerable design attention was given for readibility.

**`numix_space_clock`**  
Having seen and wanted something similar to Space Clock except... **not bright** I decided to create "Hands" which nested together.

These hands are simply triangles which ar floating in space relative to their hand coordinates. For some this may be easier to tell the time with at-a-glance. Looks really cool at 00:00:00, 03:15:15, 06:30:30, 09:45:45, 12:00:00, 15:15:15, 18:30:30 and 21:45:45.

### Installation (_Failure is guaranteed if skipping this_)
Once cloned, extract from `GNOME-pie themes.tar.gz` the `gnome-pie` directory inside your `$HOME/.config` where the _existing_ `gnome-pie` directory is, to add these themes into `$HOME/.config/gnome-pie/themes`.

### Other recommendations
These themes, collectively can use less space. As there are only two so far, these commands are provided — once they are where they are suppose to be — to remove duplicates and symbolically link files as necessary::
```
rm -rf $HOME/.config/gnome-pie/themes/*/glass.svg
rm -rf $HOME/.config/gnome-pie/themes/*/ico*.svg
rm -rf $HOME/.config/gnome-pie/themes/numix_space_clock/ring.svg
ln -s $HOME/.config/gnome-pie/themes/numix_clock/ring.svg $HOME/.config/gnome-pie/themes/numix_space_clock/
ln -s /usr/share/gnome-pie/themes/simple_clock/glass.svg $HOME/.config/gnome-pie/themes/numix_clock/
ln -s /usr/share/gnome-pie/themes/numix/ico*.svg $HOME/.config/gnome-pie/themes/numix_clock/
ln -s /usr/share/gnome-pie/themes/simple_clock/glass.svg $HOME/.config/gnome-pie/themes/numix_space_clock/
ln -s /usr/share/gnome-pie/themes/numix/ico*.svg $HOME/.config/gnome-pie/themes/numix_space_clock/
```

Additionally, you can perform the following to create your own personalized mix of these themes:
```
mkdir $HOME/.config/gnome-pie/themes/my_numix_clock
mkdir $HOME/.config/gnome-pie/themes/my_numix_space_clock
ln -s $HOME/.config/gnome-pie/themes/numix_clock/*.svg $HOME/.config/gnome-pie/themes/my_numix_clock\
cp $HOME/.config/gnome-pie/themes/numix_clock/theme.xml $HOME/.config/gnome-pie/themes/my_numix_clock\
ln -s $HOME/.config/gnome-pie/themes/numix_space_clock/*.svg $HOME/.config/gnome-pie/themes/my_numix_space_clock\
cp $HOME/.config/gnome-pie/themes/numix_space_clock/theme.xml $HOME/.config/gnome-pie/themes/my_numix_space_clock\
```

Modify `theme.xml` as necessary, play with the SVG files in Inkscape (or preferred solution) and create your own previews in GIMP (or preferred solution). **Do _not_ forget to save as, else you will overwrite changes for existing clocks!**

### Future
Nebulous as ever. Any ideas I have are subject to the same laws as schrödinger's cat. If you want to add onto this repo with your own themes, feel free to submit a PR but honestly I don't see that happening.
