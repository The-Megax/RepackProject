--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AzzeretheSkyblade_OnCombat(Unit, Event)
Unit:RegisterEvent("AzzeretheSkyblade_Fireball", 8000, 0)
Unit:RegisterEvent("AzzeretheSkyblade_FlameSpike", 9000, 0)
end

function AzzeretheSkyblade_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13375, pUnit:GetMainTank()) 
end

function AzzeretheSkyblade_FlameSpike(pUnit, Event) 
pUnit:CastSpell(6725) 
end

function AzzeretheSkyblade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AzzeretheSkyblade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AzzeretheSkyblade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5834, 1, "AzzeretheSkyblade_OnCombat")
RegisterUnitEvent(5834, 2, "AzzeretheSkyblade_OnLeaveCombat")
RegisterUnitEvent(5834, 3, "AzzeretheSkyblade_OnKilledTarget")
RegisterUnitEvent(5834, 4, "AzzeretheSkyblade_OnDied")