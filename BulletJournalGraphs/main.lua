-- This is an example Xournal++ Plugin - copy this to get started

require "ArrowBullet"
require "TitleRound"


-- Register all Toolbar actions and intialize all UI stuff
function initUi()
    print("Registrando el pulgin BulletJournalGraphs ...\n");

    ref = app.registerUi({  ["menu"] = "Add arrow bullet", 
                            ["callback"] = "ArrowBulletCallback", 
                            ["accelerator"] = "<Control><Alt>a"}
                        );

    ref = app.registerUi({  ["menu"] = "Add round box title", 
                            ["callback"] = "TitleRoundCallback", 
                            ["accelerator"] = "<Control><Alt>r"}
                        );

    print("El plugin BulletJournalGraphs fue registrado.\n");
end





