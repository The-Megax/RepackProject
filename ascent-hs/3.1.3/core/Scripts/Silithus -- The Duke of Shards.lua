--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TheDukeofShards_OnCombat(Unit, Event)
Unit:RegisterEvent("TheDukeofShards_GroundTremor", 8000, 0)
Unit:RegisterEvent("TheDukeofShards_Strike", 5000, 0)
Unit:RegisterEvent("TheDukeofShards_Thunderclap", 11000, 0)
end

function TheDukeofShards_GroundTremor(pUnit, Event) 
pUnit:CastSpell(6524) 
end

function TheDukeofShards_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13446, pUnit:GetMainTank()) 
end

function TheDukeofShards_Thunderclap(pUnit, Event) 
pUnit:CastSpell(8078) 
end

function TheDukeofShards_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheDukeofShards_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheDukeofShards_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15208, 1, "TheDukeofShards_OnCombat")
RegisterUnitEvent(15208, 2, "TheDukeofShards_OnLeaveCombat")
RegisterUnitEvent(15208, 3, "TheDukeofShards_OnKilledTarget")
RegisterUnitEvent(15208, 4, "TheDukeofShards_OnDied")