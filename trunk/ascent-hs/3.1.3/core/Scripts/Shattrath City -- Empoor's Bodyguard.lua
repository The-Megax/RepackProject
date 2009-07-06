--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Bodyguard_OnCombat(Unit, Event)
Unit:RegisterEvent("Bodyguard_Demoralize", 10000, 0)
Unit:RegisterEvent("Bodyguard_Rend", 6000, 0)
end

function Bodyguard_Demoralize(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13730, pUnit:GetClosestPlayer()) 
end

function Bodyguard_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function Bodyguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bodyguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bodyguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18483, 1, "Bodyguard_OnCombat")
RegisterUnitEvent(18483, 2, "Bodyguard_OnLeaveCombat")
RegisterUnitEvent(18483, 3, "Bodyguard_OnKilledTarget")
RegisterUnitEvent(18483, 4, "Bodyguard_OnDied")