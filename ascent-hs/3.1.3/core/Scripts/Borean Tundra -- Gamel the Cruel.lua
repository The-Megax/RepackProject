--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GameltheCruel_OnCombat(Unit, Event)
Unit:RegisterEvent("GameltheCruel_MortalStrike", 6000, 0)
end

function GameltheCruel_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13737, pUnit:GetMainTank()) 
end

function GameltheCruel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GameltheCruel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GameltheCruel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26449, 1, "GameltheCruel_OnCombat")
RegisterUnitEvent(26449, 2, "GameltheCruel_OnLeaveCombat")
RegisterUnitEvent(26449, 3, "GameltheCruel_OnKilledTarget")
RegisterUnitEvent(26449, 4, "GameltheCruel_OnDied")