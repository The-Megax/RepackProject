--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HighPriestNaferset_OnCombat(Unit, Event)
Unit:RegisterEvent("HighPriestNaferset_MindBlast", 6000, 0)
Unit:RegisterEvent("HighPriestNaferset_Renew", 13000, 0)
end

function HighPriestNaferset_MindBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15587, pUnit:GetMainTank()) 
end

function HighPriestNaferset_Renew(pUnit, Event) 
pUnit:CastSpell(11640) 
end

function HighPriestNaferset_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighPriestNaferset_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighPriestNaferset_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26076, 1, "HighPriestNaferset_OnCombat")
RegisterUnitEvent(26076, 2, "HighPriestNaferset_OnLeaveCombat")
RegisterUnitEvent(26076, 3, "HighPriestNaferset_OnKilledTarget")
RegisterUnitEvent(26076, 4, "HighPriestNaferset_OnDied")