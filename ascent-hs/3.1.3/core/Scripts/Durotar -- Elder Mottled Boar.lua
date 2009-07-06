--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ElderMottledBoar_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderMottledBoar_BoarCharge", 6000, 0)
end

function ElderMottledBoar_BoarCharge(pUnit, Event) 
pUnit:CastSpell(3385) 
end

function ElderMottledBoar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderMottledBoar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderMottledBoar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3100, 1, "ElderMottledBoar_OnCombat")
RegisterUnitEvent(3100, 2, "ElderMottledBoar_OnLeaveCombat")
RegisterUnitEvent(3100, 3, "ElderMottledBoar_OnKilledTarget")
RegisterUnitEvent(3100, 4, "ElderMottledBoar_OnDied")