--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DurielMoonfire_OnCombat(Unit, Event)
Unit:RegisterEvent("DurielMoonfire_Knockdown", 8000, 0)
Unit:RegisterEvent("DurielMoonfire_PierceArmor", 6000, 0)
end

function DurielMoonfire_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11428, pUnit:GetMainTank()) 
end

function DurielMoonfire_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12097, pUnit:GetMainTank()) 
end

function DurielMoonfire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DurielMoonfire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DurielMoonfire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12860, 1, "DurielMoonfire_OnCombat")
RegisterUnitEvent(12860, 2, "DurielMoonfire_OnLeaveCombat")
RegisterUnitEvent(12860, 3, "DurielMoonfire_OnKilledTarget")
RegisterUnitEvent(12860, 4, "DurielMoonfire_OnDied")