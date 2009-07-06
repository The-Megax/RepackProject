--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Terokk_OnCombat(Unit, Event)
Unit:RegisterEvent("Terokk_Charge", 1000, 1)
Unit:RegisterEvent("Terokk_Burst", 6000, 0)
end

function Terokk_Charge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(24193, pUnit:GetMainTank()) 
end

function Terokk_Burst(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39068, pUnit:GetMainTank()) 
end

function Terokk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Terokk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Terokk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(22375, 1, "Terokk_OnCombat")
RegisterUnitEvent(22375, 2, "Terokk_OnLeaveCombat")
RegisterUnitEvent(22375, 3, "Terokk_OnKilledTarget")
RegisterUnitEvent(22375, 4, "Terokk_OnDied")