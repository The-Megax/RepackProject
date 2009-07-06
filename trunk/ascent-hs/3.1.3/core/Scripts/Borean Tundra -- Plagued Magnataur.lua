--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function PlaguedMagnataur_OnCombat(Unit, Event)
Unit:RegisterEvent("PlaguedMagnataur_PlagueCloud", 2000, 2)
end

function PlaguedMagnataur_PlagueCloud(pUnit, Event) 
pUnit:CastSpell(50366) 
end

function PlaguedMagnataur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PlaguedMagnataur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PlaguedMagnataur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25615, 1, "PlaguedMagnataur_OnCombat")
RegisterUnitEvent(25615, 2, "PlaguedMagnataur_OnLeaveCombat")
RegisterUnitEvent(25615, 3, "PlaguedMagnataur_OnKilledTarget")
RegisterUnitEvent(25615, 4, "PlaguedMagnataur_OnDied")