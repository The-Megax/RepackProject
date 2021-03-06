--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Deathclasp_OnCombat(Unit, Event)
Unit:RegisterEvent("Deathclasp_KnockAway", 6000, 0)
Unit:RegisterEvent("Deathclasp_ParalyzingPoison", 12000, 0)
end

function Deathclasp_KnockAway(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18670, pUnit:GetMainTank()) 
end

function Deathclasp_ParalyzingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3609, pUnit:GetRandomPlayer(0)) 
end

function Deathclasp_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Deathclasp_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Deathclasp_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15196, 1, "Deathclasp_OnCombat")
RegisterUnitEvent(15196, 2, "Deathclasp_OnLeaveCombat")
RegisterUnitEvent(15196, 3, "Deathclasp_OnKilledTarget")
RegisterUnitEvent(15196, 4, "Deathclasp_OnDied")