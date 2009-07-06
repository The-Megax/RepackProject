--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AnubarBlightbeast_OnCombat(Unit, Event)
Unit:RegisterEvent("AnubarBlightbeast_BlightedShriek", 8000, 0)
Unit:RegisterEvent("AnubarBlightbeast_PoisonBolt", 6000, 0)
end

function AnubarBlightbeast_BlightedShriek(pUnit, Event) 
pUnit:CastSpell(47443) 
end

function AnubarBlightbeast_PoisonBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21971, pUnit:GetMainTank()) 
end

function AnubarBlightbeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnubarBlightbeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnubarBlightbeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26607, 1, "AnubarBlightbeast_OnCombat")
RegisterUnitEvent(26607, 2, "AnubarBlightbeast_OnLeaveCombat")
RegisterUnitEvent(26607, 3, "AnubarBlightbeast_OnKilledTarget")
RegisterUnitEvent(26607, 4, "AnubarBlightbeast_OnDied")