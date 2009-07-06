--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function UnboundEnt_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundEnt_CorruptedRejuvenation", 8000, 0)
Unit:RegisterEvent("UnboundEnt_Thorns", 2000, 1)
end

function UnboundEnt_CorruptedRejuvenation(pUnit, Event) 
pUnit:FullCastSpellOnTarget(58624, pUnit:GetMainTank()) 
end

function UnboundEnt_Thorns(pUnit, Event) 
pUnit:CastSpell(35361) 
end

function UnboundEnt_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundEnt_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundEnt_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30862, 1, "UnboundEnt_OnCombat")
RegisterUnitEvent(30862, 2, "UnboundEnt_OnLeaveCombat")
RegisterUnitEvent(30862, 3, "UnboundEnt_OnKilledTarget")
RegisterUnitEvent(30862, 4, "UnboundEnt_OnDied")