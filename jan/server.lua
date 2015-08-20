function sportCarHandler()
	  local x, y, z = getElementPosition ( client )
	  createVehicle ( 411, x, y+ 5, z + 5  )
end

addEvent("getSport", true)
addEventHandler("getSport", getRootElement(), sportCarHandler)
