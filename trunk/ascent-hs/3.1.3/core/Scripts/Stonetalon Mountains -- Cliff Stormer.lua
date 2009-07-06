--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CliffStormer_OnCombat(Unit, Event)
Unit:RegisterEvent("CliffStormer_LizardBolt", 5000, 0)
end

function CliffStormer_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function CliffStormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CliffStormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CliffStormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4008, 1, "CliffStormer_OnCombat")
RegisterUnitEvent(4008, 2, "CliffStormer_OnLeaveCombat")
RegisterUnitEvent(4008, 3, "CliffStormer_OnKilledTarget")
RegisterUnitEvent(4008, 4, "CliffStormer_OnDied")