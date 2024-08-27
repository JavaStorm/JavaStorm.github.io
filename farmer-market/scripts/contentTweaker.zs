#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var agaveJuice = VanillaFactory.createFluid("agaveJuice", Color.fromHex("CCC395"));
agaveJuice.register();
game.setLocalization("en", "agaveJuice", "Agave Juice");

//<fluid:agavejuice>.name = "Agave Juice";

//var cactusJelly = mods.contenttweaker.VanillaFactory.createItemFood("cactusJelly");
//cactusJelly.itemUseAction = "EAT";