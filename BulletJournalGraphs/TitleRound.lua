-- Callback if the menu item is executed
function TitleRoundCallback()
    --result = app.msgbox("Pregunta de tipo:", {[1] = "Yes", [2] = "No", [3]="Quien sabe"});
    --print("result = " .. result) -- print this text in console

    local docStructure = app.getDocumentStructure()
    
    local width = docStructure["pages"][docStructure["currentPage"]]["pageWidth"];
    
    print("width=",width)
    
    W=0.5*width;
    H=width/20;
    x0=0.03*width;
    y0=0.03*width;
    a=0.1;-- va de 0 a 0.5 , 0 maximo redondo
    
    eps=10;
    
    splines={};
    spline = {  
              coordinates = 
              { 
               x0+0.50*H-a*H, y0+0.00*H   ,
               x0+0.00*H    , y0+0.00*H   ,
               x0+0.00*H    , y0+0.00*H   ,
               x0+0.00*H    , y0+0.5*H-a*H,
               --
               x0+0.00*H    , y0+0.5*H+a*H,
               x0+0.00*H    , y0+1.00*H   ,
               x0+0.00*H    , y0+1.00*H   ,
               x0+0.50*H-a*H, y0+1.00*H   ,
               --
               x0+1.00*W-0.50*H+a*H, y0+1.00*H   ,
               x0+1.00*W           , y0+1.00*H   ,
               x0+1.00*W           , y0+1.00*H   ,
               x0+1.00*W           , y0+0.5*H+a*H,
               --
               x0+1.00*W           , y0+0.5*H-a*H,
               x0+1.00*W           , y0+0.00*H   ,
               x0+1.00*W           , y0+0.00*H   ,
               x0+1.00*W-0.50*H+a*H, y0+0.00*H   ,
               --
               x0+0.50*H-a*H       , y0+0.00*H   ,
               x0+0.50*H-a*H       , y0+0.00*H   ,
               x0+0.50*H-a*H       , y0+0.00*H   ,
               x0+0.50*H-a*H       , y0+0.00*H   ,
              }, 
              tool = "pen",
              --width = 3.8, 
              --color = 0xa000f0,
              --fill = 0,
              --lineStyle = "solid"
              }
    table.insert(splines, spline)

    app.addSplines({splines = splines})
    
    --[[
    strokes = {}
    
    stroke = {  x = { x0+1.00*W-0.50*H+a*H, x0+0.50*H-a*H}, 
                y = { y0+0.00*H           , y0+0.00*H}, 
              --pressure = { 0.8, 0.9, 1.1}, 
              tool = "pen",
              --width = 3.8, 
              --color = 0xa000f0,
              --fill = 100,
              --lineStyle = "solid"
              }
    table.insert(strokes, stroke)

    app.addStrokes({strokes = strokes})
    ]]--
    
    app.refreshPage()
end
