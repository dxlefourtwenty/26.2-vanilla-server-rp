# Minecraft 26.2 server pack release

## Datapack fixes

Replace the old Mobs Drop Eggs ZIP with:

`server-data-packs/MobsDropEggs v1.0.0 (MC 26.2-clean).zip`

Add this pack after every other datapack:

`server-data-packs/zz-server-compatibility-fixes-mc26.2.zip`

The compatibility pack must remain highest priority. On an existing world, run:

`datapack enable "file/zz-server-compatibility-fixes-mc26.2.zip" last`

The clean Mobs Drop Eggs build removes references to optional Vanilla Tweaks
loot tables that are not installed. The compatibility pack:

- combines Mobs Drop Eggs and Ancient Artifacts ghast/phantom loot;
- updates the Recipes+ horse advancement predicate for Minecraft 26.2;
- updates Enchantment Plus beheading predicates for Minecraft 26.2.

## Combined resource pack

`resource-pack/Dom-Additions-Ancient-Artifacts-2-v2.5.5g-mc26.2.zip`

SHA-1:

`5772659af815df077a04a062557bc8fc88464114`

The ZIP combines all nonconflicting Dom Additions and Ancient Artifacts 2.5.5g
client assets. It also supplies the missing
`ancient_artifacts:block/break` item model referenced by the Ancient Artifacts
datapack.

Do not publish or create a third-party download link without permission from
both source authors. The bundled Dom Additions terms prohibit reposted download
links, and Ancient Artifacts is published under CC BY-NC-ND 4.0.
