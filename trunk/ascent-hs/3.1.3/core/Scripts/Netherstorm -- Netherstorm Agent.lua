--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Agent_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Agent_Shoot",1000,0)
end

function Agent_Shoot(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36246,pUnit:GetClosestPlayer())
end

function Agent_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Agent_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent (19541, 1, "Agent_OnEnterCombat")
RegisterUnitEvent (19541, 2, "Agent_OnLeaveCombat")
RegisterUnitEvent (19541, 4, "Agent_OnDied")