--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Honor_OnEnterCombat(pUnit, Event)
    pUnit:RegisterEvent("Honor_Cleave",1000,0)
end

function Honor_Cleave(pUnit, Event)
    pUnit:FullCastSpellOnTarget(15284,pUnit:GetClosestPlayer())
end

function Honor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Honor_OnDied(pUnit,Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent (20199, 1, "Honor_OnEnterCombat")
RegisterUnitEvent (20199, 2, "Honor_OnLeaveCombat")
RegisterUnitEvent (20199, 4, "Honor_OnDied")