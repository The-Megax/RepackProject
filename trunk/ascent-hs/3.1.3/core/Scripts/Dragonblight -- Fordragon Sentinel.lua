--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FordragonSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("FordragonSentinel_GlaiveThrow", 8000, 0)
end

function FordragonSentinel_GlaiveThrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49481, pUnit:GetMainTank()) 
end

function FordragonSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FordragonSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FordragonSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27576, 1, "FordragonSentinel_OnCombat")
RegisterUnitEvent(27576, 2, "FordragonSentinel_OnLeaveCombat")
RegisterUnitEvent(27576, 3, "FordragonSentinel_OnKilledTarget")
RegisterUnitEvent(27576, 4, "FordragonSentinel_OnDied")