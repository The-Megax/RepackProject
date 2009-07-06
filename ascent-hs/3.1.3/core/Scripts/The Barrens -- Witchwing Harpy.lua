--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WitchwingHarpy_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingHarpy_CurseofMending", 4000, 1)
end

function WitchwingHarpy_CurseofMending(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7098, pUnit:GetMainTank()) 
end

function WitchwingHarpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingHarpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingHarpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3276, 1, "WitchwingHarpy_OnCombat")
RegisterUnitEvent(3276, 2, "WitchwingHarpy_OnLeaveCombat")
RegisterUnitEvent(3276, 3, "WitchwingHarpy_OnKilledTarget")
RegisterUnitEvent(3276, 4, "WitchwingHarpy_OnDied")