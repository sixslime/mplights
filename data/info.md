# Dependencies
* xtem

# Implements

# Supports

# Abstract?
false

# Issues
- block reach is set to 0 when holding torch, meaning offhand functionality is broken.
- torch light blocks will replace/break `#mplights:torch/air_replaceable`, but will set it back be `minecraft:air`, regardless of air type it replaced.
- torch light blocks will replace/break `#mplights:torch/water_replaceable`, but will set it back be `minecraft:water`, regardless of air type it replaced.