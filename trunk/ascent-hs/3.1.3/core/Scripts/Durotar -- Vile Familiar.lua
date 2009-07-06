--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VileFamiliar_OnCombat(Unit, Event)
Unit:RegisterEvent("VileFamiliar_Fireball", 8000, 0)
end

function VileFamiliar_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11921, pUnit:GetMainTank()) 
end

function VileFamiliar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VileFamiliar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VileFamiliar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3101, 1, "VileFamiliar_OnCombat")
RegisterUnitEvent(3101, 2, "VileFamiliar_OnLeaveCombat")
RegisterUnitEvent(3101, 3, "VileFamiliar_OnKilledTarget")
RegisterUnitEvent(3101, 4, "VileFamiliar_OnDied")