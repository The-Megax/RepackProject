--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GalakMauler_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakMauler_DemoralizingShout", 10000, 0)
end

function GalakMauler_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function GalakMauler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakMauler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakMauler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4095, 1, "GalakMauler_OnCombat")
RegisterUnitEvent(4095, 2, "GalakMauler_OnLeaveCombat")
RegisterUnitEvent(4095, 3, "GalakMauler_OnKilledTarget")
RegisterUnitEvent(4095, 4, "GalakMauler_OnDied")