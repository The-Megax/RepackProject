--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DireMottledBoar_OnCombat(Unit, Event)
Unit:RegisterEvent("DireMottledBoar_BoarCharge", 6000, 0)
end

function DireMottledBoar_BoarCharge(pUnit, Event) 
pUnit:CastSpell(3385) 
end

function DireMottledBoar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DireMottledBoar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DireMottledBoar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3099, 1, "DireMottledBoar_OnCombat")
RegisterUnitEvent(3099, 2, "DireMottledBoar_OnLeaveCombat")
RegisterUnitEvent(3099, 3, "DireMottledBoar_OnKilledTarget")
RegisterUnitEvent(3099, 4, "DireMottledBoar_OnDied")