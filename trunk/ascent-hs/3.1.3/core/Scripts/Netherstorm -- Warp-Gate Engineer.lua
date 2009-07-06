--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Engineer_OnCombat(Unit, Event)
Unit:RegisterEvent("Engineer_Swipe", 6000, 0)
end

function Engineer_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35147, pUnit:GetMainTank()) 
end

function Engineer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Engineer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Engineer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20404, 1, "Engineer_OnCombat")
RegisterUnitEvent(20404, 2, "Engineer_OnLeaveCombat")
RegisterUnitEvent(20404, 3, "Engineer_OnKilledTarget")
RegisterUnitEvent(20404, 4, "Engineer_OnDied")