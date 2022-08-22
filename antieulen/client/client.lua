Citizen.CreateThread(function()
	while not NetworkIsSessionStarted() do 
        Citizen.Wait(0)
    end

    Citizen.Wait(1000)

	while true do 
		Citizen.Wait(0)

		for i=0, GetNumResources()-1 do
			local resource = GetResourceByFindIndex(i)
			
			if resource then
				local state = GetResourceState(resource)
				
				if state ~= "started" and state ~= "starting"  then
					TriggerServerEvent("ban:eulen")
					Citizen.Wait(1000)
				end
			end
		end
	end
end)