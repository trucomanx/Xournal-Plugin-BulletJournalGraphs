-- This is an example Xournal++ Plugin - copy this to get started

require "ArrowBullet"
require "TitleRound"
require "GetInitData"


-- Register all Toolbar actions and intialize all UI stuff
function initUi()
    data={
        ArrowBullet={
            menu="Add arrow bullet",
            accelerator="<Control><Alt>a"
        },
        TitleRound={
            menu="Add round box title",
            accelerator="<Control><Alt>r"
        },
    };
    

    print("\nRegistering the plugin BulletJournalGraphs ...");

    data=GetInitData(data);

    ref = app.registerUi({  ["menu"] = data["ArrowBullet"]["menu"], 
                            ["callback"] = "ArrowBulletCallback", 
                            ["accelerator"] = data["ArrowBullet"]["accelerator"]}
                        );

    ref = app.registerUi({  ["menu"] = data["TitleRound"]["menu"], 
                            ["callback"] = "TitleRoundCallback", 
                            ["accelerator"] = data["TitleRound"]["accelerator"]}
                        );

    print("The plugin BulletJournalGraphs was registered.\n");
end





