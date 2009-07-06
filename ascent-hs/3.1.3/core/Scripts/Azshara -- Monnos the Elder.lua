--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MonnostheElder_OnCombat(Unit, Event)
Unit:RegisterEvent("MonnostheElder_KnockAway", 8000, 0)
Unit:RegisterEvent("MonnostheElder_Trample", 5000, 0)
end

function MonnostheElder_KnockAway(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10101, pUnit:GetMainTank()) 
end

function MonnostheElder_Trample(pUnit, Event) 
pUnit:CastSpell(5568) 
end

function MonnostheElder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MonnostheElder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MonnostheElder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6646, 1, "MonnostheElder_OnCombat")
RegisterUnitEvent(6646, 2, "MonnostheElder_OnLeaveCombat")
RegisterUnitEvent(6646, 3, "MonnostheElder_OnKilledTarget")
RegisterUnitEvent(6646, 4, "MonnostheElder_OnDied")