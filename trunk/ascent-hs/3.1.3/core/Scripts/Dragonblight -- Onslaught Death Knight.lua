--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OnslaughtDeathKnight_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtDeathKnight_BloodPresence", 1000, 1)
Unit:RegisterEvent("OnslaughtDeathKnight_PlagueStrike", 8000, 0)
end

function OnslaughtDeathKnight_BloodPresence(pUnit, Event) 
pUnit:CastSpell(50689) 
end

function OnslaughtDeathKnight_PlagueStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50688, pUnit:GetMainTank()) 
end

function OnslaughtDeathKnight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtDeathKnight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtDeathKnight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27367, 1, "OnslaughtDeathKnight_OnCombat")
RegisterUnitEvent(27367, 2, "OnslaughtDeathKnight_OnLeaveCombat")
RegisterUnitEvent(27367, 3, "OnslaughtDeathKnight_OnKilledTarget")
RegisterUnitEvent(27367, 4, "OnslaughtDeathKnight_OnDied")