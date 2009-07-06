--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LeprousServant_OnCombat(Unit, Event)
Unit:RegisterEvent("LeprousServant_LeprousTouch", 8000, 0)
end

function LeprousServant_LeprousTouch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51315, pUnit:GetMainTank()) 
end

function LeprousServant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LeprousServant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LeprousServant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27800, 1, "LeprousServant_OnCombat")
RegisterUnitEvent(27800, 2, "LeprousServant_OnLeaveCombat")
RegisterUnitEvent(27800, 3, "LeprousServant_OnKilledTarget")
RegisterUnitEvent(27800, 4, "LeprousServant_OnDied")