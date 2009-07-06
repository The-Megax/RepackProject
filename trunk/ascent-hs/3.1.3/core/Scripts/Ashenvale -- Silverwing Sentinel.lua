--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SilverwingSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverwingSentinel_Shoot", 6000, 0)
end

function SilverwingSentinel_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SilverwingSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverwingSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverwingSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12896, 1, "SilverwingSentinel_OnCombat")
RegisterUnitEvent(12896, 2, "SilverwingSentinel_OnLeaveCombat")
RegisterUnitEvent(12896, 3, "SilverwingSentinel_OnKilledTarget")
RegisterUnitEvent(12896, 4, "SilverwingSentinel_OnDied")