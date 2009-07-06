--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodoftheOldGod_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodoftheOldGod_CorruptionoftheOldGod", 7000, 0)
end

function BloodoftheOldGod_CorruptionoftheOldGod(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52564, pUnit:GetMainTank()) 
end

function BloodoftheOldGod_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodoftheOldGod_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodoftheOldGod_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(28854, 1, "BloodoftheOldGod_OnCombat")
RegisterUnitEvent(28854, 2, "BloodoftheOldGod_OnLeaveCombat")
RegisterUnitEvent(28854, 3, "BloodoftheOldGod_OnKilledTarget")
RegisterUnitEvent(28854, 4, "BloodoftheOldGod_OnDied")