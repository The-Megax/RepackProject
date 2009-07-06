--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BleakheartShadowstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("BleakheartShadowstalker_ShadowstalkerSlash", 8000, 0)
end

function BleakheartShadowstalker_ShadowstalkerSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6927, pUnit:GetMainTank()) 
end

function BleakheartShadowstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BleakheartShadowstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BleakheartShadowstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3770, 1, "BleakheartShadowstalker_OnCombat")
RegisterUnitEvent(3770, 2, "BleakheartShadowstalker_OnLeaveCombat")
RegisterUnitEvent(3770, 3, "BleakheartShadowstalker_OnKilledTarget")
RegisterUnitEvent(3770, 4, "BleakheartShadowstalker_OnDied")