--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GrimtotemMercenary_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemMercenary_Pummel", 10000, 0)
Unit:RegisterEvent("GrimtotemMercenary_Throw", 6000, 0)
end

function GrimtotemMercenary_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function GrimtotemMercenary_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15607, pUnit:GetMainTank()) 
end

function GrimtotemMercenary_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemMercenary_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemMercenary_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11911, 1, "GrimtotemMercenary_OnCombat")
RegisterUnitEvent(11911, 2, "GrimtotemMercenary_OnLeaveCombat")
RegisterUnitEvent(11911, 3, "GrimtotemMercenary_OnKilledTarget")
RegisterUnitEvent(11911, 4, "GrimtotemMercenary_OnDied")