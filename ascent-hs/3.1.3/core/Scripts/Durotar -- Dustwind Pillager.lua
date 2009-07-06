--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DustwindPillager_OnCombat(Unit, Event)
Unit:RegisterEvent("DustwindPillager_RendFlesh", 8000, 0)
end

function DustwindPillager_RendFlesh(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3147, pUnit:GetMainTank()) 
end

function DustwindPillager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DustwindPillager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DustwindPillager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3116, 1, "DustwindPillager_OnCombat")
RegisterUnitEvent(3116, 2, "DustwindPillager_OnLeaveCombat")
RegisterUnitEvent(3116, 3, "DustwindPillager_OnKilledTarget")
RegisterUnitEvent(3116, 4, "DustwindPillager_OnDied")