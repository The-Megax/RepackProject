--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Dragon_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Dragon_Presence",1000,0)
    pUnit:RegisterEvent("Dragon_Netherbreath",2500,0)
end

function Dragon_Presence(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36513,pUnit:GetClosestPlayer())
end

function Dragon_Netherbreath(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36631,pUnit:GetClosestPlayer())
end

function Dragon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dragon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20332, 1, "Dragon_OnEnterCombat")
RegisterUnitEvent (20332, 2, "Dragon_OnLeaveCombat")
RegisterUnitEvent (20332, 4, "Dragon_OnDied")