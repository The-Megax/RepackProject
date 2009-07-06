--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CaptainOlster_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainOlster_ConcussionBlow", 12000, 0)
Unit:RegisterEvent("CaptainOlster_Intercept", 9000, 0)
Unit:RegisterEvent("CaptainOlster_MortalStrike", 7000, 0)
end

function CaptainOlster_ConcussionBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32588, pUnit:GetMainTank()) 
end

function CaptainOlster_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function CaptainOlster_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16856, pUnit:GetMainTank()) 
end

function CaptainOlster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainOlster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainOlster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23962, 1, "CaptainOlster_OnCombat")
RegisterUnitEvent(23962, 2, "CaptainOlster_OnLeaveCombat")
RegisterUnitEvent(23962, 3, "CaptainOlster_OnKilledTarget")
RegisterUnitEvent(23962, 4, "CaptainOlster_OnDied")