--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ConquestHoldMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldMarauder_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("ConquestHoldMarauder_HeroicStrike", 5000, 0)
Unit:RegisterEvent("ConquestHoldMarauder_Intercept", 9000, 0)
end

function ConquestHoldMarauder_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function ConquestHoldMarauder_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function ConquestHoldMarauder_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function ConquestHoldMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27424, 1, "ConquestHoldMarauder_OnCombat")
RegisterUnitEvent(27424, 2, "ConquestHoldMarauder_OnLeaveCombat")
RegisterUnitEvent(27424, 3, "ConquestHoldMarauder_OnKilledTarget")
RegisterUnitEvent(27424, 4, "ConquestHoldMarauder_OnDied")