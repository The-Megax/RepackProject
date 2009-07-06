--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HighperchPatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("HighperchPatriarch_Poison", 12000, 0)
end

function HighperchPatriarch_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HighperchPatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighperchPatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighperchPatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4110, 1, "HighperchPatriarch_OnCombat")
RegisterUnitEvent(4110, 2, "HighperchPatriarch_OnLeaveCombat")
RegisterUnitEvent(4110, 3, "HighperchPatriarch_OnKilledTarget")
RegisterUnitEvent(4110, 4, "HighperchPatriarch_OnDied")