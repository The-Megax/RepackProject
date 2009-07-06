--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SunscaleScytheclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("SunscaleScytheclaw_Thrash", 6000, 0)
end

function SunscaleScytheclaw_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function SunscaleScytheclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunscaleScytheclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunscaleScytheclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3256, 1, "SunscaleScytheclaw_OnCombat")
RegisterUnitEvent(3256, 2, "SunscaleScytheclaw_OnLeaveCombat")
RegisterUnitEvent(3256, 3, "SunscaleScytheclaw_OnKilledTarget")
RegisterUnitEvent(3256, 4, "SunscaleScytheclaw_OnDied")