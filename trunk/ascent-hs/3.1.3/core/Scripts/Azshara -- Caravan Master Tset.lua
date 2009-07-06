--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CaravanMasterTset_OnCombat(Unit, Event)
Unit:RegisterEvent("CaravanMasterTset_Frostbolt", 7000, 0)
end

function CaravanMasterTset_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function CaravanMasterTset_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaravanMasterTset_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaravanMasterTset_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8409, 1, "CaravanMasterTset_OnCombat")
RegisterUnitEvent(8409, 2, "CaravanMasterTset_OnLeaveCombat")
RegisterUnitEvent(8409, 3, "CaravanMasterTset_OnKilledTarget")
RegisterUnitEvent(8409, 4, "CaravanMasterTset_OnDied")