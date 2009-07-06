--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KulTirasMarine_OnCombat(Unit, Event)
Unit:RegisterEvent("KulTirasMarine_ShieldBash", 6000, 0)
end

function KulTirasMarine_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11972, pUnit:GetMainTank()) 
end

function KulTirasMarine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KulTirasMarine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KulTirasMarine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3129, 1, "KulTirasMarine_OnCombat")
RegisterUnitEvent(3129, 2, "KulTirasMarine_OnLeaveCombat")
RegisterUnitEvent(3129, 3, "KulTirasMarine_OnKilledTarget")
RegisterUnitEvent(3129, 4, "KulTirasMarine_OnDied")