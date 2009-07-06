--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ConquestHoldRaider_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldRaider_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("ConquestHoldRaider_HeroicStrike", 5000, 0)
Unit:RegisterEvent("ConquestHoldRaider_Intercept", 9000, 0)
end

function ConquestHoldRaider_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function ConquestHoldRaider_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function ConquestHoldRaider_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function ConquestHoldRaider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldRaider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldRaider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27118, 1, "ConquestHoldRaider_OnCombat")
RegisterUnitEvent(27118, 2, "ConquestHoldRaider_OnLeaveCombat")
RegisterUnitEvent(27118, 3, "ConquestHoldRaider_OnKilledTarget")
RegisterUnitEvent(27118, 4, "ConquestHoldRaider_OnDied")