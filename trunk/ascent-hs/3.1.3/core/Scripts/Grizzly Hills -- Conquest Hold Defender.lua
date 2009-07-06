--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ConquestHoldDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldDefender_HeroicStrike", 5000, 0)
end

function ConquestHoldDefender_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(29426, pUnit:GetMainTank()) 
end

function ConquestHoldDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27748, 1, "ConquestHoldDefender_OnCombat")
RegisterUnitEvent(27748, 2, "ConquestHoldDefender_OnLeaveCombat")
RegisterUnitEvent(27748, 3, "ConquestHoldDefender_OnKilledTarget")
RegisterUnitEvent(27748, 4, "ConquestHoldDefender_OnDied")