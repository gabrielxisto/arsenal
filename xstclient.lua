local gunsTable = {
    [1] = { ['name'] = "glock", ['type'] = "WEAPON_COMBATPISTOL" },
    [2] = { ['name'] = "g3", ['type'] = "WEAPON_SPECIALCARBINE" },
    [3] = { ['name'] = "g3zao", ['type'] = "WEAPON_SPECIALCARBINE_MK2" },
    [4] = { ['name'] = "ak47", ['type'] = "WEAPON_ASSAULTRIFLE" }

}


RegisterCommand("arsenal", function(source,args)
    for k,v in pairs(gunsTable) do 
        local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-75.12,-814.66,326.18,true)
        if distance <= 10.0 then
            if args[1] == v.name then
                GiveWeaponToPed(PlayerPedId(), GetHashKey(v.type), 150)
            end
        else 
            TriggerEvent("Notify","negado","Voce esta fora do alcance",1000)
        end
    end
end)
