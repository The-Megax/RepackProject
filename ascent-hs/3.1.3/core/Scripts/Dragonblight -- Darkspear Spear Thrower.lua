--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DarkspearSpearThrower_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkspearSpearThrower_Net", 10000, 0)
Unit:RegisterEvent("DarkspearSpearThrower_Throw", 5000, 0)
end

function DarkspearSpearThrower_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function DarkspearSpearThrower_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38556, pUnit:GetMainTank()) 
end

function DarkspearSpearThrower_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkspearSpearThrower_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkspearSpearThrower_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27560, 1, "DarkspearSpearThrower_OnCombat")
RegisterUnitEvent(27560, 2, "DarkspearSpearThrower_OnLeaveCombat")
RegisterUnitEvent(27560, 3, "DarkspearSpearThrower_OnKilledTarget")
RegisterUnitEvent(27560, 4, "DarkspearSpearThrower_OnDied")