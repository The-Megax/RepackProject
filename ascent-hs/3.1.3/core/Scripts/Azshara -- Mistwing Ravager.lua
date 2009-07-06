--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MistwingRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("MistwingRavager_PoisonedShot", 10000, 0)
end

function MistwingRavager_PoisonedShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8806, pUnit:GetMainTank()) 
end

function MistwingRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MistwingRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MistwingRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8764, 1, "MistwingRavager_OnCombat")
RegisterUnitEvent(8764, 2, "MistwingRavager_OnLeaveCombat")
RegisterUnitEvent(8764, 3, "MistwingRavager_OnKilledTarget")
RegisterUnitEvent(8764, 4, "MistwingRavager_OnDied")