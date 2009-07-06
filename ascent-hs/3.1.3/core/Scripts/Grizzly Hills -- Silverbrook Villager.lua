--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SilverbrookVillager_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookVillager_Chop", 5000, 0)
end

function SilverbrookVillager_Chop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43410, pUnit:GetMainTank()) 
end

function SilverbrookVillager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookVillager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookVillager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26708, 1, "SilverbrookVillager_OnCombat")
RegisterUnitEvent(26708, 2, "SilverbrookVillager_OnLeaveCombat")
RegisterUnitEvent(26708, 3, "SilverbrookVillager_OnKilledTarget")
RegisterUnitEvent(26708, 4, "SilverbrookVillager_OnDied")