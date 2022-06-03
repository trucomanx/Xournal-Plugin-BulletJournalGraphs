function GetInitData(data)
    
    homepath = os.getenv( "HOME" );
    filesep=package.config:sub(1,1);
    initfilepath=homepath..filesep..".BulletJournalGraphs.json"
    
    local json = require "json"
    file = io.open(initfilepath, "r")
    if file~=nil then
        strAll=file:read("*all");
        file:close()
        decode = json.decode( strAll )
        
        if(decode["ArrowBullet"]~=nil) then
            if(decode["ArrowBullet"]["menu"]~=nil) then
                 data["ArrowBullet"]["menu"]=decode["ArrowBullet"]["menu"];
            end
            if(decode["ArrowBullet"]["accelerator"]~=nil) then
                 data["ArrowBullet"]["accelerator"]=decode["ArrowBullet"]["accelerator"];
            end
        end
        
        if(decode["TitleRound"]~=nil) then
            if(decode["TitleRound"]["menu"]~=nil) then
                 data["TitleRound"]["menu"]=decode["TitleRound"]["menu"];
            end
            if(decode["TitleRound"]["accelerator"]~=nil) then
                 data["TitleRound"]["accelerator"]=decode["TitleRound"]["accelerator"];
            end
        end
        
    else
        print("NO exist:",initfilepath);
    end
    
    return data;
end
