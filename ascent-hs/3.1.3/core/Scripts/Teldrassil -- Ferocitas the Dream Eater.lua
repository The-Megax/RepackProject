--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FerocitastheDreamEater_OnCombat(Unit, Event)
Unit:RegisterEvent("FerocitastheDreamEater_Thrash", 5000, 0)
end

function FerocitastheDreamEater_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function FerocitastheDreamEater_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FerocitastheDreamEater_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FerocitastheDreamEater_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7234, 1, "FerocitastheDreamEater_OnCombat")
RegisterUnitEvent(7234, 2, "FerocitastheDreamEater_OnLeaveCombat")
RegisterUnitEvent(7234, 3, "FerocitastheDreamEater_OnKilledTarget")
RegisterUnitEvent(7234, 4, "FerocitastheDreamEater_OnDied")