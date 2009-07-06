--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AmbershardCrusher_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbershardCrusher_CrushArmor", 5000, 1)
end

function AmbershardCrusher_CrushArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21055, pUnit:GetMainTank()) 
end

function AmbershardCrusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbershardCrusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbershardCrusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11781, 1, "AmbershardCrusher_OnCombat")
RegisterUnitEvent(11781, 2, "AmbershardCrusher_OnLeaveCombat")
RegisterUnitEvent(11781, 3, "AmbershardCrusher_OnKilledTarget")
RegisterUnitEvent(11781, 4, "AmbershardCrusher_OnDied")