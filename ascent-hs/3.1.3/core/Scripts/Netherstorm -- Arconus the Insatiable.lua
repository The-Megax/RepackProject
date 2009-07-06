--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Arconus_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Arconus_Shadows",10000,0)
    pUnit:RegisterEvent("Arconus_Desecration",1000,0)
end

function Arconus_Shadows(pUnit,Event)
    pUnit:CastSpell(36472)
end

function Arconus_Desecration(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36473, pUnit:GetClosestPlayer())
end

function Arconus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Arconus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20554, 1, "Arconus_OnEnterCombat")
RegisterUnitEvent (20554, 2, "Arconus_OnLeaveCombat")
RegisterUnitEvent (20554, 4, "Arconus_OnDied")