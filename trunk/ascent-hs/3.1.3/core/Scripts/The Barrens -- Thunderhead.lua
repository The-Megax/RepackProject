--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Thunderhead_OnCombat(Unit, Event)
Unit:RegisterEvent("Thunderhead_LizardBolt", 6000, 0)
end

function Thunderhead_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function Thunderhead_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Thunderhead_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Thunderhead_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3239, 1, "Thunderhead_OnCombat")
RegisterUnitEvent(3239, 2, "Thunderhead_OnLeaveCombat")
RegisterUnitEvent(3239, 3, "Thunderhead_OnKilledTarget")
RegisterUnitEvent(3239, 4, "Thunderhead_OnDied")