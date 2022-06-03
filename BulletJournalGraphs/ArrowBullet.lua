-- Callback if the menu item is executed
function ArrowBulletCallback()
    --result = app.msgbox("Pregunta de tipo:", {[1] = "Yes", [2] = "No", [3]="Quien sabe"});
    --print("result = " .. result) -- print this text in console
    
    
    -----------------------------------------------

    local docStructure = app.getDocumentStructure()
    
    
    local width = docStructure["pages"][docStructure["currentPage"]]["pageWidth"];
    
    strokes = {}

    unit=width/20.0;

    x0=1.2*unit;
    y0=1.2*unit;
    L=unit;  --side
    L2=0.8*unit; --side lazo
    rx=0.4*unit;--recuo x
    ry=0.2*unit; --recuo x
    d=0.3*unit;

    -- draw1
    stroke = {  x = { [1] =  0+x0   , [2] =  0+x0-rx, [3] =   d+x0-rx, [4] = 0+x0-rx, [5] = L2+x0-rx, [6] = L2+x0-rx, [7] = 0+x0 }, 
                y = { [1] =  0+y0+ry, [2] =  0+y0+ry, [3] = L/2+y0+ry, [4] = L+y0+ry, [5] =  L+y0+ry, [6] = L+y0    , [7] = L+y0}, 
              --pressure = { [1] = 0.8,      [2] = 0.9,      [3] = 1.1}, 
              --tool = "pen",
              --width = 3.8, 
              --color = 0xa000f0,
              --fill = 50,
              --lineStyle = "solid"
              }
    table.insert(strokes, stroke)

    -- draw2
    stroke = {  x = { [1] = L2+x0-rx, [2] = 0+x0 }, 
                y = { [1] =  L+y0+ry, [2] = L+y0 }, 
              --pressure = { [1] = 0.8,      [2] = 0.9,      [3] = 1.1}, 
              --tool = "pen",
              --width = 3.8, 
              --color = 0xa000f0,
              --fill = 50,
              --lineStyle = "solid"
              }
    table.insert(strokes, stroke)

    -- draw3
    stroke = {  x = { [1] =  0+x0, [2] = 0+x0, [3] = L+x0,[4] = L+d+x0, [5] = L+x0, [6] =  0+x0}, 
                y = { [1] =  0+y0, [2] = L+y0, [3] = L+y0,[4] = L/2+y0, [5] = 0+y0, [6] =  0+y0}, 
              --pressure = { [1] = 0.8,      [2] = 0.9,      [3] = 1.1}, 
              --tool = "pen",
              --width = 3.8, 
              --color = 0xa000f0,
              --fill = 100,
              --lineStyle = "solid"
              }
    table.insert(strokes, stroke)

    app.addStrokes({strokes = strokes})
    app.refreshPage()
end

    --[[
    local docStructure = app.getDocumentStructure()
    print("#pages=",#docStructure["pages"])
    for i=1,#docStructure["pages"] do 
        print("page:",i,"\tpageWidth=",docStructure["pages"][i]["pageWidth"]);
        print("page:",i,"\tpageHeight=",docStructure["pages"][i]["pageHeight"]);
        print("page:",i,"\tisAnnoated=",docStructure["pages"][i]["isAnnoated"]);
        print("page:",i,"\tpageTypeFormat=",docStructure["pages"][i]["pageTypeFormat"]);
        print("page:",i,"\tpdfBackgroundPageNo=",docStructure["pages"][i]["pdfBackgroundPageNo"]);
        print("page:",i,"\tcurrentLayer=",docStructure["pages"][i]["currentLayer"]);
        print("page:",i,"\t#layers=",#docStructure["pages"][i]["layers"]);
        print("page:",i,"\tlayer:",0,"\tisVisible=",docStructure["pages"][i]["layers"][0]["isVisible"]);
        for j=1,#docStructure["pages"][i]["layers"] do 
            print("page:",i,"\tlayer:",j,"\tisVisible="  ,docStructure["pages"][i]["layers"][j]["isVisible"]);
            print("page:",i,"\tlayer:",j,"\tisAnnotated=",docStructure["pages"][i]["layers"][j]["isAnnotated"]);
        end
    end
    print("currentPage=",docStructure["currentPage"])
    print("pdfBackgroundFilename=",docStructure["pdfBackgroundFilename"])
    ]]--
