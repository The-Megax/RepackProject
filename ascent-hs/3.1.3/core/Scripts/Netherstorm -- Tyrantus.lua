--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Tyrantus_OnCombat(Unit, Event)
Unit:RegisterEvent("Tyrantus_Wood", 7000, 0)
Unit:RegisterEvent("Tyrantus_Fear", 6000, 0)
end

function Tyrantus_Wood(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35321, pUnit:GetMainTank()) 
end

function Tyrantus_Fear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36629, pUnit:GetClosestPlayer()) 
end

function Tyrantus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tyrantus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tyrantus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20931, 1, "Tyrantus_OnCombat")
RegisterUnitEvent(20931, 2, "Tyrantus_OnLeaveCombat")
RegisterUnitEvent(20931, 3, "Tyrantus_OnKilledTarget")
RegisterUnitEvent(20931, 4, "Tyrantus_OnDied")