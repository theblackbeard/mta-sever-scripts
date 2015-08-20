function initGui()
	gui = {}
	gui._placeHolders = {}
	
	local screenWidth, screenHeight = guiGetScreenSize()
	local windowWidth, windowHeight = 400, 315
	local left = screenWidth/2 - windowWidth/2
	local top = screenHeight/2 - windowHeight/2
	gui["_root"] = guiCreateWindow(left, top, windowWidth, windowHeight, "Minha Janela", false)
	guiWindowSetSizable(gui["_root"], false)
	
	gui["label"] = guiCreateLabel(40, 35, 301, 51, "Meus Veículos", false, gui["_root"])
	guiLabelSetHorizontalAlign(gui["label"], "left", false)
	guiLabelSetVerticalAlign(gui["label"], "center")
	
	gui["sport"] = guiCreateButton(50, 145, 301, 41, "Carros Esportivos", false, gui["_root"])
	
	if on_sport_clicked then
		addEventHandler("onClientGUIClick", gui["sport"], on_sport_clicked, false)
	end
	
	elements(gui["_root"], false, true, true)
	return gui, windowWidth, windowHeight
	
end

function myWindow()
	initGui()
	 if (gui["_root"] ~= nil) then
	  		guiSetVisible(gui["_root"], true)
	  else
	  		outputChatBox("Problema na geração da GUI")
	  end	
end

addCommandHandler("jan", myWindow)

function on_sport_clicked(button, state)
	if button == "left" and state == "up" then
		elements(gui["_root"], false, false, false)
		triggerServerEvent("getSport", getRootElement())
	end
end


function elements(window, visibility, input, cursor)
	guiSetVisible(window, visibility)
	guiSetInputEnabled(input)
	showCursor(cursor)
end