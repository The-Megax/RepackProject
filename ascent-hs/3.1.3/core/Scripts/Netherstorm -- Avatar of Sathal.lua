--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Avatar_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Avatar_Rain",1000,0)
    pUnit:RegisterEvent("Avatar_Bolt",3000,0)
end

function Avatar_Rain(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34017, pUnit:GetClosestPlayer())
end

function Avatar_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(12471, pUnit:GetClosestPlayer())
end

function Avatar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Avatar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21925, 1, "Avatar_OnEnterCombat")
RegisterUnitEvent (21925, 2, "Avatar_OnLeaveCombat")
RegisterUnitEvent (21925, 4, "Avatar_OnDied")
