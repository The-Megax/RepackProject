--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LingeringHighborne_OnCombat(Unit, Event)
Unit:RegisterEvent("LingeringHighborne_Enfeeble", 8000, 0)
end

function LingeringHighborne_Enfeeble(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11963, pUnit:GetMainTank()) 
end

function LingeringHighborne_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LingeringHighborne_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LingeringHighborne_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7864, 1, "LingeringHighborne_OnCombat")
RegisterUnitEvent(7864, 2, "LingeringHighborne_OnLeaveCombat")
RegisterUnitEvent(7864, 3, "LingeringHighborne_OnKilledTarget")
RegisterUnitEvent(7864, 4, "LingeringHighborne_OnDied")