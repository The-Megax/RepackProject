--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Ardonis_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ardonis_Shadows",10000,0)
    pUnit:RegisterEvent("Ardonis_Desecration",1000,0)
end

function Ardonis_Shadows(pUnit,Event)
    pUnit:CastSpell(36472)
end

function Ardonis_Desecration(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36473, pUnit:GetClosestPlayer())
end

function Ardonis_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ardonis_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19830, 1, "Ardonis_OnEnterCombat")
RegisterUnitEvent (19830, 2, "Ardonis_OnLeaveCombat")
RegisterUnitEvent (19830, 4, "Ardonis_OnDied")