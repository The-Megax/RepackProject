--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ElderShadowhornStag_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderShadowhornStag_ShadowhornCharge", 8000, 0)
end

function ElderShadowhornStag_ShadowhornCharge(pUnit, Event) 
pUnit:CastSpell(6921) 
end

function ElderShadowhornStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderShadowhornStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderShadowhornStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3818, 1, "ElderShadowhornStag_OnCombat")
RegisterUnitEvent(3818, 2, "ElderShadowhornStag_OnLeaveCombat")
RegisterUnitEvent(3818, 3, "ElderShadowhornStag_OnKilledTarget")
RegisterUnitEvent(3818, 4, "ElderShadowhornStag_OnDied")