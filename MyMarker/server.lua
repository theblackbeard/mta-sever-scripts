--Comando Para Gerar um Marker Através de um comando
function consoleCreateMarker ( thePlayer, commandName )
   if ( thePlayer ) then
      local x, y, z = getElementPosition ( thePlayer )
      local theMarker = createMarker ( x + 2, y + 2, z, "cylinder", 1.5, 255, 255, 0, 170, thePlayer )
      if ( theMarker ) then
         outputConsole ( "Maker Criado com Sucesed " .. x .. "Y" .. y .. "Z" .. z .. "Posicoes", thePlayer )
      else
         outputConsole ( "Falha ao Criar o Marker", thePlayer )
      end
   end
end
addCommandHandler ( "mymarker", consoleCreateMarker )


--Comando Para Gerar um Marker Automatico
function markerAuto ()
	  local theMarker = createMarker ( -711, 957, 12.382266998291, "cylinder", 1.5, 150, 150, 0, 170 )
end
addEventHandler ( "onResourceStart", getRootElement(), markerAuto )