

# Windows 10 post-life exodus plan
While Microsoft's WIndows 10 isn't completely dead (yet), after October 14th 2025, free support for consumer tiers will have expired, which _for most people_ will effectively mean WIndows 10 is finished. While there is Extended Support Updates and Enterprise LTSC — the latter which will be covered later, we'll begin tame with things which don't require you take your moral compass south of the border, and if you _really_ need to, _or_ don't mind _sticking it to "The Man"_ after paying thousand of dollars already toward an American multi-national which hs proven to not care so dearly about you and your machine, those options will be covered later on in this writ.

Guidance therein is meant for somebody with zero comprehension and understanding about computers from the start, and will cover the following:
* Hardware attachment
* Partition geometry management
* Specialised boot media creation tools
* Cross-platform software alternatives
  * (As in, working across WIndows and Linux)
* Filesystem management

There is a reason this writ is _so long_, and it's because nearly every word written here has applicability to the final outcome of your sentience with a machine enough to assert independence as an informed consumer, to chooose what oftware operates on your computer. In short: _pay attention, and learn._ Let's start with the former-most in that list, to address the latter-most…
## Hardware
### _Special consideration for laptops_
Many laptops produced before 2010 (and perhaps, some time after) have this neat thing called an optical disc device, which uses a laser to read contents on a compatible media. Regardless if it's compact disc, digital video disc, HD-DVD, or Blu-Ray, it requires a device capable of reading the data available from the media's surface topology, and until USB took over everything, it was (and still coulld be) the _only_ way to check out different operating systems, on top of viewing whatever multimedia you fancy.

This device — the _medium_ for your disc-based _media_ — can be replaced completely with a physically-compatible storage media carriage; usually, you'll find this under the term `Hard disk (HDD) caddy` or similar. These formed plastic enclosures do nothing more than convert the full-size serial ATA connection usually reserved for larger quarter-panel expansion devices on desktop or inside the laptop for general storage, to the "Slimline" SATA connector typically reserved for smaller applications such-as the optical disc device inside older laptops, and hold the 2.5" storage media in-question.

Determine how thick the equipped device is once removed from the laptop; which should only be a screw or two holding it in, and observe the accessories attached; fixture hardware can be removed and transferred to a compatible adapter, as well its fascia (the bit of decorative plastic on the device's front-face), and while most — if not all — "Caddies" would invalidate the eject button, it's a small price to pay for avoiding the peril of wires dangling from your laptop just to expand storage without completely disassembling it enough to access the present storage media therein.
### _Special consideration for M.2 / NGFF_
Intel's "Next Generation Form Factor", usually referred to as M.2 (for reasons unknown to me) is steadily replacing SATA. You can usually find adapters for these, but they're typically equipped with two M.2 slots and some means of switching between them, or pairing them in RAID 0. Of course, you could just use one and leave it at that, but you certainly won't end up using both of them individually. With this in mind, find your respective M.2 to SATA adapter for attaching an M.2 media into, if no M.2 hardware is available on your device otherwise.

If you find no SATA storage media some time in the near future, the extra spend on SATA adapters for M.2 will help bring your older machine into the present decade. It will also help with minimising possible damage to the media's edge connector, since functionally is it not-dissimilar to any other M.2 enclosure, while also minimising investment in other such adapter for enabling M.2 media's attachment via USB.
### _USB hardware_
Universal Serial Bus is what most people are going to end up using for almost everything in this guidance, and typically, everything you would need can be consolidated onto a single USB-attached "Flash media" device. However, multi-device configurations will be explained for providing a safety media in the event _everything_ goes wrong, and you still need Windows.

USB comes in a variety of flavours. While type-C is recent hotness for consumer electronics, there are other connectors prior this you may be familiar with; type-B micro (_hereon: **µB**_) typically found on pre-C / cheaper Android handsets for client connections, and type-A for host connections.
> For Apple users: Lightning is just another USB standard! One could buy Lightning adapters for USB and convert them into high-speed USB connections. Typically, Lightning cables are ***incapable*** of operting par with USB Superspeed (3.x), so expect performance similar to five-pin µB connections.

These older client-to-host interactions across A, B, and their _On-the-Go_ variants have all been superseded by type-C, but you can usually find cables to adapt between them. Many adapters with fixed cables may still terminate to USB-A, so they may need a type-C adapter accepting that. On-occasion, you may find SATA adapters using µB, so you can use cables typically reserved by many people to charge their handset and transfer data between devices, for that application as-well; a practice I typically recommend, since _sometimes_ the cable may "Go bad" (short-out, become severed internally, have compromised connectors, &c), but the adapter still wants to perform, so using a compatible replacement cable between client storage adapter and host machine will enable continued use of such equipped with recepticles for USB connections.

## File management
### 
(Modern) Microsoft Windows has libraries in `%userprofile%`. Linux distros keep personal files in `$HOME`. There are ways to bridge thegap, but first let me say this; if your desktop and your directories are a mess, _please_ understand how to move files into places they _should_ be at using the terminal. Short of that, create references in the messiest of spaces, so you don't have to memorise an extra-long file path (or variables, _heaven forbid_) any time you want to batch-move a bunch of stuff around.

No matter how you get there, once everything is well-organised, we'll finish the rest later.
