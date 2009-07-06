--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CultPlaguebringer_OnCombat(Unit, Event)
Unit:RegisterEvent("CultPlaguebringer_InjectPlague", 8000, 0)
end

function CultPlaguebringer_InjectPlague(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50356, pUnit:GetMainTank()) 
end

function CultPlaguebringer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CultPlaguebringer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CultPlaguebringer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24957, 1, "CultPlaguebringer_OnCombat")
RegisterUnitEvent(24957, 2, "CultPlaguebringer_OnLeaveCombat")
RegisterUnitEvent(24957, 3, "CultPlaguebringer_OnKilledTarget")
RegisterUnitEvent(24957, 4, "CultPlaguebringer_OnDied")