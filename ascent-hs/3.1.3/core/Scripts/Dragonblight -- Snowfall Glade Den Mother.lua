--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SnowfallGladeDenMother_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowfallGladeDenMother_Enrage", 10000, 1)
end

function SnowfallGladeDenMother_Enrage(pUnit, Event) 
pUnit:CastSpell(48193) 
end

function SnowfallGladeDenMother_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowfallGladeDenMother_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowfallGladeDenMother_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26199, 1, "SnowfallGladeDenMother_OnCombat")
RegisterUnitEvent(26199, 2, "SnowfallGladeDenMother_OnLeaveCombat")
RegisterUnitEvent(26199, 3, "SnowfallGladeDenMother_OnKilledTarget")
RegisterUnitEvent(26199, 4, "SnowfallGladeDenMother_OnDied")