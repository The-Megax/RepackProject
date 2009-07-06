--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ScourgeTechnician_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgeTechnician_Lobotomize", 6000, 0)
end

function ScourgeTechnician_Lobotomize(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51316, pUnit:GetMainTank()) 
end

function ScourgeTechnician_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgeTechnician_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgeTechnician_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27799, 1, "ScourgeTechnician_OnCombat")
RegisterUnitEvent(27799, 2, "ScourgeTechnician_OnLeaveCombat")
RegisterUnitEvent(27799, 3, "ScourgeTechnician_OnKilledTarget")
RegisterUnitEvent(27799, 4, "ScourgeTechnician_OnDied")