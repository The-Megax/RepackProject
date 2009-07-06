--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BlackConradsGhost_OnCombat(Unit, Event)
Unit:RegisterEvent("BlackConradsGhost_BladeFlurry", 11000, 0)
Unit:RegisterEvent("BlackConradsGhost_GhostlyStrike", 8000, 0)
end

function BlackConradsGhost_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(51211) 
end

function BlackConradsGhost_GhostlyStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31022, pUnit:GetMainTank()) 
end

function BlackConradsGhost_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlackConradsGhost_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlackConradsGhost_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24790, 1, "BlackConradsGhost_OnCombat")
RegisterUnitEvent(24790, 2, "BlackConradsGhost_OnLeaveCombat")
RegisterUnitEvent(24790, 3, "BlackConradsGhost_OnKilledTarget")
RegisterUnitEvent(24790, 4, "BlackConradsGhost_OnDied")