--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DeathKnightChampion_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathKnightChampion_BloodPresence", 1000, 1)
Unit:RegisterEvent("DeathKnightChampion_PlagueStrike", 8000, 0)
end

function DeathKnightChampion_BloodPresence(pUnit, Event) 
pUnit:CastSpell(50689) 
end

function DeathKnightChampion_PlagueStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50688, pUnit:GetMainTank()) 
end

function DeathKnightChampion_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathKnightChampion_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathKnightChampion_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27288, 1, "DeathKnightChampion_OnCombat")
RegisterUnitEvent(27288, 2, "DeathKnightChampion_OnLeaveCombat")
RegisterUnitEvent(27288, 3, "DeathKnightChampion_OnKilledTarget")
RegisterUnitEvent(27288, 4, "DeathKnightChampion_OnDied")