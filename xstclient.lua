local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPex = Tunnel.getInterface("vrp_arsenal")


local marcacoes = {
	{ -1104.38,-823.34,14.29 }
}

RegisterCommand('arsenal',function(source,args,rawCommand)
	for _,mark in pairs(marcacoes) do
		local x,y,z = table.unpack(mark)
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),x,y,z,true)
		local ped = PlayerPedId()
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		if args[1] == "m4a1" then
			if vRPex.checkPermission("policia.permissao") and distance <= 10.0 then
				GiveWeaponToPed(ped,GetHashKey("WEAPON_CARBINERIFLE_MK2"),150,0,0)
				TriggerEvent("Notify","sucesso","Você pegou uma <b>M4A1<b> do arsenal (LEMBRE-SE DE GUARDAR QUANDO SAIR DE SERVIÇO)",9000)
			else
				TriggerEvent("Notify","negado","Você precisa entrar em serviço para pegar qualquer equipamento do arsenal",9000)
			end

		elseif args[1] == "m4a4" then
			if vRPex.checkPermission("policia.permissao") and distance <= 10.0 then
				GiveWeaponToPed(ped,GetHashKey("WEAPON_CARBINERIFLE"),150,0,0)
				TriggerEvent("Notify","sucesso","Você pegou uma <b>M4A4<b> do arsenal (LEMBRE-SE DE GUARDAR QUANDO SAIR DE SERVIÇO)",9000)
			else
				TriggerEvent("Notify","negado","Você precisa entrar em serviço para pegar qualquer equipamento do arsenal.",9000)
			end

		elseif args[1] == "mp5" then
			if vRPex.checkPermission("policia.permissao") and distance <= 10.0 then
				GiveWeaponToPed(ped,GetHashKey("WEAPON_SMG"),130,0,0)
				TriggerEvent("Notify","sucesso","Você pegou uma <b>MP5<b> do arsenal (LEMBRE-SE DE GUARDAR QUANDO SAIR DE SERVIÇO)",9000)
			else
				TriggerEvent("Notify","negado","Você precisa entrar em serviço para pegar qualquer equipamento do arsenal.",9000)
			end

		elseif args[1] == "mpx" then
			if vRPex.checkPermission("policia.permissao") and distance <= 10.0 then
				GiveWeaponToPed(ped,GetHashKey("WEAPON_COMBATPDW"),130,0,0)
				TriggerEvent("Notify","sucesso","Você pegou uma <b>MPX<b> do arsenal (LEMBRE-SE DE GUARDAR QUANDO SAIR DE SERVIÇO)",9000)
			else
				TriggerEvent("Notify","negado","Você precisa entrar em serviço para pegar qualquer equipamento do arsenal.",9000)
			end

		elseif args[1] == "shot45" then
			if vRPex.checkPermission("policia.permissao") and distance <= 10.0 then
				GiveWeaponToPed(ped,GetHashKey("WEAPON_PUMPSHOTGUN_MK2"),10,0,0)
				TriggerEvent("Notify","sucesso","Você pegou uma <b>SHOTGUN45<b> do arsenal (LEMBRE-SE DE GUARDAR QUANDO SAIR DE SERVIÇO)",9000)
			else
				TriggerEvent("Notify","negado","Você precisa entrar em serviço para pegar qualquer equipamento do arsenal.",9000)
			end

		elseif args[1] == "shot12" then
			if vRPex.checkPermission("policia.permissao") and distance <= 10.0 then
				GiveWeaponToPed(ped,GetHashKey("WEAPON_PUMPSHOTGUN"),10,0,0)
				TriggerEvent("Notify","sucesso","Você pegou uma <b>SHOTGUN12<b> do arsenal (LEMBRE-SE DE GUARDAR QUANDO SAIR DE SERVIÇO)",9000)
			else
				TriggerEvent("Notify","negado","Você precisa entrar em serviço para pegar qualquer equipamento do arsenal.",9000)
			end

		elseif args[1] == "fiveseven" then
			if vRPex.checkPermission("policia.permissao") and distance <= 10.0 then
				GiveWeaponToPed(ped,GetHashKey("WEAPON_PISTOL_MK2"),75,0,0)
				TriggerEvent("Notify","sucesso","Você pegou uma <b>FIVESEVEN<b> do arsenal (LEMBRE-SE DE GUARDAR QUANDO SAIR DE SERVIÇO)",9000)
			else
				TriggerEvent("Notify","negado","Você precisa entrar em serviço para pegar qualquer equipamento do arsenal.",9000)
			end

		elseif args[1] == "glock" then
			if vRPex.checkPermission("policia.permissao") and distance <= 10.0 then
				GiveWeaponToPed(ped,GetHashKey("WEAPON_COMBATPISTOL"),75,0,0)
				TriggerEvent("Notify","sucesso","Você pegou uma <b>GLOCK18<b> do arsenal (LEMBRE-SE DE GUARDAR QUANDO SAIR DE SERVIÇO)",9000)
			else
				TriggerEvent("Notify","negado","Você precisa entrar em serviço para pegar qualquer equipamento do arsenal.",9000)
			end
			
		elseif args[1] == "addkit" then
			if vRPex.checkPermission("policia.permissao") and distance <= 10.0 then
				GiveWeaponToPed(ped,GetHashKey("WEAPON_NIGHTSTICK"),0,0,0)
				GiveWeaponToPed(ped,GetHashKey("WEAPON_STUNGUN"),0,0,0)
				GiveWeaponToPed(ped,GetHashKey("WEAPON_FLASHLIGHT"),0,0,0)
				TriggerEvent("Notify","sucesso","Você pegou um <b>KIT BASICO<b> do arsenal (LEMBRE-SE DE GUARDAR QUANDO SAIR DE SERVIÇO)",9000)
			else
				TriggerEvent("Notify","negado","Você precisa entrar em serviço para pegar qualquer equipamento do arsenal.",9000)
			end
			
		elseif args[1] == "remkit" then
			if distance <= 10.0 then
			RemoveWeaponFromPed(ped,GetHashKey("WEAPON_NIGHTSTICK"))
			RemoveWeaponFromPed(ped,GetHashKey("WEAPON_STUNGUN"))
			RemoveWeaponFromPed(ped,GetHashKey("WEAPON_FLASHLIGHT"))
			TriggerEvent("Notify","sucesso","Você guardou seu kit básico.")
		end
			
		elseif args[1] == "clear" then
			if distance <= 10.0 then
			RemoveAllPedWeapons(ped,0)
			TriggerEvent("Notify","sucesso","Você guardou todos os equipamentos no arsenal.")
			end
		end
	end
end)

