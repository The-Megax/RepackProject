--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AnimatedPlagueSlime_OnCombat(Unit, Event)
Unit:RegisterEvent("AnimatedPlagueSlime_DarkSludge", 4000, 2)
end

function AnimatedPlagueSlime_DarkSludge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3335, pUnit:GetMainTank()) 
end

function AnimatedPlagueSlime_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnimatedPlagueSlime_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnimatedPlagueSlime_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24279, 1, "AnimatedPlagueSlime_OnCombat")
RegisterUnitEvent(24279, 2, "AnimatedPlagueSlime_OnLeaveCombat")
RegisterUnitEvent(24279, 3, "AnimatedPlagueSlime_OnKilledTarget")
RegisterUnitEvent(24279, 4, "AnimatedPlagueSlime_OnDied")