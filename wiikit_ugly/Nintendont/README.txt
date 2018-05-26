=====================================================================================
       Nintendont v 2 The Ultimate Gamecube Loader for the Wii - 20th Sep 2013
=====================================================================================


Nintendont


What is Nintendont?

Nintendont is obviously not a modification of the MIOS, like DIOS MIOS (lite), because the vWii does not have a MIOS.
It is neither a emulator, because the vWii is not powerful enough to emulate GameCube games.
Nintendont is more like an interpreter which runs Gamecube games natively.


Features currently supported by Nintendont:

    Works on Wii and vWii on Wii U
    Full speed loading from an USB device, or a SD card
    Loads 1:1 and compressed .ISO disc images (NOT .CISO format from PSP! Only Gamecube compressed ISO format. It's not a compression but a dummy file deletion)
    Loads games as extracted files (FST)
    Memory card emulation (global and per game)
    HID controller support via any USB port (only one USB is supported for HID)
    Custom button layout when using HID controllers
    Multi-players support
    Cheat code support
    WiiRd (only on Wii)
    Changeable configuration of various settings
    Reset/Exit via button combo (R+Z+Start for reset, R+Z+B+ D-Pad Down for Exit to loader, or user-defined button for HID controllers. Buttons correspond to the Gamecube mapped buttons, not your controller's)
    Advanced video mode patching, force progressive and force 16:9 widescreen
    Auto boot from loader
    File caching for faster game loading
    Play Triforce arcade games
    Automatic Disc Swapping
    Play audio via disc audio streaming, since v2.0 (added in v2.145)
    Bluetooth controller support (added in v2.153)
    Bluetooth multiplayer support
    Rumble support with Gamecube controller and HID-USB controllers.
    Internal version updater (accessed from the settings menu)
    Use real memory card (Make a backup of your savegames before using real memory card option!)
    Title.txt database for listing games with correct name in nintendont interface. (not required when using an external loader)
    GBA-link
    Nice GUI, with background picture and new font, instead of "MSDos-like" boot screen. (added in v2.217)
    Official WiiU GameCube Controller Adapter support (using HID).
    UStealth support (officially added in v2.238)
    Play games from Disc on GameCube compatible Wii!

Features Nintendont doesn't support yet:

    BBA/Modem support
    Multiplayer support with USB-HID controllers using multiple ports (multi-tap is possible from a single USB Port)
    Dual ports support DO NOT CONNECT TWO DRIVES AT THE SAME TIME! (even a WiiU Formated drive, or a non powered one as second HDD). It will either not boot, or corrupt your savegame file.

Features Nintendont will never have:

    Game Boy Player

What gamepads are working?

 These official gamecube gamepads are working (on wii only):

    Official Gamecube controller
    Wavebird Gamecube controller. You need to launch Nintendont from HBC with this controller already ON.
    Donkey Kong Bongo
    Dance Mat/Dance Pad. (even unofficial. This one from Gamestop is reported working).


 Only the following bluetooth gamepads are working correctly:

    Wii remote & Nunchuck
    WiiU Pro Controller
    Wii Classic Controller Pro
    Wii Classic Controller, with analog L/R support
    Mayflash GC Controller Adapter for Wii/Wii U [W007]
    Wii U Fight Pad controller [link]

Notes about calibration and button mapping for Bluetooth gamepads

 The following USB-HID gamepads and adapters are known working:

    PS2 Dual shock
    PS3 Dual shock/Sixaxis
    PS4 Controller
    Logitech Rumble Gamepad F510
    Trio Linker v1 (GC, DC, PS)
    Official WiiU GameCube Controller Adapter [WUP-028] - Supports 4 players and rumble on Wii and WiiU. Supports Gamecube controller, Wavebird, Dance mat, bongo, probably all official controllers too.
    Mayflash Wii Classic Controller to USB adapter for PC [PC052] (Multiplayer support!)
    Mayflash Wii Classic Controller to USB Adapter [PC045] (Multiplayer support!)
    Mayflash Wireless Wii U Pro Controller Adapter [W009] (Multiplayer support! L/R analog are not working because WiiU Pro lacks analog shoulder buttons)
    Mayflash 3 in 1 Magic Joy Box adapter [PC035](only GameCube and PS/PS2 ports. The Xbox controller doesn't work).
    Microsoft Sidewinder Force Feedback 2 Joystick
    Hori Real Arcade Pro 3 SA
    CronusMax adapter (for Xbox 360 wired controller)
    CronusMax adapter + Xbox360 PC adapter (for Xbox 360 wireless controller)
    and more...


The following gamepads are NOT WORKING:

    Wii remote alone
    Wii remote+Hori Fighting Stick Wii [picture] (D-pad down stuck always pressed)
    Wii U gamepad
    Xbox, Xbox 360, Xbox One controllers connected directly to the Wii. (Xbox360 can work with an adapter, see above).
    Mayflash GC Controller Adapter for PC [PC051]


You can find all the controller.ini files on this git repository, official nintendont repository or create your own controller.ini file.

Note: HID USB can be connected on the front port on WiiU only if you launch a game located on SD card.
If you launch a game on USB, connect the USB cable on the back of your console.
If you are using both ports on the back for Y-cable to give enough power to your HDD, you can disconnect the additional power port after the HDD started spinning, and connect your controller instead.

Note2: You can use only one HID-USB Compatible controller or adapter at a time. No multiplayer with HID is possible unless you are using a multi-controllers adapter.


Is my USB-HID gamepad compatible?

If you have a specific USB controller you want to play with, you can test if it is compatible with this homebrew:

http://crediar.no-ip.com/HIDTestv4.rar
The readme in this rar-file should explain everything.
rename to boot.dol to launch the homebrew from HBC.

new versions:
HID_Test v6
changelog since r4

Install instructions

1. Create a Nintendont folder in your /apps/ folder (ex. SD:/apps/Nintendont)
2. Download the meta.xml file and place it in the same folder.
3. Download the loader.dol and rename it to boot.dol
4. re/place the boot.dol into Nintendont folder.

5. If you want to use a USB controller, select the correct controller file and rename it to "controller.ini". Place this file on the root of the device where your games are located.
Attention: If you are hiding known file's extensions on Windows, name the file "controller" only, or it will end being named "controller.ini.ini".

Since v2.191, Nintendont detects your controller and automatically selects the correct ini file. You can extract the controllers.zip content to the "controllers" folder located on the root of your device where your games are located.
example : SD:/controllers/XXXX_YYYY.ini or USB:/controllers/XXXX_YYYY.ini (XXXX=VID, YYYY=PID)
If your nintendont version has an update menu, you can even download and install the controllers files directly from nintendont.
The device:/controller.ini method still work, if you use only one controller you can continue to use this file.

6. If you want to use nintendont interface to launch games instead of using an external loader/front end, you can place Title.txt in nintendont folder to get proper game's titles instead of internal one.
If your nintendont version has an update menu, you can even download and install the title.txt files directly from nintendont.


Update instructions

Manual update: Follow step 3 and step 4 again from the install instruction.
Automatic update: Launch Nintendont and go to the settings menu. Select the Update option and it will download and replace your Nintendont version if a new release is available.

Note: Some external loaders can also let you update Nintendont directly from their own interface.


Is there a forwarder for Nintendont?

Wii : Link - made by Badablek.
The forwarder looks for: apps/nintendont/boot.dol and apps/nintendont/Loader.dol

WiiU vWii : Link - made by JoostinOnline


Does it work with USBLoaders?
Yes, Wiiflow, USBLoaderGX, CFG Loader and PostLoader support nintendont launching.


- Put the nintendont's boot.dol in the default nintendont folder.
- Set Gamecube mode to nintendont in your preferred loader's settings
- Don't forget to put controller.ini on the root and the memory card file to /saves/ folder on the device where your games are located.

Default nintendont folder used by USBLoaders:
SD or USB:/apps/nintendont/boot.dol
USBLoaderGX lets you specify a different path in the settings, or even a per game specific nintendont path.


Game folder
The games require to be the same format and path than the one used by DIOS MIOS and DIOS MIOS Lite.
Compatible format : Clean 1:1 ISO, compressed ISO (NOT PSP ciso, only use Gamecube compression tools), Extracted File System (FST Format), GCReEx, DiscEx.
On USB, only the first partition of Port0 is mounted. It can be FAT32 with 32k/cluster or less. 512 or 4k drives are supported.

SD or USB1:/games/whatever you want/game.iso
SD or USB1:/games/whatever you want/disc2.iso

The non-bold part need to be written exactly like you see it above (the filename is not the game's title, but the 4 letters "g+a+m+e")
If a game has two discs, the second ISO needs to be placed in the same folder than the first disc's ISO, and named to "disc2.iso".
Only the bold part "whatever you want" need to change.

For better compatibility with other loaders, you can put Game's Title and GameID in that part, like this :
SD or USB1:/games/Zelda Wind Waker [GZLP01]/game.iso
SD or USB1:/games/Tales of Symphonia [GQSEAF]/game.iso
SD or USB1:/games/Tales of Symphonia [GQSEAF]/disc2.iso

For users who still don't understand that "game" doesn't refer to the game's title but to the single word "game":
/games/Zelda Wind Waker [GZLP01]/Zelda.iso <--- WRONG :hateit:
/games/Zelda Wind Waker [GZLP01]/game.iso <--- Correct
/games/Tales of Symphonia [GQSEAF]/disc2.iso <--- Correct
/games/Tales of Symphonia [GQSEAF]/cache.txt <--- Correct


Attention: The folder's name only accepts ASCII characters. Do not use accentuated letters.
Exemple: Manually rename Pokémon to Pokemon on your computer or using WiiXplorer.


How do I exit nintendont?

Restart: Resets the game and return to game's title screen.
Shutdown: Exits nintendont and returns to the loader.

• If you are using the Gamecube controller (without adapter), there are two available button's combinations:
Restart: R+Z+Start
Shutdown: R+Z+B+Down (D-pad)

• If you are using a HID-USB controller or adapter, you can define the "Power off" (exit to loader) button's combination yourself.
The Power button is defined in the controller.ini or in the correct controllers/PID_VID.ini file used by your gamepad.

• Some games may use an official button's combination too:
Restart : B+A+Start


How do I swap discs with multi-disc games?
The swap request is detected and done automatically by Nintendont.
You need to use the ISO format (FST/Extracted file format doesn't work).

Place the two game iso files in the same folder and name the first ISO "game.iso" and the second one "disc2.iso".
Be sure you are displaying the known file's extension on Windows, if you name it "disc2.iso.iso" it will not work.


Can I use Cheat codes?
Yes, cheat codes are working on the Open source version (Not on the Alpha).
To enable the cheat codes, you need to download kenobiwii.bin file and put it in your sneek folder from the device where your games are located, like this: SD:/sneek/kenobiwii.bin and USB:/sneek/kenobiwii.bin

Generate your cheat code file using your preferred method (USBloader, online, etc.)

If you launch Nintendont from the Homebrew Channel, put the .gct file in /games/GameID/GameID.gct
if you launch from a loader, it will be loaded wherever the loader's default gct location is.

Then, enable Ocarina or Cheat option and launch the game.


Where are stored the savegames?
Nintendont has an option to use either an individual memory card image per game, a global memory card image for multiple games, or a real memory card inserted in Wii's slot A.

Warning:
Enabling Memory Card Emulation with a card of 16 MB size might cause crashes in some games.
It is recommended to use 8 MB (1019 blocks) or lower for better compatibility.


• On wii, if you set the memory card emulation to OFF, it will use the real memory card inserted in slot A.
Attention: Do not save Japanese games on the same memory card than non-Japanese games.


• To generate and enable memory card emulation, set "MC Emulation" to ON in Nintendont options and choose the size of the memory card. The memory card will be created in /saves/<GameID>.raw located on the same partition than your game.

A new unformated memory card file is created when launching the game for the first time, so the game will ask you to format it. The format message is normal and you can accept without fearing of losing your other game's progress as it's using a new card for each games.


• If you set "multi" as memory card settings in Nintendont options, it will create a single memory card called ninmem.raw which lets you save multiple games on the same memory card file. Japanese games will have their own card file named ninmemj.raw to prevent corruption and formating message with non Japanese games save.


The memory card emulation is not 100% stable and your memory card can be corrupted.
If you care about your game progress, always make regular backups of your savegame files or of your real memory card using GCMM!

If you card is corrupted, you can try these links:
http://gbatemp.net/threads/gcn-memcard-recover.349406/
http://gbatemp.net/threads/gamecube-memory-card-corrupt.367902/


How do I extract my Savegame from my memory card to use with Nintendont?
You can use GCMM to extract the content of your real memory card.
You can extract it as full Raw dump, or game by game in .gci format.

• Method1
Rename the full memory card dump create by GCMM as <GameID of the game you want to play>.raw and put it in your /saves/ folder.
If using this raw dump doesn't work, follow method2.

• Method2
For this method, you need an existing memory card image created by Nintendont. Launch the game you want to play at least one time with "Memory Card Emulation" option enabled.
Then use Dolphin emulator's Memory card manager to move the savegame you want from your GCMM raw dump or from a .gci file into the Nintendont memory card.

Can I convert savegames between DIOS MIOS and Nintendont?
nmm to gci : nmm2gci v0.3 by Suloku
gci to nmm : gci2nmm v0.1 by Crediar.


What is this cache.txt file used for?
Note: Cache.txt is not used anymore since v2.226!

Cache.txt file lists few files from the game that nintendont will pre-load in RAM and keep them always in RAM in order to fasten the game loading speed.
It can cache up to 28MB of data, or up to 220 files.
It lists one file per line and can contains either the full path or only the filename.

If you don't provide a cache.txt, Nintendont attempt to build one in RAM automatically based on recurrent files access while playing.

Best performance is achieved by caching regularly accessed small files. Small files require multiple disk seeking in short time and is what slow down the game.
Caching big files is not useful and will waste the available 22MB.
Here is Crediar's example for SSBM.

You can request cache.txt files for your game here, and find already created files here.


I have an error, what does it mean, what should I do?
There are few errors you could encounter.

• IOS58 is not the correct version on Wii!:
It means you are using an outdated IOS58 on your Wii. Update it.
IOS58_installer from Tantric doesn't install the correct and latest version.
To update your IOS58, you need to find the correct file version. You can extract IOS58-64-v6176.wad from a game's disc (wiixplorer), a game's ISO (Wiiscrubber), or download it with modmii or NUSD.
Install IOS58-64-v6176.wad using a wad manager which is NOT patching the IOS. If your HBC is upside down, reinstall the Wad using a different wad manager.

THIS IS NOT FOR vWII on WiiU !!!! NEVER INSTALL IOS58 MANUALLY ON YOUR WIIU!
THIS IS ONLY AN ERROR ON OLD WII !

THE ISO58 ON WIIU IS ALREADY THE CORRECT VERSION...... DON'T TRY TO FIX SOMETHING IF IT'S NOT BROKEN!!!


• You need to disable AHB_PROT:
You didn't correctly install nintendont. read the install section above.
You need to copy the meta.xml in the same folder than nintendont. You also need the Homebrew Channel v1.0.7 or newer. Old version (HBC v1.0.6 and older) will not work.
If you have a meta.xml, make sure that the tag <ahb_access/> is present in your meta.xml.
The file should be created and updated automatically when launching nintendont.

If you are launching nintendont from an external loader (Wiiflow, USBLoaderGX, etc.) and encounter this error, you are not launching the loader correctly. Don't launch it from priiloader auto-boot menu, go to The Homebrew channel and be sure your loader has a correct meta.xml file with the <ahb_access/> tag.


• Nintendont always freezes at "Loading Patched Kernel... -1":
If The Homebrew Channel has a custom theme applied, reload the default bubble theme, or another custom theme, and try again.


• Nintendont always freezes on checking fs:
Make sure your Hard Drive is formatted fat32 and plugged into the correct USB port. The bottom port on the Wii and the top port on the Wii U.


• Error at launch when using caching features with cache.txt:
Your drive is not fast enough. Try to format it with higher cluster size (64k/cluster), or use a faster hardware.
Note: Cache.txt is not used anymore since v2.226, please update your nintendont.


• Nintendont doesn't find my games:
Rename the game filename to "game.iso".
/games/Zelda Wind Waker [GZLP01]/Zelda.iso <--- WRONG
/games/Zelda Wind Waker [GZLP01]/game.iso <--- Correct
/games/Zelda Wind Waker [GZLP01]/game.iso.iso <--- WRONG
be sure to enable "display known file's extension" in Windows settings, it's a common problem with users having bad file name.


• Nintendont doesn't find my controller.ini file, but it's there!:
You probably named the file "controller.ini.ini", because you are hiding known file's extension on Windows.
Rename the file only "controller", or unhide the file extensions to see the real filename and keep only one extension, not two.


• Nintendont before v2.238 doesn't work with UStealth:
To support Stealth drives, nintendont needs to be recompiled using a version of LibFAT with stealth support.
You can also find an automated/untested (use at your own risk) re-build of previous nintendont versions with UStealth support here: http://homebrew.svalas.net/nintendont/


• Nintendont doesn't swap disc when using memory card emulation:
Memory card size of 16MB is preventing the swap disc feature.
Use a 8MB or less memory card size for games requiring a swap without letting you save before the swap point.


• My Bluetooth controller is not synch when launching Nintendont:
First, be sure your controller is linked to your console (use the red button) before launching nintendont.
If it doesn't work ingame, you need to disconnect and reconnect the Classic Controller to your wiimote.
Keep the power button pressed to unsynch a WiiU pro controller.


• Nintendont doesn't find my games when I have two drives connected:
Nintendont mount only one drive at launch and doesn't test another one. If you have a drive connected on Port1 it will be used by default and Nintendont will NOT check the drive connected on Port0 to see which one it should use/check.
If you set your Gamecube game HDD on Port1, you could still encounter issue with memory card and game listing.

The issue comes from the used IOS.
The "Loader mode" is using IOS58, which mounts Port1 in priority, checks the games and memory card presence on it.
Then the "Kernel mode" is launched, which doesn't use IOS58, and is now checking Port0 in priority.
It seems the Loader and the Kernel doesn't mount the same port. The loader will check the memory card existence on Port1 and the Kernel will access it on Port0.

Solution: Disconnect the unused HDD when playing with Nintendont.

Note: since v2.230 the kernel is also using IOS58. Connect your Gamecube game to a higher Port number than WiiU HDD.


• Nintendont crash when I have a WiiU Hard Drive connected at the same time:
Change the port of your drives.
Connect WiiU HDD to port 0 and the hard drive with your gamecube games to a higher USB Port.

You may require to use cIOS d2x v10-alt (beta53) if you want to list Gamecube games from an external loaders. v10-alt is required to access port1 with cIOS.
Alternatively, you can enable IOS58 in your external loader to list Port1 instead of installing cIOS.


• Nintendont freeze at INIT DI when playing Pokémon or another game:
Verify your game's path. Use only simple, non accentuated letters.
Exemple: Rename Pokémon to Pokemon


• The game always ask me to reformat my memory card! I don't want to lose my other game progress, help!:
when not using the "multi" option, nintendont use a single memory card file per game.
A new unformated memory card file is created when launching the game for the first time. The format message is normal and you can accept without fearing of losing your other game's progress as it's using a new card for each games.


• How do I enable GBA-link?
You need to enable the Native Control option located in the settings.
Attention, this option will disable a lot of features, see below.


• My settings are not working when using the "Native Control" setting:
The Native Control setting lets Nintendont use Native Gamepad Controller access instead of emulating it, allowing the use of all existing official controllers, but disables emulated hardware and some features.
See below the list of affected features if you enable Native Control:

Enabled
- GBA-link
- Keyboard
- Mouse
- Steering Wheel
- Wavebird

Disabled
- HID-USB Gamepads
- Bluetooth Gamepads
- Button combo to reset/return to Loader


• My game doesn't work but it's marked as working on the compatibility list:
If you are using the bigger memory card size, try to create and use 8 MB (1019 blocks) or lower for better compatibility.

If your memory card is fine, try to use the same Nintendont version listed in the compatibility list to see if it works or if it's an issue on your side.
If it works, then try different newer versions to find which one broke that game compatibility, then please report it here or edit the list with the "latest working version" and mark the game as not working or having issue.


• My real memory card doesn't work:
It seems your memory card doesn't use the same format than Nintendont.
You can use this method to convert your card (credits to Sonictopfan) :

-Install GCMM on your SD card http://wiibrew.org/wiki/GCMM
-Download Dolphin emulator http://www.dolphin-emulator.com/download.html
-Using GCMM make a "raw" back up of your Memory Card (THIS IS IMPORTANT)
-Format your Memory Card with GCMM (it uses the correct format used by Nintendont apparently)
-Now make another back up with your formatted Memory Card (better rename the first one to find it)
-Open Dolphin then go to "Tools > Memory Card Manager" another box will appear
-Open the old raw backup in one window and the new one in another, make sure to transfer every save you have from your old dump to the new one
-Copy the new raw dump to your SD then install with GCMM


• Is Bongo controller working with Nintendont?:
Yes.
You need to connect the controller to the Gamecube ports, and use either Native Control ON or OFF.



Nintendont wishlist and Suggestions
current wishlist



Where can I find the sources?
https://code.google.com/p/nintendon-t/

Is there a compatibility list?
http://wiki.gbatemp.net/wiki/Nintendont_Compatibility_List

Is there a cache file repository?
https://github.com/thedax/nintendont-gamecaches
http://gbatemp.net/threads/looking-for-some-cache-txt-for-nintendont-ask-here.367712/

Useful links:

Informal nintendont website
http://nintendont.net.
This is NOT the official website. This one is maintained by Kongsnutz and will provide installation step by step, and information on each options available in Nintendont. There's also a FAQ and links to download latest versions.
It's a mirror of this first post, with a better layout and few more information.

Crediar's website
https://twitter.com/crediar
http://www.youtube.com/user/crediar

I want to make a donation to the developers:
Note that it's donation to say thank you, not a payment to request features.

You can  to these developers :

Crediar
Fix94
Howard
JoostinOnline
greyrogue : I couldn't find any donation link.
Cyan: I didn't work on it a lot and don't deserve anything. I'm only maintaining the first post with new features. Just a thank you is enough.