--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ElderThunderLizard_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderThunderLizard_LizardBolt", 8000, 0)
end

function ElderThunderLizard_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function ElderThunderLizard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderThunderLizard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderThunderLizard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4727, 1, "ElderThunderLizard_OnCombat")
RegisterUnitEvent(4727, 2, "ElderThunderLizard_OnLeaveCombat")
RegisterUnitEvent(4727, 3, "ElderThunderLizard_OnKilledTarget")
RegisterUnitEvent(4727, 4, "ElderThunderLizard_OnDied")