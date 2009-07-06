--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Brokespear_OnCombat(Unit, Event)
Unit:RegisterEvent("Brokespear_SlowingPoison", 15000, 0)
Unit:RegisterEvent("Brokespear_Throw", 5000, 0)
end

function Brokespear_SlowingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7992, pUnit:GetMainTank()) 
end

function Brokespear_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function Brokespear_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Brokespear_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Brokespear_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5838, 1, "Brokespear_OnCombat")
RegisterUnitEvent(5838, 2, "Brokespear_OnLeaveCombat")
RegisterUnitEvent(5838, 3, "Brokespear_OnKilledTarget")
RegisterUnitEvent(5838, 4, "Brokespear_OnDied")