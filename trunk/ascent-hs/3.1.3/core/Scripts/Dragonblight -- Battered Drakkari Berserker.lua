--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BatteredDrakkariBerserker_OnCombat(Unit, Event)
Unit:RegisterEvent("BatteredDrakkariBerserker_Enrage", 10000, 1)
Unit:RegisterEvent("BatteredDrakkariBerserker_Knockdown", 6000, 0)
end

function BatteredDrakkariBerserker_Enrage(pUnit, Event) 
pUnit:CastSpell(50420) 
end

function BatteredDrakkariBerserker_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(37592, pUnit:GetMainTank()) 
end

function BatteredDrakkariBerserker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BatteredDrakkariBerserker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BatteredDrakkariBerserker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26943, 1, "BatteredDrakkariBerserker_OnCombat")
RegisterUnitEvent(26943, 2, "BatteredDrakkariBerserker_OnLeaveCombat")
RegisterUnitEvent(26943, 3, "BatteredDrakkariBerserker_OnKilledTarget")
RegisterUnitEvent(26943, 4, "BatteredDrakkariBerserker_OnDied")