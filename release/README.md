# Minecraft 26.2 server pack release

## Datapack fixes

Replace the old Mobs Drop Eggs ZIP with:

`server-data-packs/MobsDropEggs v1.0.0 (MC 26.2-clean).zip`

Add this pack after every other datapack:

`server-data-packs/zz-server-compatibility-fixes-mc26.2.zip`

The compatibility pack must remain highest priority. On an existing world, run:

`datapack enable "file/zz-server-compatibility-fixes-mc26.2.zip" last`

The clean Mobs Drop Eggs build removes references to optional Vanilla Tweaks
loot tables that are not installed. Its squid, glow-squid, and guardian
wrappers also include Tasty Supplies' Tentacle and Guardian Tail pools so
neither pack can replace the other's drops. The compatibility pack:

- combines Mobs Drop Eggs and Ancient Artifacts ghast/phantom loot;
- updates the Recipes+ horse advancement predicate for Minecraft 26.2;
- updates Enchantment Plus beheading predicates for Minecraft 26.2;
- gives Recipes+ priority over the three conflicting vanilla blast-furnace
  nugget recipes;
- moves the vanilla purpur-pillar recipe horizontal so Recipes+'s vertical
  purpur-slab recipe can coexist.

## Dom Additions and Tasty Supplies

Use:

`../data-packs/dom-additions.zip`

SHA-1:

`9034927a9c75a93758645df70d6642d8b3c25027`

Tasty Supplies' knife recipes run through the Cutting Board. Place one wheat
on the board, then strike it with any Tasty Supplies knife to produce four
Rice. Rice can be cooked in a furnace, smoker, or on a campfire, and is used
by the Cod, Salmon, Guardian, and Kelp Roll recipes. Raw Rice uses the
command-only test-instance-block carrier so it cannot overlap an obtainable
survival item; regular command blocks remain unchanged. Every edible result
still uses the poisonous-potato carrier.

## Foods Plus

Add:

`server-data-packs/foods-plus.zip`

SHA-1:

`5fc8a76bcba67b49b7d7a196e7b6270ac3dbca22`

Foods Plus adds 67 foods and drinks adapted from Matcha Flavoured. Matcha's
short healing bursts are converted to conventional hunger and saturation,
while its other food effects are preserved. Every custom food uses a
poisonous-potato carrier with its own item model and components. Recipes use
ordinary survival ingredients rather than Matcha's repurposed vanilla items.
Charred fish, meat, and potatoes use shapeless raw-food-plus-charcoal recipes
so vanilla smoking recipes remain available.
Use it with the updated combined resource pack below.

## Combined resource pack

`resource-pack/dom-additions.zip`

SHA-1:

`3829affeab869129644e53b5c3be8f1be14aa66f`

The ZIP combines all nonconflicting Dom Additions, Ancient Artifacts 2.5.5g,
Builder's Wand 2.1.2, WASD Resource Pack 7.8.2, Foods Plus, and Tasty Supplies
client assets. It also supplies the missing `ancient_artifacts:block/break`
item model referenced by the Ancient Artifacts datapack, the five Builder's
Wand item models and textures, and the WASD assets required by the new
datapack.

Do not publish or create a third-party download link without permission from
all source authors. The bundled Dom Additions terms prohibit reposted download
links, Ancient Artifacts is published under CC BY-NC-ND 4.0, and the Builder's
Wand and Tasty Supplies source archives do not include separate licenses. The
bundled WASD terms permit server use but prohibit distributing the creator's
datapacks, in whole or in part, without express written permission.
