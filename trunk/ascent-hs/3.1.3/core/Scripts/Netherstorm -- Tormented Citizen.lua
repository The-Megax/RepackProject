--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Citizen_OnCombat(Unit, Event)
Unit:RegisterEvent("Citizen_Curse", 1000, 1)
Unit:RegisterEvent("Citizen_Bolt", 6000, 0)
Unit:RegisterEvent("Citizen_Immune", 6000, 0)
end

function Citizen_Curse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11980, pUnit:GetMainTank()) 
end

function Citizen_Bolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function Citizen_Immune(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36153, pUnit:GetMainTank()) 
end

function Citizen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Citizen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Citizen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21065, 1, "Citizen_OnCombat")
RegisterUnitEvent(21065, 2, "Citizen_OnLeaveCombat")
RegisterUnitEvent(21065, 3, "Citizen_OnKilledTarget")
RegisterUnitEvent(21065, 4, "Citizen_OnDied")