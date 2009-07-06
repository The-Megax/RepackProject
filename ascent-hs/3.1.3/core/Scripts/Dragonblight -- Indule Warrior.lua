--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function InduleWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("InduleWarrior_SpectralStrike", 6000, 0)
end

function InduleWarrior_SpectralStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51786, pUnit:GetMainTank()) 
end

function InduleWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InduleWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InduleWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26344, 1, "InduleWarrior_OnCombat")
RegisterUnitEvent(26344, 2, "InduleWarrior_OnLeaveCombat")
RegisterUnitEvent(26344, 3, "InduleWarrior_OnKilledTarget")
RegisterUnitEvent(26344, 4, "InduleWarrior_OnDied")