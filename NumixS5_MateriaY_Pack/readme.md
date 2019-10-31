# Numix S5 Materia-Y icon suite for Linux systems

### Installation

> :heavy_dollar_sign: This implies you know enough about dealing with the terminal to know what you're doing in it. If you don't, then there is no shame in using graphical tools for everything shown, and graphical equivalents will be shown alongside terminal commands for general user convenience.

#### Theme hirearchy
Before installation, it is wise to know the hierarchical structure of these themes, since they rely upon one another:
* The 3 "Themes" in `common/` provide icons for everything else in the set.
* The 36 "Base" themes in every other top-level tarball directory inherit from "Base common" (defined via index).
* The 72 app icon "Square" and "Circle" themes _additionally_ rely on app icon "Common" themes (defined via symlinks).

Remember this, and you shouldn't have any trouble installing it. Speaking of...

#### Installing all icon themes

To install this theme, after having downloaded the tarball, use the terminal to `cd` at where it is. If you don't feel experienced enough, you can instead right-click in most file managers to open in its terminal of preference.

Once having done so, _then_ installation for _all_ themes is as simple as these three commands:
```
# Install all (3) common files (mandatory, provided themes will NOT work otherwise!)
tar -xzf ./NumixS5_MateriaY_Pack.tar.gz --wildcards --strip-components=1 -C $HOME/.icons/ 'common/*/'
# Install all (36) base themes
tar -xzf ./NumixS5_MateriaY_Pack.tar.gz --wildcards --strip-components=2 -C $HOME/.icons/ '*/*/NumixS5_MateriaY_*/'
# Install all (72) app icon variants
tar -xzf ./NumixS5_MateriaY_Pack.tar.gz --wildcards --strip-components=2 -C $HOME/.icons/ '*/*/NumixS5_MateriaY-*/'
```
> 🖱️The graphical equivalent of this would be to open the tarball in an archive editor and using that to navigate to the locations shown. Asterisks are wildcards; they're the equivalent of selecting the _same of_ a type based on pattern.

#### Installing themes selectively
If you would rather install themes selectively, there is a _bit_ you need to know before changing these commands. If you continue reading on, you'll soon learn all of the available directories you can call upon in the tarball to extract. Follow the command in the previous subsection to extract all common icons, then make a selection based upon the information below. As an example:
```
tar -xzf NumixS5_MateriaY_Pack.tar.gz --wildcards --strip-components=2 -C $HOME/.icons/ 'light/mate/NumixS5_MateriaY*/'
```

Note the above will install _all_ (3) themes under `dark/mate` in the tarball. If you would rather just the base theme, replace `*/` with `_*/` and if you want just the app icons themes, replace `*/` with `-*/`. For circle app icons only replace `*/` with `-Circle*/` and for square app icons only replace `*/` with `-Square*/`. Square and circle themes _need_ the base theme to exist alongside it. **Everything shown is case-sensitive.**

#### Alternative installation via symlinks
"Common" themes and the 36 base themes this suite relies upon can be symbolically linked if you extracted the tarball's contents _somewhere other than_ `~/.icons\`. If you wish to do that (i.e. you have multiple users, with a common file space) then you can do the following, assuming you `cd` to where the top-level tarball directories are;
```
ln -s $PWD/common/*/ ~/.icons/
ln -s $PWD/*/*/NumixS5_MateriaY_*/ ~/.icons/
```
> 🖱️ Some open-source file managers have the capability to create symbolic links, but these usually begin with `Link to ` which needs to be resolved by renaming them. _After moving these links elsewhere_ press <kbd>F2</kbd> and remove the preceding text (including the first space) to make them work.
> 
> :file_folder: _Some_ file managers also have the capabiility to batch-rename without third party tools, such as Nemo and Caja. If your FM lacks this you may want to install a third-party tool to do this, such as `gprename` for GTK-based environments. Check your distributor's repository for options depending on FM features and DE in use.

For the app icon variants, `ln` cannot be used. But since all 72 variants using `common/NumixS5_Common_Circle` and `common/NumixS5_Common_Square` are made entirely of symbolic links _anyway_ not much space will be taken up with their presence in `~/.icons/` after the following had been performed:
```
cp -R ./*/*/NumixS5_MateriaY-*/ ~/.icons/
```
> 🖱️ Equivalent action would be a simple copy-paste.


### About
What began as a personal project for just myself became this campaign to create something for the Linux community to use... or at least, a small subset of it. Numix-based, but not following the original developer's convention entirely because of how much space it would take otherwise.

#### How it's so _tiny_
Numix _as a set_ traditionlly only has symbolic links for the app icon variants, barrowing _heavily_ from Numix base theme via symbolic linking for its panel indicator icons. Inspired from this, and GTK's capability to have hier themes defined in each theme's index I took both ideas one step further and squished down everything to fit in ~40 megabytes.

This also means that certain common directories are **Mandatory** to have installed, else it simply will not work. From the archive provided, as follows:<br>
`common/NumixS5_MateriaY_Common`: _The_ one set for everything. Have this or die.<br>
`common/NumixS5_MateriaY-Circle_Common`: Circular app icons for circle variants.<br>
`common/NumixS5_MateriaY-Square_Common`: Square app icons for square variants.

After having created these, theme inheritience was adjusted, as well symbolic links recreated to repair the themes this archive provides after the initial change, then for the app icon variants rather than every instance of `48/apps` hosting its own set of icons, that directory simply pulls from its respective common set. This hyper-optimization compared to stock means less space taken on your disk for all of this selection to be made available.

### Available theme styles
Each variant and colour of this set come in six different styles for a variety of themes:

#### Dark (`dark`)
Bright icons and symbols, with dark folder icons. A high-contrast solution for dark themes without looking too garish.

#### Light (`light`)
Dark icons and symbols, with bright folder icons. A high-contrast solution for light themes without looking too garish.

#### Low-contrast styles (`dark-lc`, `light-lc`)
Same as above, _except_ with gray folder icons. Great for people who venture to avoid the high-contrast look.

#### Medium styles (`medium-dark`, `medium-light`)
Gray folder icons with either bright or dark folder icons. A great middle option for people who want to avoid the high-contrast look entirely, but still have symbols which stand out from their GTK theme.

### Colour details
Each style has six colours available for it pulled from the Mint-Y set of themes for Linux Mint. Pretty self-explanatory, but these three colours in particular may warrent some explanation:

#### Blue (`blue`)
While MateriaV2, the _intended_ GTK theme to go with this has a purple option, its purple is more on the blue end of the spectrum. Because of this, Mint-Y Blue was instead chosen to go with it, since it more accurately matches the purple colour used.

#### Maia (`maia`)
Intended to go with MateriaV2 Maia, but it's really Mint-Y Teal. Still goes well with it, however since your optios are either white, black or gray you may not be entirely satisfied with any solution provided.

#### MATE (`mate`)
Intended to go with MateriaV2 MATE, but it's really Mint-Y (green). Practically a perfect match since anything MATE is generally the same green colour.

#### The rest (`aqua`, `orange`, `red`)
Exactly as you'd expect, down to what Mint-Y colours they barrow.

### Variants
Each colour for each style has two additional variants. Since each circle and square theme is modifed to only rely on symbolic links, you need the following from `common` in `~/.icons`:<br>
`common/NumixS5_MateriaY-Circle_Common`<br>
`common/NumixS5_MateriaY-Square_Common`

Without these, the app icons will not apply. This is because every instance of `48/apps` in each circle and square variant looks for the common variant two directories up, which is its intended behaviour.

### Credits
_codic_ from Ubuntu MATE community for MateriaV2, the GTK theme which inspired this.<br>
_Numix Project_ for providing the tool I used to adjust their theme.<br>
_GNU_ for their coreutils which made file links possible.<br>
_Freenode_ for hsoting the `##linux` IRC channel, which was very, very helpful.
