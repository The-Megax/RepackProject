--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function LightningHide_OnCombat(Unit, Event)
Unit:RegisterEvent("LightningHide_LizardBolt", 5000, 0)
end

function LightningHide_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function LightningHide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LightningHide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LightningHide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3131, 1, "LightningHide_OnCombat")
RegisterUnitEvent(3131, 2, "LightningHide_OnLeaveCombat")
RegisterUnitEvent(3131, 3, "LightningHide_OnKilledTarget")
RegisterUnitEvent(3131, 4, "LightningHide_OnDied")