--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TheDukeofZephyrs_OnCombat(Unit, Event)
Unit:RegisterEvent("TheDukeofZephyrs_ForkedLightning", 6000, 0)
Unit:RegisterEvent("TheDukeofZephyrs_LightningCloud", 8000, 0)
Unit:RegisterEvent("TheDukeofZephyrs_WingFlap", 12000, 0)
end

function TheDukeofZephyrs_ForkedLightning(pUnit, Event) 
pUnit:CastSpell(25034) 
end

function TheDukeofZephyrs_LightningCloud(pUnit, Event) 
pUnit:CastSpell(44417) 
end

function TheDukeofZephyrs_WingFlap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12882, pUnit:GetMainTank()) 
end

function TheDukeofZephyrs_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheDukeofZephyrs_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheDukeofZephyrs_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15220, 1, "TheDukeofZephyrs_OnCombat")
RegisterUnitEvent(15220, 2, "TheDukeofZephyrs_OnLeaveCombat")
RegisterUnitEvent(15220, 3, "TheDukeofZephyrs_OnKilledTarget")
RegisterUnitEvent(15220, 4, "TheDukeofZephyrs_OnDied")