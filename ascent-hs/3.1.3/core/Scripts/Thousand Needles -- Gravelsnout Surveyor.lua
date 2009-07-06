--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GravelsnoutSurveyor_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutSurveyor_Frostbolt", 6000, 0)
end

function GravelsnoutSurveyor_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20806, pUnit:GetMainTank()) 
end

function GravelsnoutSurveyor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutSurveyor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutSurveyor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4116, 1, "GravelsnoutSurveyor_OnCombat")
RegisterUnitEvent(4116, 2, "GravelsnoutSurveyor_OnLeaveCombat")
RegisterUnitEvent(4116, 3, "GravelsnoutSurveyor_OnKilledTarget")
RegisterUnitEvent(4116, 4, "GravelsnoutSurveyor_OnDied")