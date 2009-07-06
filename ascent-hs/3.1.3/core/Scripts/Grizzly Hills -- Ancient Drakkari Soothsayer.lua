--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AncientDrakkariSoothsayer_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientDrakkariSoothsayer_HolySmite", 5000, 0)
Unit:RegisterEvent("AncientDrakkariSoothsayer_ProphecyofBlood", 9000, 0)
end

function AncientDrakkariSoothsayer_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9734, pUnit:GetMainTank()) 
end

function AncientDrakkariSoothsayer_ProphecyofBlood(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52468, pUnit:GetMainTank()) 
end

function AncientDrakkariSoothsayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientDrakkariSoothsayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientDrakkariSoothsayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26812, 1, "AncientDrakkariSoothsayer_OnCombat")
RegisterUnitEvent(26812, 2, "AncientDrakkariSoothsayer_OnLeaveCombat")
RegisterUnitEvent(26812, 3, "AncientDrakkariSoothsayer_OnKilledTarget")
RegisterUnitEvent(26812, 4, "AncientDrakkariSoothsayer_OnDied")