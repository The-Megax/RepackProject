--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BleakheartHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("BleakheartHellcaller_SummonImp", 1000, 0)
end

function BleakheartHellcaller_SummonImp(pUnit, Event) 
pUnit:CastSpell(11939) 
end

function BleakheartHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BleakheartHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BleakheartHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3771, 1, "BleakheartHellcaller_OnCombat")
RegisterUnitEvent(3771, 2, "BleakheartHellcaller_OnLeaveCombat")
RegisterUnitEvent(3771, 3, "BleakheartHellcaller_OnKilledTarget")
RegisterUnitEvent(3771, 4, "BleakheartHellcaller_OnDied")