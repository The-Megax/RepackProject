--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HatefuryShadowstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryShadowstalker_Enrage", 10000, 1)
Unit:RegisterEvent("HatefuryShadowstalker_ExploitWeakness", 11000, 0)
Unit:RegisterEvent("HatefuryShadowstalker_Gouge", 8000, 0)
end

function HatefuryShadowstalker_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryShadowstalker_ExploitWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6595, pUnit:GetMainTank()) 
end

function HatefuryShadowstalker_Gouge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8629, pUnit:GetMainTank()) 
end

function HatefuryShadowstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryShadowstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryShadowstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4674, 1, "HatefuryShadowstalker_OnCombat")
RegisterUnitEvent(4674, 2, "HatefuryShadowstalker_OnLeaveCombat")
RegisterUnitEvent(4674, 3, "HatefuryShadowstalker_OnKilledTarget")
RegisterUnitEvent(4674, 4, "HatefuryShadowstalker_OnDied")