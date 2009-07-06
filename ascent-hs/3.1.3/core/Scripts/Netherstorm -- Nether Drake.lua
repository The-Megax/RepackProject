--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Drake_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Drake_Presence",1000,0)
end

function Drake_Presence(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36513,pUnit:GetClosestPlayer())
end

function Drake_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Drake_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18877, 1, "Drake_OnEnterCombat")
RegisterUnitEvent (18877, 2, "Drake_OnLeaveCombat")
RegisterUnitEvent (18877, 4, "Drake_OnDied")