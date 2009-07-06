--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function TheramoreMarine_OnCombat(Unit, Event)
Unit:RegisterEvent("TheramoreMarine_DefensiveStance", 2000, 1)
Unit:RegisterEvent("TheramoreMarine_Disarm", 6000, 0)
Unit:RegisterEvent("TheramoreMarine_ShieldBash", 8000, 0)
end

function TheramoreMarine_DefensiveStance(pUnit, Event) 
pUnit:CastSpell(7164) 
end

function TheramoreMarine_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function TheramoreMarine_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(72, pUnit:GetMainTank()) 
end

function TheramoreMarine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheramoreMarine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheramoreMarine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3385, 1, "TheramoreMarine_OnCombat")
RegisterUnitEvent(3385, 2, "TheramoreMarine_OnLeaveCombat")
RegisterUnitEvent(3385, 3, "TheramoreMarine_OnKilledTarget")
RegisterUnitEvent(3385, 4, "TheramoreMarine_OnDied")