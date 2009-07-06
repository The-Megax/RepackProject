--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ChillmereTidehunter_OnCombat(Unit, Event)
Unit:RegisterEvent("ChillmereTidehunter_Net", 8000, 0)
Unit:RegisterEvent("ChillmereTidehunter_Throw", 6000, 0)
end

function ChillmereTidehunter_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function ChillmereTidehunter_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38556, pUnit:GetMainTank()) 
end

function ChillmereTidehunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChillmereTidehunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChillmereTidehunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24460, 1, "ChillmereTidehunter_OnCombat")
RegisterUnitEvent(24460, 2, "ChillmereTidehunter_OnLeaveCombat")
RegisterUnitEvent(24460, 3, "ChillmereTidehunter_OnKilledTarget")
RegisterUnitEvent(24460, 4, "ChillmereTidehunter_OnDied")