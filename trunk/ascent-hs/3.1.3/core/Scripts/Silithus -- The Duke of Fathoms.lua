--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TheDukeofFathoms_OnCombat(Unit, Event)
Unit:RegisterEvent("TheDukeofFathoms_KnockAway", 6000, 0)
Unit:RegisterEvent("TheDukeofFathoms_Knockdown", 8000, 0)
Unit:RegisterEvent("TheDukeofFathoms_Thrash", 5000, 0)
end

function TheDukeofFathoms_KnockAway(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18670, pUnit:GetMainTank()) 
end

function TheDukeofFathoms_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16790, pUnit:GetMainTank()) 
end

function TheDukeofFathoms_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function TheDukeofFathoms_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheDukeofFathoms_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheDukeofFathoms_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15207, 1, "TheDukeofFathoms_OnCombat")
RegisterUnitEvent(15207, 2, "TheDukeofFathoms_OnLeaveCombat")
RegisterUnitEvent(15207, 3, "TheDukeofFathoms_OnKilledTarget")
RegisterUnitEvent(15207, 4, "TheDukeofFathoms_OnDied")