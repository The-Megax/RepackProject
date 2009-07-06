--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ScourgedFootman_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgedFootman_BladeFlurry", 10000, 0)
Unit:RegisterEvent("ScourgedFootman_MortalStrike", 8000, 0)
end

function ScourgedFootman_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(33735) 
end

function ScourgedFootman_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function ScourgedFootman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgedFootman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgedFootman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25981, 1, "ScourgedFootman_OnCombat")
RegisterUnitEvent(25981, 2, "ScourgedFootman_OnLeaveCombat")
RegisterUnitEvent(25981, 3, "ScourgedFootman_OnKilledTarget")
RegisterUnitEvent(25981, 4, "ScourgedFootman_OnDied")