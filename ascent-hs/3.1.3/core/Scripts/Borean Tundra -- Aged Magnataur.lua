--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AgedMagnataur_OnCombat(Unit, Event)
Unit:RegisterEvent("AgedMagnataur_PlagueCloud", 2000, 2)
end

function AgedMagnataur_PlagueCloud(pUnit, Event) 
pUnit:CastSpell(50366) 
end

function AgedMagnataur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AgedMagnataur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AgedMagnataur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24954, 1, "AgedMagnataur_OnCombat")
RegisterUnitEvent(24954, 2, "AgedMagnataur_OnLeaveCombat")
RegisterUnitEvent(24954, 3, "AgedMagnataur_OnKilledTarget")
RegisterUnitEvent(24954, 4, "AgedMagnataur_OnDied")