--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SilverwingWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverwingWarrior_Rend", 10000, 0)
end

function SilverwingWarrior_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13445, pUnit:GetMainTank()) 
end

function SilverwingWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverwingWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverwingWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12897, 1, "SilverwingWarrior_OnCombat")
RegisterUnitEvent(12897, 2, "SilverwingWarrior_OnLeaveCombat")
RegisterUnitEvent(12897, 3, "SilverwingWarrior_OnKilledTarget")
RegisterUnitEvent(12897, 4, "SilverwingWarrior_OnDied")