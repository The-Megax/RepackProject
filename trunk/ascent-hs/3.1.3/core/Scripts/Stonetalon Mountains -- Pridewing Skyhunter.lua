--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function PridewingSkyhunter_OnCombat(Unit, Event)
Unit:RegisterEvent("PridewingSkyhunter_Poison", 10000, 0)
Unit:RegisterEvent("PridewingSkyhunter_Swoop", 6000, 0)
end

function PridewingSkyhunter_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function PridewingSkyhunter_Swoop(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5708, pUnit:GetMainTank()) 
end

function PridewingSkyhunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PridewingSkyhunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PridewingSkyhunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4013, 1, "PridewingSkyhunter_OnCombat")
RegisterUnitEvent(4013, 2, "PridewingSkyhunter_OnLeaveCombat")
RegisterUnitEvent(4013, 3, "PridewingSkyhunter_OnKilledTarget")
RegisterUnitEvent(4013, 4, "PridewingSkyhunter_OnDied")