--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GlasshidePetrifier_OnCombat(Unit, Event)
Unit:RegisterEvent("GlasshidePetrifier_CrystalGaze", 15000, 0)
end

function GlasshidePetrifier_CrystalGaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11020, pUnit:GetMainTank()) 
end

function GlasshidePetrifier_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlasshidePetrifier_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlasshidePetrifier_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5421, 1, "GlasshidePetrifier_OnCombat")
RegisterUnitEvent(5421, 2, "GlasshidePetrifier_OnLeaveCombat")
RegisterUnitEvent(5421, 3, "GlasshidePetrifier_OnKilledTarget")
RegisterUnitEvent(5421, 4, "GlasshidePetrifier_OnDied")