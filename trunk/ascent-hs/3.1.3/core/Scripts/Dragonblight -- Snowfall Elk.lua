--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SnowfallElk_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowfallElk_Puncture", 5000, 0)
end

function SnowfallElk_Puncture(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15976, pUnit:GetMainTank()) 
end

function SnowfallElk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowfallElk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowfallElk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26615, 1, "SnowfallElk_OnCombat")
RegisterUnitEvent(26615, 2, "SnowfallElk_OnLeaveCombat")
RegisterUnitEvent(26615, 3, "SnowfallElk_OnKilledTarget")
RegisterUnitEvent(26615, 4, "SnowfallElk_OnDied")