--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ThunderLizard_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderLizard_LizardBolt", 5000, 0)
end

function ThunderLizard_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function ThunderLizard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderLizard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderLizard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3130, 1, "ThunderLizard_OnCombat")
RegisterUnitEvent(3130, 2, "ThunderLizard_OnLeaveCombat")
RegisterUnitEvent(3130, 3, "ThunderLizard_OnKilledTarget")
RegisterUnitEvent(3130, 4, "ThunderLizard_OnDied")