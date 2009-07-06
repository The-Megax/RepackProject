--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Hetaera_OnCombat(Unit, Event)
Unit:RegisterEvent("Hetaera_InfectedBite", 8000, 0)
end

function Hetaera_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12542, pUnit:GetMainTank()) 
end

function Hetaera_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function Hetaera_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Hetaera_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Hetaera_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6140, 1, "Hetaera_OnCombat")
RegisterUnitEvent(6140, 2, "Hetaera_OnLeaveCombat")
RegisterUnitEvent(6140, 3, "Hetaera_OnKilledTarget")
RegisterUnitEvent(6140, 4, "Hetaera_OnDied")