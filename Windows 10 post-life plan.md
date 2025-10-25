# Windows 10 post-life exodus plan
While Microsoft's WIndows 10 isn't completely dead (yet), after October 14th 2025, free support for Windows users on the general availability channel (GAC, which is basically all of us) will have expired, which _for most people_ will effectively mean Windows 10 is finished. While there are Extended Support Updates (ESU) which _could_ be obtained for free, as-well Enterprise Long-Term Servicing Channel (LTSC), we'll begin tame with things which don't require you take your moral compass south of the border, and if you _really_ need to, _or_ don't mind _sticking it to "The Man"_ after paying thousand of dollars already toward an American multi-national which has proven to not care so dearly about you and your machine, those options will be covered later on in this writ.

This guidance is meant for somebody with zero comprehension and understanding about computers from the start, and will cover the following:
* Hardware attachment
* Specialised boot media creation tools
* Cross-platform software alternatives
  * (As in, working across Windows and Linux)
* Filesystem management
* Partitioning
* Open-source system installation

### Language
There is a reason this writ is _so long_, and it's because nearly every word written here comes from over twenty years of personal computing experience, and has applicability to the final outcome of your actions. Before we proceed, I do have some interesting language choices you may see here, which demands some clarification:
* **Partition** — Industry-standard term for any space on media which can host data; this is in-contrast with trade parlance to declare where divisions exist for a physical space
* **Appliance** — A "Complete" machine unit
* **Instance** — Any resident software, regardless of activity
* **Distribution** / "**Distro**" — Common lay-person parlance for a pre-configured system instance with kernel and other basal software
* **SATA** — Serial attached technology architecture; a successor to all prior Shugart / Western Digital / Molex connections for edge-attached and 40-pin Integrated Device Electronics (IDE) data connections, and AMP Mate-n-Lok / Molex 8981 power connections
* **Baseboard** — One of several ways to describe a hardware platform used for various forms of general computing appliances; also: _Mainboard_, _Motherboard_
* **Device** — Any non-descript / contextually-decribed hardware utility or unit
* **Medium** — A device which can read and write content on various data hosts as a separate component
* **Media** — Any individual device components capable of hosting data
> _You will **never** see me use the word "Drive" to describe a storage media, regardless of medium, and the insistience by Microsoft to use such antiquated terminology. Anything that stores data is a "Drive", anything that requires a media to function in a medium is a "Drive", anything virtualised may be considered a "Drive". All this simplification of language does typically is engender confusion._

## Hardware
Before we interact with the software on our appliances, we need to understand available hardware attachments which enable its use. The following aims to provide this understanding.

### _Special consideration for laptops_
Many laptops produced before 2010 (and perhaps, some time after) have this neat thing called an optical disc device, which uses a laser to read contents on a compatible media. Regardless if it's compact disc, digital video disc, HD-DVD, or Blu-Ray, it requires a medium capable of reading the data available from the media's surface topology, and until USB took over everything, it was (and still could be) the _only_ way to check out different operating system instances, on top of viewing whatever multimedia you fancy.

This can be replaced completely with a physically-compatible storage media carriage; usually, you'll find this under the term `Hard disk (HDD) caddy` or similar. These formed plastic enclosures do nothing more than convert the full-size serial ATA connection usually reserved for larger quarter-panel expansion devices on desktop or on media inside the laptop for general storage, to the "Slimline" SATA connector typically reserved for low-footprint applications such-as the optical disc device inside older laptops, and hold the 2.5" storage media in-question.

Determine how thick the equipped device is once removed from the laptop; which should only use a screw or two to fasten onto the laptop chassis, and observe the accessories attached; fixture hardware can be removed and transferred to a compatible adapter, as well its fascia (the decorative plastic on the medium's front-face), and while most — if not all — "Caddies" would invalidate the eject button, it's a small price to pay for avoiding the peril of wires dangling from your laptop just to expand storage, without completely disassembling it enough to access the present storage media therein.

### _Special consideration for M.2 / NGFF_
Intel's "Next Generation Form Factor", usually referred to as M.2 (for reasons unknown to me) is steadily replacing SATA. You can usually find adapters for these, which may occasionally be equipped with two M.2 slots and some means of switching between them. Of course, you could just use one and leave it at that, but both of them may not be used together, and there are units which only take _one_ M.2 media. With this in mind, find your respective M.2 to SATA adapter for attaching such media into, if no M.2 hardware is available on your appliance's baseboard otherwise.

If you find no SATA storage media some time in the near future, the extra spend on SATA adapters for M.2 will help bring your older machine into the present decade. It will also help with minimising possible damage to the media's edge connector, since functionally is it not-dissimilar to any other M.2 enclosure, while also minimising investment in other such adapters for enabling M.2 media's attachment via USB (since, most present USB connections are sub-class II SATA anyway even _if_ using USB-C, depending on controllers used).

### _USB hardware_
Universal Serial Bus is what most people are going to use for almost everything in this guidance, and typically, everything you would need can be consolidated onto a single USB-attached "Flash media" device. However, multi-device configurations will be explained for providing a safety media in the event _everything_ goes wrong, and you still need Windows.

USB comes in a variety of flavours. While type-C is recent hotness for consumer electronics, there are other connectors prior this you may be familiar with; type-B micro (_hereon: **µB**_) typically found on pre-C / cheaper Android handsets for client connections, and type-A for host connections.
> _For Apple users: Lightning is just another USB standard! One could buy Lightning adapters for USB and convert them into high-speed USB connections. Typically, Lightning cables are **incapable** of operating par with USB Superspeed (3.x), so expect performance similar to five-pin µB connections, unless special Lightning-compatible USB Superspeed adapters exists which uses reserved pins for additional data throughput._

These older client-to-host interactions across A, B, and their _On-the-Go_ variants have all been superseded by type-C, but you can usually find cables to adapt between them. Many adapters with fixed cables may still terminate to USB-A, so they may need a type-C adapter accepting that. On-occasion, you may find SATA adapters using µB, so you can use cables typically reserved by many people to charge their handset and transfer data between devices, for that application as-well; a practice I typically recommend, since _sometimes_ the cable may "Go bad" (short-out, become severed internally, have compromised connectors, &c), but the adapter is capable of performance, so using a compatible replacement cable between client storage adapter and host machine will enable continued use of such equipped with recepticles for USB connections.

Other media devices can be adapted to USB; **you are _not_ limited to flash sticks** if you already have other media formats which could be interfaced with using USB adapters. If it can read and write data, it can do what we need it to here.

## Specialised boot media tools
There are a lot of methods, and a lot of duplicated work which effectively does the same thing; enable booting of devices, so that a pre-installation environment is presented to an end-user. While gone are the days of the 3¼" floppy, USB flash media (the sticks we're most familiar with, which these days are cheap-as-chips) could be used to enable additional super-powers within your reach.

While we'll be _touching_ the topic of disk and partition formatting here, we won't be firmly entrenched in it yet. You only need know enough to proceed with what's next, which is what this will provide.

### [_Ventoy_](https://ventoy.net)
> _Read about it on ventoy.net, but obtain it from GitHub — SourceForge is not shy about presenting shady-looking advertisements._

This utility enables the ability for any domestic USB media to become a virtual optical medium. _But better still_ unlike other solutions, you are not forced to abandon general use of this media; on your PC, you could use `ventoy2disk.exe` to execute the installation software in Windows, then once written to any USB media, any PC or handset with the capability to read Extended File Allocation Table (ExFAT) partitions can be used to write the disc image for any tool or distribution pre-installation environment, then by itself _and optionally with other storage media, on-board or external_ could be used to enable mounting of disc images in its initial boot stage, before proceeding to next with whatever tool / open-source distribution you wish to execute tasks with.
> _Whatever storage media Ventoy uses, must always remain mounted in-use. This will also bar access to other files on the partition mounted with Ventoy. So to minimise such inaccessibility, avoid having to dual-wield devices by accessing images on other partitions unless absolutely necessary! If making space for other partitions in the sole on-board media you intend using third-party tools, to modify geometry of the NTFS partition which has Windows, **do not** use images from the device that contains it! You will be unable to modify geometry otherwise, which will **prohibit** installation of open-source system distributions on that media._

Because you can put _anything_ in the new space provided for Ventoy in the target media after writing Ventoy onto it, this also means your USB-attached storage device isn't _only_ a bootable virtual optical medium, but it remains too a general storage device you can run anything from, and later on, PortableApps will be highlighted as a means of using software which can be executed in Windows, which _also_ includes the following…

### [_Rufus_](https://rufus.ie)
This utility enables the writing of USB flash media with the contents of any disc image given to it, for intent of duplication and use on a separate target media. One of the special party favours it provides is specific for Microsoft Windows; the ability to write custom answer files so specific procedures in the out-of-box experience can be skipped, _if not_ bypassing the entire OOBE so you can get to configuring another instance of Windows suited for your needs that much more quickly.
> _Microsoft intends to mandate use of the Internet for consumer-tier users in the future, having committed changes recently for removal of popular offline OOBE bypass methods to create a local user profile disassociated with a Microsoft account for their latest preview releases, and in-future this will apply to stable channel releases as-well. Bypassing the OOBE may be mandatory to prevent this need of pairing a profile with a Microsoft account, if you wish not to do this — Rufus can produce an answer file to completely skip the OOBE._

The _more interesting_ of party favours it has is the ability to use **Windows To Go** features presently being deprecated by Microsoft in most recent releases, which for Windows 10 and 11 users could enable any external storage media to operate Windows via USB SuperSpeed connections.
> _…And you'll want that USB connection to be quick as you can make it, because running a full-fat instance of Windows 10 or 11 through an adapter, applicable cables or host controller incapable of utilising the features provided by USB 3.0 is going to be a **terrible** experience, compared with using Ventoy in a like configuration to operate any light-weight distribution's live session instance._

In Rufus' initial dialogue, you'll likely be using a USB-attached SSD (either SATA or M.2) to install Windows upon, so changing the installation mode from standard to Windows To Go will make Rufus act as an instantiation utility for the version of Windows you elect to use the disc image of, rather than dumping out the installation files to the target device for use as a means to instantiate Windows on any other machine via USB with Microsoft's official methods.

### [_Hiren's BootCD PE_](https://www.hirensbootcd.org)
This is a "Revived" edition of Hiren's BootCD with the intent of providing a heavily-customised USB-bootable instance using Windows 11 Pre-installation Environment which provides a variety of utilities to keep on-hand as a temporary Windows system instance (by rules of Microsoft, operating with a maximum uptime of three days) for the express purpose of debugging other Windows instances, engaging in moderate off-board data forensics and using _some_ variety of Windows 11 on appliances which are far too old to use a "Proper" Windows instance.

### _Combined powers_
The tricks provided by both Ventoy and Rufus enables for _one_ USB device to be used with multiple intents;
* **Ventoy** — To boot in various tools and utilities via USB;
  * Any open-source appliance instance with the capability to preview operation
  * Enable use of software operating separately from Windows, i.e. Clonezilla
  * Boot into, and install Microsoft Windows using its intstallation media via disc image<sub>† ‡</sub>
* **Rufus** — To enable operations where Ventoy otherwise fails or is incapable of performing:
  * Writing of disc images in other USB-attached devices
  * Turning a high-performance on-board device operating via USB into a portable Windows installation
* **Hiren's BootCD PE** — Operation via USB to provide a Windows instance where none yet is available, to engage in moderate data forensics and engage diagnostics with open-source software, alongside free-trial commercial tools for repairing broken Windows instances.

> * **†** _Only if the partition style in Ventoy matches that of the target device; you may need an additional storage media specifically for older devices **solely** capable of using "MBR"-formatted storage as a boot media._
> * **‡** _In **very** select instances, this may not work **so** well with specific machine baseboards. even if other devices using similar hardware brand and firmware configuration had worked before._

## Cross-platform software
As I've mentioned [PortableApps](https://portableapps.com) several times already, you may be interested in what that can offer you; rather than using the Microsoft Store to manage applications you may want to use across multiple devices with the same storage media, you could use the Portablepps platform _not only_ as a market to see what open-source applications you can use across multiple machines using Windows, you can also see what _cross-platform_ applications you can use _outside_ of Windows, in other open system instances.

Cross-platform in this case, meaning operation on systems using the NT _and_ Linux kernels.
> _Additionally; BSD-based instances, **including** macOS._

The only thing which stops an application from running outside of Windows (or macOS) is a lack of willingness from software developers to enable such, so moving workflows away from proprietary utilities (including Microsoft's UWP apps) and toward cross-platform solutions enables autonomy and independence away from solutions perceived as disfavourable to you.

If you _don't_ have a disc image for Hiren's BootCD PE, PortableApps is yet another avenue outside of using the stand-alone installer, to also Fetch Rufus for writing an instance of Windows onto a USB-attached media. Re-visit the above if that is of interest.

## _The story so far…_
After installing Ventoy on a USB storage media to try out all varieties of Linux (and / or BSD) you may fancy, _and_ to have on-hand tools which can work outside of your on-board media's primary system instance, PortableApps could be put on the same portable media to trial open-source alternatives through use at your leisure. Not everything which is cross-platform, open-source or (ideally) _both_ may be present in PortableApps, but it reliably has the popular tools that may be of interest.

## Managing your files
> _Before backing up your files, I've put information about using Rufus in the **Installation** section. Do that **first** before off-loading anything else to a more-performative external media, because that process wipes all contents on it._
>
> _You can adjust partition geometry for that to make a space for your stuff afterward._

If your filesystem is immaculent, and you know _exactly_ where anything on your machine is, you can skip most of this. For everybody else, let's talk about the most disorganised filing cabinet you've ever seen —

***Yours.*** I want to reserve this section for discussing this, since if you're dual-booting between Windows and Linux, the _last_ thing you need to do is juggle two filesystems at-once. You need lose nothing, _not even Windows_ in order to enjoy an open-source system instance, and I want to help you enjoy an open distribution with _minimal_ sacrifice.

For these examples, we'll use `powershell`. Rather than spending hours, if not _days_ tooling around with Explorer to shuffle things around, or using specialised tools for these tasks, we can just use Powershell's utiilites to make the job _much_ easier; here are some practical examples you can use, _today_ to move all files by-type into the directories Microsoft probably intended for you to use:
```
get-childitem -name -path $env:userprofile -recurse *.pdf | move-item -destination $env:userprofile\Documents
get-childitem -name -path $env:userprofile -recurse *.png | move-item -destination $env:userprofile\Pictures
get-childitem -name -path $env:userprofile -recurse *.flac | move-item -destination $env:userprofile\Music
get-childitem -name -path $env:userprofile -recurse *.mp4 | move-item -destination $env:userprofile\Videos
```
You could, _of course_ get a little more granular with your commands. And while I am versed in the ways of GNU Coreutils _enough_ to make some advanced command-piping magic happen with manipulating targeted files in ways incomprehensible for most mere mortals, I cannot find that same kind of magic without writing commands using `ForEach-Object` which is a different kind of magery you wouldn't need just for basic acts of shuffling things around.

### _Inter-dimensional portals for your files_
Imagine you've made a portal for a folder, that you've placed in a filing cabinet soon-to-be more difficult to reach, in a drawer you soon block with a box. You want this file later, so you made another folder with a portal in it. You want a file from the blocked drawer you put this other mystical folder into, so you may reach inside with your hand and rummage around trying to find a file that otherwise would be out of your reach.

That's the magic of journaling filesystem references. It's a fun trick that both NTFS and Ext4 has, and it's a favour you can give yourself later on, so that your files can be accessible in more places, without having to duplicate them everywhere. You'll probably find yourself using them in select niche scenarios more-often than not, once you understand the rules for most appliance instances:

* Files can reference itself by file ID / index node in the same journal
* Files _and_ directories can reference themselves by location across journals and partitions
* Directories — while possible to reference itself by ID / node — are **strictly prohibited** from doing so via journal to prevent _direct_ self-recursion
* The instance in-use must respect all available partitons

> _For simplicity, I will concentrate on directory symbolic links and junctions. While it doesn't matter for shown examples, linking files requires execution as Administrator in Windows, which isn't necessary outside of Windows._

### _Using libraries in Windows_
Keep the above in the back of your mind, but let's discuss _this_ now since it's likely you're still mono-booting Windows as you read this.

In Windows 11, they got rid of the term "Libraries" but the general idea still applies; there are many directories in `%userprofile%` which enable you to define a separate location for your files in each of their respective _Properties_ context actions.

If you didn't have to move everything off for later reorginisation, then _now_ would be a good time to sort this out. Later on, partitioning will be discussed, but for now simply understand this; better orginisation of your files can allow easier data migration to other partitions and devices for enabling a better degree of separation between your appliance instances and files.

### _No place like `/home`_
One of many hidden beauties about Linux distributons and other filesystem hierarchy-adherent appliance instances is the ability for an end-user to _easily_ define where **their** stuff goes. For a mono-boot configuration, your system could go on one storage media, while software configuration and personal effects go into another. Contrast with Windows, which doesn't even give end-users this option while installing it, _even if_ they have multiple, separate media functioning in-tandem as part of their storage composition.

Absent from Linux distributions is an ability to collate multiple locations into one for ease of viewing. That's what libraries in Windows do, _but_ if you've never tampered with this and only viewed one directory's contents at a time, then you can safely assume creation of symbolic links from the NTFS partition Windows is on, to _here_ — either as a separate partition or within root (`/`) — can be done to make your content from elsewhere more-easily accessible from other instances.

Let's make some assumptions for the following examples I am going to show, since for these commands to be functional, the following must be present, or changed to suit:

* You elected to recycle the contents in the NTFS partition Windows operates from
* This partition with Windows is called "Windows"
* You've neatly organised your belongings in what at Windows, would be `%userprofile%`.
* Your profile in Windows and elsewhere exist in like-named directories:
  * In `/mnt/Windows/Users`, `bob`
  * In `/home` (or output of `whoami`), `bob`

With that known, here are five commands you can run in any terminal emulator with most shells, to make your stuff accessible outside of Windows _without_ having to duplicate files or _completely_ juggle two entirely-different suites of directories:
```
rm -rf $HOME/Documents && ln -s /mnt/Windows/Users/$USER/Documents $HOME
rm -rf $HOME/Downloads && ln -s /mnt/Windows/Users/$USER/Downloads $HOME
rm -rf $HOME/Music && ln -s /mnt/Windows/Users/$USER/Music $HOME
rm -rf $HOME/Pictures && ln -s /mnt/Windows/Users/$USER/Pictures $HOME
rm -rf $HOME/Videos && ln -s /mnt/Windows/Users/$USER/Videos $HOME
```
And, here's all of that in one command. The `xargs` stuff is explained later, just take this as-is for now, and understand we're generating the directory names for it to repeat operations on specific directories using a sub-shell:
```
printf Documents\nDownloads\nMusic\nPictures\nVideos | xargs -I{} bash -c "rm -rf $HOME/{} && ln -s /mnt/Windows/Users/$USER/{} $HOME"
```

### _Bringing it all together_
The end-result of this, if you were to exercise the suggestions above is you either have a common space for your files in the same media which shares a partition containing Microsoft Windows, _or_ content is put on a separate storage media attached on-board, both which would require you to change the library locations Windows recognises as directories in `%userprofile%` by default, _and_ which could be recycled through directory symbolic links once the partition your files are on; located in the filesystem table kept at the root partition for your Linux instance, designates this partition with your stuff to mount at-boot, which is all explained in the next section.

## Partitions
Unlike the construction trade parlance which defines partitions as the divisions between rooms in a structure, partitions _in computer science_ is an allocation of space declared in a media to reserve for a specific purpose.

### _Laying the foundation_
Returning to previous conversation about partition styles for Ventoy, there are two of them in common use today which you will usually interact with:

* **`MBR`** — Otherwise known outside of Windows as (`ms`)`dos`, alongside with File Allocation Table (`FAT16`, `FAT32`), _use_ to be the standard on older CMOS- / BIOS-based systems predating the advent of Trusted Platform Module. Limitations distinct to this configuration as follows:
  * No more than **four** physical partitions are allowed; one of them could be an extended partition, which hold information about virtual partition spaces: these would take up 1 mibibyte each, but aside from that, this was usually the hacky way of breaking through the physical partition limit.
  * No more than two tibibytes was allowed to be allocated for a single partition. Back in the day when binary data units were using identities of their post-1999 decimal counterparts, a terabyte was a dream of many and a glimmer in the eyes of engineers at Hitachi who eventually got to _one_ terabyte in 2007.
  * A limitation of 32-bit FAT is the inability to produce and use files larger than 4 gibibytes, which when the format was initially introduced, IBM were selling media measured by the _megabyte._ This format is typically reserved for the EFI System Partition on GPT-formatted media these days.
* **`GPT`** — As data units changed with the times, so did the methods we used to store information. GPT enabled for use of unlimited partitions and media exceeding 2 tibibytes, and with modern journaling formats enabling files large as you could make them, all prior limitations with the _old way_ of doing things had been exceeded. GPT also has distinct resiliency advantages;
  * File hashing with cyclic redundancy, to detect whether data on a media in any partition which supports this functionality is disintegrating
  * Redundancy; GPT creates multiple copies of files to reference, any time integrity for a location on media is failing.

### _Staging conception_
Once a partition style / "Table" is established, it needs to have assignments for the various rooms data will be in. Several are non-negotiable, depending on the appliance instance in-use:

* **Windows** — _Multiple options where supported_
  * Legacy (DOS) instances: 32-bit File Allocation Table (FAT32)
  * Modern (NT) instances: New Technology Filesystem (NTFS)
* **OS X / macOS** — Apple Filesystem (APFS)
* **Other BSDs** — Unix Filesystem (UFS)
* **Linux** — _Multiple options where supported_
  * Extended journaling filesystem 4 (Ext4)
  * B-Tree filesystem (BTRFS)
  * Zettabyte filesystem (ZFS)

Compatibility is only limited to knowledge and implementation. If you've ever noticed that compared to modern Android handsets, one could attach a media with an NTFS partition and read that without problem, where former models required third-party intervention _or_ was outright unusable, this would be why.

Likewise, support for other formats is limited to whatever somebody made a driver or software package for. Older Apple devices didn't have NTFS support; that was typically handled by Paragon Software's proprietary and commercially-licensed solution. BTRFS in Windows is possible; it's why WinBTRFS exists as a software utility to enable instantation and use. Linux distributions don't _have_ to support NTFS, but it's a common-enough filesystem that ntfsprogs / ntfs-3g is _de facto_ included on all popular solutions.

### _Modeled understanding_
Generally, a partition table for typical consumer appliances _only_ with Windows (_most likely, yours_) includes the following:
* FAT32 EFI system partition (ESP, GPT-exclusive)
  * This is also where Recovery Environment exists!
* Microsoft Reserved (MSR)
  * This is spare space reserved for two-stage updates
* NTFS partitions
  * Your operating system resides at its root (usually, recognised as `C:`)
  * OEM-provided recovery space
  * OEM-provided software utilities

> ### _Buying strategies_
> If you only have a single storage media on-board, then you may want to invest in other devices. Return to USB Hardware for more information, but you can minimise the _total_ investment if you don't plan on keeping the larger-capacity USB-attached or USB-adapted hardware; provided you were careful with its packaging, you could perform three basic operations, picking up from after having put Ventoy on a USB flash media:
> 1. Download [Clonezilla](https://clonezilla.org/downloads/download.php?branch=stable) and save in the ExFAT partition ventoy2disk made (Pick `iso` as file type; disregard site advice)
> 2. Boot into Ventoy and select Clonezilla; follow the prompts _carefully_ to copy the whole empty disk as an image
>   * Limited USB ports? Clonezilla optionally can create a virtual storage space in RAM; a RAM disk, to put itself in so once keyboard preferences show up, you can safely disconnect the boot media used to execute it for connection with another USB-attached media.
> 3. Write the USB media's contents (as-it-is, _empty_ save for what came out-of-the-box) to a separate partition; likely, a space in `/dev/sda`.
>
> Then, when you're finished keeping your stuff on the temporary media, after re-locating your backed-up data to a separate partition, you can swap device selections in Clonezilla to restore the media at its original state, which would overwrite all contents. Pack it up to return at the store, and get your money back. Be sure as you do this, to **take pictures** so everything as it was, returns to the store as it had been.

If you happen to have enough space in the media with Windows already because you _literally_ do nothing else with the computer other than download the occasional E-Mail attachment or copy whatever from social media you fancy, then you could theoretically shrink the partition Windows is on, so you can make another one and transfer your stuff to it.

…_That_ is easier said than done in Windows land, mainly due to Microsoft's Disk Management snap-in console imposing _severe_ restrictions on the size of a partition used to boot Windows, and it doesn't understand the context of what we are doing. So with Ventoy, you could fetch a Linux ISO of preference on the bootable USB flash media, and boot with that to use whatever partition management tools exist there.

…_Or_ for the time being in Windows, you could fetch [Paragon Software's community edition of their partition manager](https://www.paragon-software.com/us/free/pm-express/). as an easy-to understand partition geometry adjustment utility. From there, you can resize the Windows partition to small as you could make it, _while using Windows._ (Just give it a little breathing room.) But you can't create anything Windows doesn't support, so for the open-source instance (likely using the Linux kernel), you'll need to do a little partitioning with your open distribution in live so you can keep your files, while filling the unallocated space with new spaces.

> _A personal preference of mine is to create the partitions I want to use **myself**, so I can have total control over the process. While automations have existed for decades to handle this for novices, automations sometimes make mistakes, and every-so-often a **unique** problem may occur, which demands of you more effort than anticipated._
>
> _Understanding this storage stuff **now** can avoid unexpected — and undue — headaches later._

There are a couple ways to handle this, depending on how much you care about a degree of separation being introduced for your stuff. Let's work off the example previous to develop a _revised_ partition table (as one of many configurations; location doesn't really matter:
* FAT32 EFI system partition (ESP, GPT-exclusive)
  * This is also where Recovery Environment exists!
* Microsoft Reserved (MSR)
  * This is spare space reserved for two-stage updates
* NTFS partitions
  * Windows root space
  * **Optional space** for nothing else but caching your stuff
* **Optional dedicated Linux swap space**
  * If you run out of RAM, this might be your last defense against your session seizing itself locked. Unlike Windows, space with this purpose _isn't_ limited to just being a file.
* Ext4 partitons
  * **Optional Linux home** for software configuration / user-specific preferences and personal effects, separate from root.
  * Mandatory Linux root partition — `/home` and swap space (as file) _could_ be here, as well.
* Other NTFS partitions
  * OEM-provided recovery space
  * OEM-provided software utilities

### _Degrees of separation_
As-shown above, _Somewhere_ in there, if you have the space for it, _yet another_ partition could be made to move your stuff into. If you can't make such adjustment, then your stuff can remain in Windows' NTFS partition, but if you want to maximise degrees of separation between appliance instances and your stuff, you'd have everything you want to manage in a separate media anyway, rather than a separate space in the _same_ media.

Just because content may be accessed separately, doesn't mean where it resides can't act in union; while `/home` and swap (as swapfile) for a Linux instance could be lumped together with its root, you have the opportunity to keep software preferences, extra virtual memory and appliance binaries separate, so if root is rendered dysfunctional unexpectedly, you can re-create the root partition via re-installation without loss of utility configuration.

_Likewise_ if you made your stuff separate, that doesn't mean they can't act like it's part of either appliance instance's personal use spaces. In Windows, you can change the location of select library views in `%userprofile%` so you can navigate to them, without _always_ memorizing the full directory path. You may _also_ use this space for directory symbolic links to locations in that space. (look back at **Inter-dimensional portals for your files** for more information about that.)

_Alternatively_ if you didn't make a separate space for your stuff, recycling content from the NTFS partition for use in your open instance will suffice, once made to mount at-boot and rendered visible as a location defined in its filesystem table; usually, at `/mnt`.

> ### _An aside — Secure Boot_
> Secure Boot is a contentious issue due to how little it provides any immediate benefits for an end-user's personal security. But if you happen to need Secure Boot enabled in Windows, it's annoying to turn it off every time you want to go away from Windows. If not using Fedora, Ubuntu or Linux Mint, or if a distributor doesn't provide its own shim files, you should be able to install `sbctl` or otherwise follow some documentation to figure best how Secure Boot should be configured for your open instance.
>
> For Arch, EndeavourOS and CachyOS, _with Secure Boot disabled, keys reset and its setup mode enabled in the baseboard firmware_, using GRUB2 for bootloader, and with Linux LTS kernel, here's an example that should work for everybody using those Arch-based platforms under those conditions:
>
> ```
> sudo -i
> pacman -S sbctl
> sbctl create-keys
> sbctl enroll-keys -m
> cp /boot/efi/EFI/boot/bootx64.efi /boot/efi/EFI/boot/bootx64.old
> sbctl sign -s /boot/efi/EFI/boot/bootx64.efi
> find /boot/efi/EFI -maxdepth 2 | cut -c 15- | cut -c -11 | xargs -I{b} bash -c 'grub-install --efi-directory=/boot/efi --modules="tpm" --bootloader-id={b}-secure && sbctl sign -s /boot/efi/EFI/{b}-secure/grubx64.efi'
> find /boot -maxdepth 1 -name vmlinuz* | xargs -I{k} sbctl sign -s {k}
> ```
> Let's understand what I just showed:
>
> * Become superuser; input password
> * Install `sbctl`
> * Create user key
> * Enroll key into baseboard firmware, while also enrolling generic Microsoft keys.
> * Copy current `bootx64.efi` to a new file (in this case, `bootx64.old`.) This is just in case there are odd boot issues associated with signing this file.
> * Sign current `bootx64.efi`
> * _Multiple actions:_
>   * Find all files in `/boot/efi/EFI` with search depth of 2, for files named `grubx64.efi`
>   * Cut fifteen characters _before_ to omit installer-created bootloader instance and leading forward slash
>   * Cut eleven characters _after_ to omit the filename and trailing forward slash.
>   * Use `xargs` to create an ad-hoc routine using the `find` output refined with `cut`, to do the following in a `bash` sub-shell:
>     * _For ease of reading, `{b}` is used as substitute._
>     * Use `grub-install` to create a new bootloader instance with ID of `cut`-refined `find` output, suffixed with `-secure`.
>     * Sign the instance of `grubx64.efi` in the newly-made directory suffixed with `-secure`
> * _Multiple actions:_
>   * Find in `/boot`, all files beginning with `vmlinuz`
>   * Use `xargs` to make an ad-hoc routine for signing all found instances (which if LTS were included, should be two; else, one.)
>     * _For ease of reading, `{k}` is used as substitute._
>
> Now with that done: one may reboot, re-enable Secure Boot and see if it works; booting into the newly-made instance with `-secure` suffixed onto it. For most people, the above example _under the specific circumstances previously defined_ should work.

## _The story so close…_
Comprehensive understanding about storage media, attachments and partition configurations is pretty boring stuff for lots of people, no matter how well it may be presented. All of these ideas and theories don't mean anything and are waste if not remotely considered for utilisation, so let's put it to work and finally get to (re-)building the digital temple which permits your business and leisure with your computation appliance.

### _A minty-fresh proposition_
There are many, _many_ choices for an open-source system distribution. To keep things simple, from hereon we'll narrow our choice down to [Linux Mint](https://linuxmint.com). Desktop notwithstanding, but consider all three options and select the one you like most. For many, this selection holds no bearing on overall application management and use.

> ### _Thirty-two bits of power_
> Unfortunately in present day, most Linux distributions have completely abandoned 32-bit appliances. _Even Mint._ (And they could totally have a 32-bit Debian Edition image, too!)
> 
> For people who are using _much_ older machines, there is a distribution still supporting them with similar ease-of-use to Linux Mint XFCE, known as **MX Linux**. History notwithstanding, even _those_ machines can achieve newfound purpose for guest kiosks and end-user terminals alike, though some applications will certainly differ with the continued deprecation of 32-bit hardware. It's a last-gasp for these machines before _everybody_ cares about them no longer.

If you _need_ a comparison for Linux Mint selections;

* Cinnamon is based on the newer GNOME Toolkit (GTK4), which comes with modern interface rendering utilities and has a distinctly different feeling compared to either Xfce or MATE. This is _also_ the only available desktop for Linux Mint Debian Edition (LMDE).
* MATE is what the Linux Mint team had _originally_ used as a substitute for GNOME 2.18, after GNOME Foundation deprecated it in 2013 and forced Canonical to adopt something different for Ubuntu; This was prior to the release of Ubuntu MATE. MATE was originally a direct fork of GNOME 2.18 _with modern fixes_ in the form of resolution to problems GNOME team had found no solution prior, and promptly abandoned for their re-imagining of the convergence desktop via GNOME Shell — what Cinnamon is loosely based upon.
* Xfce is a light-weight "second-kin" of sorts to GNOME in the days of their second major branch prior to MATE; always in its shadow, never overshadowing, alongside _even lighter-weight and more simple_ solutions, like the Lightweight X11 Desktop Environment (LXDE). Formerly the XForms Common Environment, their name functions as a word more than an acronym after their move to GTK2 — a similar fate as GNU Network Object Model Environment (GNOME) after they moved on from the network object model, and its current position is for people who want to forsake the past of GNOME 2.18 which MATE embraces, while still using what made traditional Linux with GNOME 2 _so good_ for so many way-back-when; ideal for older appliances less-capable in present day.

Whichever one you end up picking, you can obtain it from [Linux Mint](https://linuxmint.com)'s landing page and put it to the USB flash media you wrote [Ventoy](https://ventoy.net) onto.

## Installation
Continuing from the example of using Linux Mint, _based on Ububtu_ — also meaning in this case, it _installs_ the same way too — we can use a combination of GParted and Ubiquity to establish partitions, their identities (if desired) and install the system.

Since we have all of the theory and information necessary to proceed at this point, let's dig into things which can be done.

### _Erecting the crashpad_
_Before_ doing much else, if there is concern about the viability of these future procedures and you feel the need to have a crashpad, _provided_ you kept a USB-attached SSD on-hand, you'll want to do this first;

Upon opening Rufus, you may feel overwhelmed seeing this tall window with a lot of options opened. For most people, the breakdown for procedure would be this:

* Download an image for Microsoft Windows from their website (or elsewhere) if not already obtained
* Expand "advanced drive properties"" to enable showing of "USB Hard Drives" (which should be a solid-state media for best results)
* Select the USB-attached device previously-hidden
* Select the obtained Windows installation media image
* Set "Image option" to _Windows To Go_
* _Optionally_ provide a name for the volume label which will represent the partition this new instance of Windows will be in
* _Optionally_ remove installation limitations, privacy questions (default disable all OOBE options) and create a local account to bypass OOBE altogether  
> _Microsoft **insists** bypassing the out-of-box experience introduces security issues and failure to provide credentials for binding a local user profile with a Microsoft account produces an incomplete Microsoft system experience._  
> <sub>_Did this matter in 2015?_</sub>

Once this is all done, you may boot into the newly-minted Windows To Go instance to see if it works. If it does, congratulations; your crashpad to fall back upon when _all else_ goes completely wrong is ready.

### _Building the construct_
Everything from before, has led up to this point. If you didn't make space for a Linux instance in Windows, you could open `gparted` and do that, prior to installing the system, and electing not to format _any_ freshly-created partitions in the process of assigning them yourself during installation.

> ### _Fast problems_
> If you encounter issues with resizing the NTFS partition hosting Windows while not using it, make _certain_ "Fast Startup" is disabled in your baseboard firmware — it's the thing that keeps your NTFS partition on-hold between Windows sessions likely causing your problems, and _if_ you desire to continue outside of Windows, reboot into it and do this **as administrator** in  `cmd`:
> ```
> chkdsk -f %systemdrive%
> ```
> Restart, and permit disk checking to continue. Once this is complete, hold right-shift _while_ rebooting to access the Recovery Environment menu; select **Use a device** and pick the USB media with Ventoy installed. From there, pick the disc image with your open distribution's pre-installation environment "Live session", and try adjusting geometry for the NTFS partition with Windows in `gparted` yet again.

You need enough space to comfortably append files in _all_ partitions for best performance, so consider your options; if we split a 256GiB media down the middle, that's 128GiB for each, and not any space for effects; you'll end up using your NTFS partition for extra space, _but_ if you're doing that with intent to split in half root (`/`) and `/home`, consider instead letting Windows have 192 GiB (_minus_ other existing partitions) and making symbolic links from there, to `/home` within root when finished.

> ### _Names and labels_
> If you care about how these partitions are identified, you will also want to _name_ and _label_ these partitions; of the name, this is just extra detail in reserved space for you — the end-user — to figure out why the partition exists. This makes the label seem irrelevant, _except_ it's how the _operational instance_ will identify these partitions.
>
> Why labels _may_ matter will be explained in the next section.

Here's the setup I would have, for a 1 TiB (1,000 GiB) media with some realistic figures:

* FAT32 (vfat ESP / "EFI System Partition")
  * 250 MiB (Microsoft default)
* Microsoft reserve (MSR)
  * 16 MiB (Microsoft default)
* NTFS (Windows root)
  * 129782 MiB (~"126.74" GiB)
* NTFS (Personal effects)
  * 764154 MiB (746GiB)
* Swap space (Virtual RAM)
  * 8192 GiB (8 GiB)
* Ext4 (/home)
  * 56070 MiB (~"54.76" GiB)
* Ext4 (/)
  * 65536 MiB (64 GiB)

> _Actual values may vary — on occasion, not all available space on a media may be used, so don't sweat an extra kibibyte here-or-there being free. **In fact** take advantage of that in their use as separators; if you can't get rid of it, utilise it!_

The thing you _might_ notice if you math it out by the mibibyte, is that ESP + MSR + Windows root, _and_ ESP + Swap + /home + / (root) _both_ total 127 GiB. This is for a couple of reasons:

* Accounting for imperfections and variance in media capacity, for a future consideration of separating your content from bootable appliance instances.
* Enabling easier backing up of appliance instances per-partition, _both_ for the bootloader, and what instances the bootloader respects at-present due to its smaller size and omission of your content.

> ### _Tight squeezes_
> You can definitely go for a _smaller_ Linux root and home; I've used instances which without the additional spaces provided by Windows' NTFS space, would total 64 gibibytes of mounted partitions — _With swap._ But 32 GiB root and 24 GiB `/home` is a bit too cozy for many, _especially_ when packaging formats like Flatpak and Snap become involved, as they provide not just their applications, but also their own separately-managed libraries which operate pseudo-independently from any traditional instance's software management.
>
> For a setup like _that_, being peculiar about not just _how software installs_, but also _what software is_ becomes mandatory, and an undue burden you needn't endure.

Once you understand how you want to assign partitions, proceed with installation. Re-visit the above text for what things should be. Only these two assignments matter:

* "EFI System Partition"
* `/`

If you elected for optionals, these can also be assigned:

* `/home`
* Swap space

_Only you know your storage composition best._ Perform selections which make sense for your setup, and the rest will simply fall into place.

The bootloader should be where root is. Ubiquity also presents an option for boot device location; assign it to be the same as the device where root is, and you shouldn't encounter any difficulties.

### _Identity and designation_
Let's return to that partition with your stuff, and your stuff _alone_ I keep harping on about. You see "My stuff" in name, but provided a label is also given, and it's `STUFF`, then the filesystem table and bootloaders can use `STUFF` as a reference for mounting data hosts.

In Windows land, this _hardly_ matters since Windows will always mount everything it can by default. In Linux land — mind the uncertainty if systemd-boot manages this the same way as a life-long GRUB2 user — this is how your open instance may see it:
```
LABEL=STUFF /mnt/Stuff auto nosuid,nodev,nofail,x-gvfs-show 0 0
```
Let's break that down, since this is something new you may need to understand:

* `LABEL=STUFF`
  * An alternative bootloader will look for this, if the label designation exists. _Any media with this name is valid._
  * This can _also_ be a partition designation, device UUID, device name, _et cetera._
* `/mnt/Stuff`
  * The path contents from this partition will appear, _usually_ in `/mnt`. _This has to exist_ in the root partition.
* `auto`
  * Filesystem type. Usually irrelevant, unless the bootloader cannot identify and perform correctly with `auto`.
* `nosuid,nodev,nofail,x-gvfs-show` — _Multiple considerations._ As-shown:
  * `nosuid`: **No** **s**et **u**ser **id**entification — disallow other users from being able to execute with their set of permissions, any file which belongs to another assigned user
  * `nodev`: **No** special **dev**ices — Disallow created device nodes from interacting with this partition
  * `nofail`: Allow system operation, even if this partition fails to mount
  * `x-gvfs-show`: _For GTK / GNOME-based desktops;_
    * `x-`: Non-standard option
    * `gvfs-`: GNOME virtual filesystem
    * `show`: Make visible (in GTK-based file managers)
* `0 0` — This represents `dump` and `pass` respectively;
  * _Should this partition be periodically backed-up?_ Boolean integer
    * ***This is a legacy option.*** If using other forms of backup, like Timeshift or Déjá Dup, then this should be set to `0`, or `dump` needs to be intercepted with a script function which runs at-boot.
  * _What order should `fsck` (filesystem check) perform error-seeking tasks at-boot?_ Enumerated integer, three choices:
    * `0` — _Skip_ (Typically default for all)
    * `1` — _Check first_ (Usually for root)
    * `2` — _Check after first_

The vast majority of these options you don't need to mess with, and if using a utility like `gnoome-disks` (from the `gnome-disk-utility` package in most distributions), you needn't even mess with this file, so long you understand _enough_ of the fields in each partition's additional options — accessible by clicking on the gears next to start / stop for the selected partition — whan making adjustments to how each partition functions.

## _The story begins_
After you're finsihed installing the system you'd like to use, the rest is _entirely_ up to you. Though, by the time you commit, you'll have formed opinions, and those opinions may change over time, _but_ eventually, you'll find your happy place, and enjoy a life (mostly) divorced from Windows.

This is where your story may take one of three paths, and divergence may occur at any time:

* **The contented dual-booter**  
You keep Windows on your computer, using it every-so-often for software (including games you would _like_ to play on Windows), but accept that not everything will either work in Linux, _or_ function with a compatibility layer using Wine Is Not an Emulator (WINE).  
&nbsp;  
Because of this contentment, you provide yourself options regardless what _else_ Microsoft may be up to, since you can just _not use it_ when you don't have to. _This also_ permits you to use Rufus without an external means for executing a copy of Windows, or a separate computer altogether as a means of making externally-bootable Windows.

* **The _devious_ dual-booter**  
You realise what you can do, now free from the shackles of Microsoft and elect to let your moral compass take a visit south of the border, _especially_ because with your newfound knowledge and understanding that nobody is going to bother rooting through your computer for whether your copy of Windows is legitimate, you elect to open Powershell and perform the following spell:  
`irm https://get.activated.win | iex`  
&nbsp;  
With this power, you also realise not only could you upgrade your copy of Windows from Home / Core to Professional, you could too upgrade from Professional to Enterprise. But if you're on Windows 10, you already know from hereon that updates are no longer generally available, for those on the general avaiilability channel.  
&nbsp;  
So now the plot thickens: You either pick **`TSforge`** for an additional three years of extended support updates (ESU) in GAC Windows instances with _zero_ obligation to Microsoft, _or_ you could download a copy of Windows 10 LTSC from Massgrave's website for Microsoft Activation Scripts, and use that when on Professional or Enterprise to install Enterprise LTSC, then activate with their **`HWID`** option.  
&nbsp;  
After making your choice, you continue going _out of your way_ to use Windows illegally, as a means of _sticking it to the man_; because they demand you buy a new computer for Windows 11, they won't let you have it for your older machine without hoop-jumping in 10 to bypass security provision restrictions, and the American multi-national doesn't care about your individual desires as an end-user, regardless where you come from.  
&nbsp;  
With this spite, you feel contented that your law-breaking activity engaged in a more subtle form of digital catharsis, but you've yet to completely remove Windows from your life since not yet everything which is desired, can be fulfilled outside of Windows.

* **The puritan mono-booter**  
After years of watching Windows mutate itself into an advertising billboard and simplify its interface while adding various means of tracking your every move across the system, you've reached a conclusion:  
&nbsp;  
***Enough!***  
&nbsp;  
You've had the course. Now, _you quit._ Windows is done. You're finished with it. It goes, it goes _now_ with no consideration for any future alongside you, _consequences be damned._ And so, you deep-end yourself in the open-source software pool to swim your way at salvation, with all which stands in the way of it discarded for somebody else to symphatise with.  
&nbsp;  
In the process, you'll certainly find new and innovative ways to _avoid_ using Windows, even if your peers may suffer for it, since who doesn't stand with you, stands against the future you wish to see. If they don't agree, they can walk; you know what you want, and what Microsoft wants simply isn't it.  
&nbsp;  
Angry and bitter at the state of personal computing with the world's most popular option, the one which compromised on morals and ethics to get a leg up in its youth, and which had with that same leg step on neck with their boot for those who oppose an "Agentic" vision of its future, you elect that Microsoft will _never_ again touch your machine in any capacity…  
&nbsp;  
_Even if_ Microsoft is presently in IBM's Linux Foundation, and actively contributes to the Linux kernel. But _forget that_, Windows is a clownshow to you, and you have no time for clowns.

Regardless what camp you end up in, and where your mind might be about what's happening to Microsoft the company, and their offering known as Windows, you're going to end up in the same place with people who may not think entirely alike, but are on similar journeys as yourself.

However you go about your adventure escaping dependence on a proprietry appliance instance, as the foundational software everything else you rely upon operates with for business and pleasure, you can take comfort in knowing for much of your journey, that trails through problems certain to be encountered over time have blazes you can follow for achieve your goal toward open-source computing at its very best.

Good luck, and have fun.
