ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('energetyk', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent("basicneeds_energetyk:wypij", _source)
	xPlayer.removeInventoryItem("energetyk", 1)
	TriggerClientEvent('esx_status:add', _source, 'thirst', 200000)

end)