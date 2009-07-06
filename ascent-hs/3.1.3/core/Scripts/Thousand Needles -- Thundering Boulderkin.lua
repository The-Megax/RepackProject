--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ThunderingBoulderkin_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderingBoulderkin_GroundTremor", 10000, 0)
end

function ThunderingBoulderkin_GroundTremor(pUnit, Event) 
pUnit:CastSpell(6524) 
end

function ThunderingBoulderkin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderingBoulderkin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderingBoulderkin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4120, 1, "ThunderingBoulderkin_OnCombat")
RegisterUnitEvent(4120, 2, "ThunderingBoulderkin_OnLeaveCombat")
RegisterUnitEvent(4120, 3, "ThunderingBoulderkin_OnKilledTarget")
RegisterUnitEvent(4120, 4, "ThunderingBoulderkin_OnDied")