### `libpamac-aur` builds


If you want specific functionality, mind the filenames — they describe that which is included.

* `[±snap]`: Snap compatibility
* `[±flatpak]:` Flatpak compatibility
* `[+]`: Includes
* `[-]`: Excludes

Use the table below not only to understand comprehensively the capabilities provided by each build, but also to ensure the file received is as shown:
| Filename | Snap? | Flatpak? |
|---|---|---|
| `libpamac-aur[-snap][-flatpak]-11.5.0-1-x86_64.pkg.tar.zst`<br>_MD5:_ `2c7a81f25937904bd81bfc9c7157c8d3`<br>_SHA256:_ `6486944fc8c1744f9a62d85c100df4c8f9e6d38077153408c948702047a6e88d` | No      | No |
| `libpamac-aur[+snap][-flatpak]-11.5.0-1-x86_64.pkg.tar.zst`<br>_MD5:_ `5028b9301ca3c4dbf3f313a922e194f1`<br>_SHA256:_ `f528fb46bd30fc56220e3673916706e3f26f13c48fb0d8a987cf122f52548b1f` | _Yes_| No |
| `libpamac-aur[-snap][+flatpak]-11.5.0-1-x86_64.pkg.tar.zst`<br>_MD5:_ `68a63ba007db0568545cc65f6aac76dc`<br>_SHA256:_ `331628e9d9e621aa28f641ede6f4f0abe0a5e22ef0f513c8ed8fa744dd01a220` | No      | _Yes_ |
| `libpamac-aur[+snap][+flatpak]-11.5.0-1-x86_64.pkg.tar.zst`<br>_MD5:_ `897726a3ff678b40367a1e71f24197d5`<br>_SHA256:_ `b6ef8b380ab17cc7b47be98884e83d41b43a12ff598e99efcfe1392d3506dbfd` | _Yes_ | _Yes_ |

***Remember*** to select only **one** in accordance to your anticipated needs. All of these install the same package by name, but they all function differently. What software management methods are available to `pamac` and `pamac-manager` will depend _entirely_ on which build of this you install.

While snap and flatpak support varies,  _every single one_ of these packages will give you _at least_ native repository and AUR support.
