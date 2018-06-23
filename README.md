# gaidenbuildfile

Running makehack.cmd with a clean Fire Emblem Gaiden ROM named 'fe2_clean.nes' in the root will assemble into what should in theory be nearly indistinguishable from artemis251's 2009 translation (minus some graphical bugs caused on my end), the difference being that various aspects are directly editable in the buildfile.  Due to the relatively small size of everything it also compiles very quickly.

Text editing is technically doable now but text commands aren't defined and text isn't separated by string so I'd advise against it.

Character data is stored across 3 tables.  In Tables/Character Data you should find an event file for each character.  You can edit the data stored on all 3 tables in each file and it'll build into the right places.  This is in contrast to doing this with Nightmare modules, where you would have to edit each table individually.  Instead the information is more consolidated.

Item data, much like character data, is stored across multiple tables, but this time each attribute of a weapon is stored in a different table (might, weight, hit, etc).  Weapon and Magic edits are laid out much the same way as characters are, with the information consolidated in a single file for each item.

ASM folder contains some NES ASM notes I've taken + an assembler, however I doubt any ASM hacking will be possible due to how finnicky NES FE is.

TODO (in a vague order of priority):

-Class editing, already have the nmms for it so it should be fairly easy

-Maps, look into the FE1 map formatter to see if it'll work here as well

-Text editing, cleanup the text installer to be easier to edit + properly define the text commands

-Celice doc, contains a lot of helpful information, offsets, etc. that can be utilized

-Spell lists, locate where spell learn lists are in ROM and how to edit them
