--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GlasshideGazer_OnCombat(Unit, Event)
Unit:RegisterEvent("GlasshideGazer_CrystalGaze", 10000, 0)
end

function GlasshideGazer_CrystalGaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3635, pUnit:GetMainTank()) 
end

function GlasshideGazer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlasshideGazer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlasshideGazer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5420, 1, "GlasshideGazer_OnCombat")
RegisterUnitEvent(5420, 2, "GlasshideGazer_OnLeaveCombat")
RegisterUnitEvent(5420, 3, "GlasshideGazer_OnKilledTarget")
RegisterUnitEvent(5420, 4, "GlasshideGazer_OnDied")