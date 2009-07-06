--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GalakFlameGuard_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakFlameGuard_DemoralizingShout", 10000, 0)
end

function GalakFlameGuard_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function GalakFlameGuard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakFlameGuard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakFlameGuard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7404, 1, "GalakFlameGuard_OnCombat")
RegisterUnitEvent(7404, 2, "GalakFlameGuard_OnLeaveCombat")
RegisterUnitEvent(7404, 3, "GalakFlameGuard_OnKilledTarget")
RegisterUnitEvent(7404, 4, "GalakFlameGuard_OnDied")