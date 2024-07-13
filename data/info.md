# Dependencies
* xtem

# Implements

# Supports

# Abstract?
false

# Issues
- block reach is set to 0 when holding torch, meaning offhand functionality is broken.
- torch light blocks will replace `#minecraft:air`, but will set it back be `minecraft:air`, regardless of air type it replaced.
- torch light blocks underwater can ONLY replace `minecraft:water[level=0]`. this really cant be changed.
- related to the above issues, torches permanently will destroy `light` blocks they pass through.