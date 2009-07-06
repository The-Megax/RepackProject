--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HoaryTemplar_OnCombat(Unit, Event)
Unit:RegisterEvent("HoaryTemplar_LightningShield", 6000, 0)
end

function HoaryTemplar_LightningShield(pUnit, Event) 
pUnit:CastSpell(19514) 
end

function HoaryTemplar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HoaryTemplar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HoaryTemplar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15212, 1, "HoaryTemplar_OnCombat")
RegisterUnitEvent(15212, 2, "HoaryTemplar_OnLeaveCombat")
RegisterUnitEvent(15212, 3, "HoaryTemplar_OnKilledTarget")
RegisterUnitEvent(15212, 4, "HoaryTemplar_OnDied")