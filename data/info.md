# Dependencies
* xtem

# Implements

# Supports

# Abstract?
false

# SNAPSHOT
- update all attribute ids

# Issues
- block reach is set to 0 when holding torch, meaning offhand functionality is broken.
    - item attributes are delayed, so placing a torch is still possible if done quickly after switching to the torch.
- torch light blocks will replace `#minecraft:air`, but will set it back be `minecraft:air`, regardless of air type it replaced.
- torch light blocks underwater can ONLY replace `minecraft:water[level=0]`. this really cant be changed.
- related to the above issues, torches permanently will destroy `light` blocks they pass through.
- stacked torches use the burnout time of a single torch, leading to a potentially large amount of full bright time (and recoverable time).
- water/lava will flow around existing torches because light blocks are treated similarly to a partial blocks.

# TODO
- dynamic stacking
    * 2 torches on the same block on on the ground will stack.
    * the burn time for this torch formula is:
        - t1: burn time of longer torch
        - t2: burn time of shorter torch
        - m: max burn time of torch
        - a: time per additional setting
    * t = t1 + ((t2 / m) * a)
- disallow lava transportation or something