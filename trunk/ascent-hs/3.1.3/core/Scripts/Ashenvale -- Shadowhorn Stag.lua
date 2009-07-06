--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ShadowhornStag_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadowhornStag_ShadowhornCharge", 8000, 0)
end

function ShadowhornStag_ShadowhornCharge(pUnit, Event) 
pUnit:CastSpell(6921) 
end

function ShadowhornStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadowhornStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadowhornStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3817, 1, "ShadowhornStag_OnCombat")
RegisterUnitEvent(3817, 2, "ShadowhornStag_OnLeaveCombat")
RegisterUnitEvent(3817, 3, "ShadowhornStag_OnKilledTarget")
RegisterUnitEvent(3817, 4, "ShadowhornStag_OnDied")