--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GeopriestGukkrok_OnCombat(Unit, Event)
Unit:RegisterEvent("GeopriestGukkrok_Heal", 15000, 0)
Unit:RegisterEvent("GeopriestGukkrok_PowerWordShield", 6000, 1)
Unit:RegisterEvent("GeopriestGukkrok_Renew", 10000, 0)
end

function GeopriestGukkrok_Heal(pUnit, Event) 
pUnit:CastSpell(2054) 
end

function GeopriestGukkrok_PowerWordShield(pUnit, Event) 
pUnit:CastSpell(600) 
end

function GeopriestGukkrok_Renew(pUnit, Event) 
pUnit:CastSpell(6075) 
end

function GeopriestGukkrok_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeopriestGukkrok_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeopriestGukkrok_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5863, 1, "GeopriestGukkrok_OnCombat")
RegisterUnitEvent(5863, 2, "GeopriestGukkrok_OnLeaveCombat")
RegisterUnitEvent(5863, 3, "GeopriestGukkrok_OnKilledTarget")
RegisterUnitEvent(5863, 4, "GeopriestGukkrok_OnDied")