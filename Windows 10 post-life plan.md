## Windoows 10 is _not_ dead… yet.
Windows 10's _consumer_ tiers are reaching end-of-support at October 14th, 2025. **Not LTSC** though. So, using the nearly-unsupported release of Windows you may already have (though Windows 11 certainly works as-well), a migration strategy can be developed to help with moving away from Windows, while enabling continued periodic use when software developeers act beyond reason and refuse to accept your software choices.
## Hardware
If you have money, then there are additional strategies you can exercise to enable the use of Windows on removable media:

Storage media is commonly attached by M.2 / Intel's Next Generation Form Factor (NGFF) these days. Before that, there is Serial Attached Technology Architecture (SATA), which was a sucessor of INtegrated Drive Electronics (IDE) and the four-pin power attachment colloquially known as "Molex", origionally from AMP's Mate-N-Lok series before acquisition from Molex Corporation.

M.2 and SATA are the only one of those worth giving a toss about. So, toss your money at adapters for these things you wouldn't mind trusting. M.2 has less long-term robustness against kinetic damage compared to SATA — a bare SATA-attached SSD is more robust than a bare M.2 SSD, but many SATA adapters I've found in my ssarch for the _perfect_ one that just does SATA turns up bust; there are M.2 adapters with separate cable one could replace if it ever goes bad, but for such servicibility to be afforded via SATA adapters, those are still in the bronze age compared to M.2; using USB 2.x ten-pin µB "SuperSpeed" — the goofy-looking blade-like one backward-compatible with five-pin "High-speed" µb, initially more-common on Samsung-branded devices. Good thing there are type-A and type-C cables for that.
### _Special consideration for laptops_
While USB-attached external media can be used on any device with USB of any variety which has attached data lines, users of laptops with optical media devices (CD, DVD, Blu-Ray, _etc._) could use a specialty storage caddy adapters which can be inserted to substitute for an optical medium, after the fastening and cosmetic accesories from the previous hardware is transferred onto it.

More such accesories specific to a laptop model and adaption hardware can be purchased to enable _multiple_ storage media attached via full-size SATA, to be used with slimline SATA. WHile this is a solid consideration for persoons on a budget, the possibility such devices may never properly power down on idle, depending on what signals are provided by the baseboard such adapters are attached to exists which may cause undue wear of auxiliary components part of the storage media, which can deminish operational lifetime of such devices. Provided it's _only_ an operating system on there, this may not be such a problem so long keys to de-encrypt data for the on=board storage media _if applicable_ is available via another means.

After attachment of a storage media to the baseboard via such adapters, the existing opeical medium device can be inserted into a USB adapter so it may operate outside of the mechine, and be usable on other machines.
### _`when(ready)`_
Once you have your (external) media hardware considerations fulfilled, you can proceed with software acquisition and exercise. Obtain a utility known as Rufus from its homepage, and figure out a means to obtain Windows so it can be installed via USB to a target device.
### SUMMARY
In case the above was a lot to ingest, here is the information pre-digested into a convenient bullet list, since I am aware attention spans are _absolutely crippled_ these days:
* USB-attached adapter _of either:_
  * M.2
  * SATA
* If removable cable, look for:
  * Type-C
  * Type-µB SuperSpeed (10-pin)
* _If laptop with optical media device in expansion bay:_
  * Extra storage can be built-in with an slimline SATA-attached storage adapter
  *  
## Obtaining Windows
…In one of three ways.
### _Official disc image_
You can obtain WIndows 11 from Microsoft's website, which will limit you to officially-supported consumer tiers of Windows. Boring, but reliable. If you use an edition / tier which shipped with your computer, you will more-than-likely have this copy pre-activated after using a Microsoft account. Else If you don't want to use a Microsoft account, then you may need to activate it manually.
### _Unofficial disc image building scripts_
Thanks to Microsoft's unified update platform (UUP), there is UUP Dump, which is hosting every UUP Microsoft delivers via Windows Update. This means, you can obtain and build specific releases of WIndows, where hardware may not function well with the most recent copy of Windows. _But also_ you can just obtain whatever you want from UUP Dump regardless if you have the right to use that edition of Windows, provided you obtain a key or use a third-party method of activation (which would be naughty
### _Clearly illegal_
If you want to take your moral compass a visit down south, you can search for `Windows 11 LTSC` and obtain that. A lovely group of "Threat actors" (as one resource refers to them) has made available disc images for Windows 10 and 11, of the Enterprise tier using the long-term servicing channel, _as well_ the means to activate _any_ copy of Windows, ***for free***. Support will persist until 2032 for Windows 10 Enterprise LTSC, and until 2034 for Windows 11 Enterprise LTSC. Unless Microoft delivers a fundamental update to how activation is handled — not that it seems like they care — then it is impossible for Miccrosoft to patch and write out your activation.

Additional basic instructions are provided, but if you are _not_ keen on keeping Microsoft Edge in Windows 11, then you **must** uninstall Edge after completely updating the system. Otherwise, when a copy of Windows 11 Enterprise is using the IoT license to activate on a single machne — rather than needing a volume key for a fleet — the IoT license disallows removal of Edge using first-party means.

Mind that the Microsoft Store and the WinGet Powershell cmdlet are bound to the hip, much like other Microoft web services and WebView2. Put simply; if you use Microsoft's web-based UWPs, you still need to keep Edge WebView2 installed (which means, that's likely where _all_ of the spyware may end up, if Microosoft is forced to remove it from Edge), and [this is going to be complete later]
