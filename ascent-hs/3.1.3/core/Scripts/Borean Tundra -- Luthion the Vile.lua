--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LuthiontheVile_OnCombat(Unit, Event)
Unit:RegisterEvent("LuthiontheVile_BloodPresence", 4000, 1)
Unit:RegisterEvent("LuthiontheVile_PlagueStrike", 9000, 0)
end

function LuthiontheVile_BloodPresence(pUnit, Event) 
pUnit:CastSpell(50689) 
end

function LuthiontheVile_PlagueStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50688, pUnit:GetMainTank()) 
end

function LuthiontheVile_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LuthiontheVile_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LuthiontheVile_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27860, 1, "LuthiontheVile_OnCombat")
RegisterUnitEvent(27860, 2, "LuthiontheVile_OnLeaveCombat")
RegisterUnitEvent(27860, 3, "LuthiontheVile_OnKilledTarget")
RegisterUnitEvent(27860, 4, "LuthiontheVile_OnDied")