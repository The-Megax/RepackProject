--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BristlebackInterloper_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackInterloper_MuscleTear", 10000, 0)
end

function BristlebackInterloper_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function BristlebackInterloper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackInterloper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackInterloper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3232, 1, "BristlebackInterloper_OnCombat")
RegisterUnitEvent(3232, 2, "BristlebackInterloper_OnLeaveCombat")
RegisterUnitEvent(3232, 3, "BristlebackInterloper_OnKilledTarget")
RegisterUnitEvent(3232, 4, "BristlebackInterloper_OnDied")