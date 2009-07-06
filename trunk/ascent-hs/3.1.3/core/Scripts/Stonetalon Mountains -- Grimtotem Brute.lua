--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GrimtotemBrute_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemBrute_RushingCharge", 8000, 0)
end

function GrimtotemBrute_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function GrimtotemBrute_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemBrute_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemBrute_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11912, 1, "GrimtotemBrute_OnCombat")
RegisterUnitEvent(11912, 2, "GrimtotemBrute_OnLeaveCombat")
RegisterUnitEvent(11912, 3, "GrimtotemBrute_OnKilledTarget")
RegisterUnitEvent(11912, 4, "GrimtotemBrute_OnDied")