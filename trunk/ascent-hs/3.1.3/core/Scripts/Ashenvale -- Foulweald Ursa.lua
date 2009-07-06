--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FoulwealdUrsa_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdUrsa_Hamstring", 10000, 0)
end

function FoulwealdUrsa_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function FoulwealdUrsa_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdUrsa_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdUrsa_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3749, 1, "FoulwealdUrsa_OnCombat")
RegisterUnitEvent(3749, 2, "FoulwealdUrsa_OnLeaveCombat")
RegisterUnitEvent(3749, 3, "FoulwealdUrsa_OnKilledTarget")
RegisterUnitEvent(3749, 4, "FoulwealdUrsa_OnDied")