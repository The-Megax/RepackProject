--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ArnakGrimtotem_OnCombat(Unit, Event)
Unit:RegisterEvent("ArnakGrimtotem_Rend", 10000, 0)
Unit:RegisterEvent("ArnakGrimtotem_Uppercut", 6000, 0)
end

function ArnakGrimtotem_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function ArnakGrimtotem_Uppercut(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank()) 
end

function ArnakGrimtotem_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArnakGrimtotem_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArnakGrimtotem_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10896, 1, "ArnakGrimtotem_OnCombat")
RegisterUnitEvent(10896, 2, "ArnakGrimtotem_OnLeaveCombat")
RegisterUnitEvent(10896, 3, "ArnakGrimtotem_OnKilledTarget")
RegisterUnitEvent(10896, 4, "ArnakGrimtotem_OnDied")