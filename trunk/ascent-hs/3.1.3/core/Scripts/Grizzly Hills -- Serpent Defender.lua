--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SerpentDefender_OnCombat(Unit, Event)
Unit:RegisterEvent("SerpentDefender_TailLash", 8000, 0)
end

function SerpentDefender_TailLash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34811, pUnit:GetMainTank()) 
end

function SerpentDefender_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SerpentDefender_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SerpentDefender_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(29693, 1, "SerpentDefender_OnCombat")
RegisterUnitEvent(29693, 2, "SerpentDefender_OnLeaveCombat")
RegisterUnitEvent(29693, 3, "SerpentDefender_OnKilledTarget")
RegisterUnitEvent(29693, 4, "SerpentDefender_OnDied")