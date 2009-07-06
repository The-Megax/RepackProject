--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HighperchWyvern_OnCombat(Unit, Event)
Unit:RegisterEvent("HighperchWyvern_Poison", 12000, 0)
end

function HighperchWyvern_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HighperchWyvern_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighperchWyvern_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighperchWyvern_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4107, 1, "HighperchWyvern_OnCombat")
RegisterUnitEvent(4107, 2, "HighperchWyvern_OnLeaveCombat")
RegisterUnitEvent(4107, 3, "HighperchWyvern_OnKilledTarget")
RegisterUnitEvent(4107, 4, "HighperchWyvern_OnDied")