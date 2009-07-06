--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DunemaulOgre_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulOgre_BattleStance", 1000, 1)
Unit:RegisterEvent("DunemaulOgre_HeroicStrike", 4000, 0)
end

function DunemaulOgre_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function DunemaulOgre_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function DunemaulOgre_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulOgre_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulOgre_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5471, 1, "DunemaulOgre_OnCombat")
RegisterUnitEvent(5471, 2, "DunemaulOgre_OnLeaveCombat")
RegisterUnitEvent(5471, 3, "DunemaulOgre_OnKilledTarget")
RegisterUnitEvent(5471, 4, "DunemaulOgre_OnDied")