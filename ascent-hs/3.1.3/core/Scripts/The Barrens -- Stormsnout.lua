--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Stormsnout_OnCombat(Unit, Event)
Unit:RegisterEvent("Stormsnout_LizardBolt", 6000, 0)
end

function Stormsnout_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function Stormsnout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Stormsnout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Stormsnout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3240, 1, "Stormsnout_OnCombat")
RegisterUnitEvent(3240, 2, "Stormsnout_OnLeaveCombat")
RegisterUnitEvent(3240, 3, "Stormsnout_OnKilledTarget")
RegisterUnitEvent(3240, 4, "Stormsnout_OnDied")