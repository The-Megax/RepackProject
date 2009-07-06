--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DragonboneCondor_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonboneCondor_EvasiveManeuver", 6000, 0)
end

function DragonboneCondor_EvasiveManeuver(pUnit, Event) 
pUnit:CastSpell(51946) 
end

function DragonboneCondor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonboneCondor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonboneCondor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26483, 1, "DragonboneCondor_OnCombat")
RegisterUnitEvent(26483, 2, "DragonboneCondor_OnLeaveCombat")
RegisterUnitEvent(26483, 3, "DragonboneCondor_OnKilledTarget")
RegisterUnitEvent(26483, 4, "DragonboneCondor_OnDied")