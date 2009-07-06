--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Eye_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Eye_Bursts",1000,0)
end

function Eye_Bursts(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36414,pUnit:GetClosestPlayer())
end

function Eye_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Eye_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20394, 1, "Eye_OnEnterCombat")
RegisterUnitEvent (20394, 2, "Eye_OnLeaveCombat")
RegisterUnitEvent (20394, 4, "Eye_OnDied")