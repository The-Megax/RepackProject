--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HarbFoulmountain_OnCombat(Unit, Event)
Unit:RegisterEvent("HarbFoulmountain_Thrash", 6000, 0)
Unit:RegisterEvent("HarbFoulmountain_WarStomp", 8000, 0)
end

function HarbFoulmountain_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function HarbFoulmountain_WarStomp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45, pUnit:GetMainTank()) 
end

function HarbFoulmountain_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HarbFoulmountain_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HarbFoulmountain_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14426, 1, "HarbFoulmountain_OnCombat")
RegisterUnitEvent(14426, 2, "HarbFoulmountain_OnLeaveCombat")
RegisterUnitEvent(14426, 3, "HarbFoulmountain_OnKilledTarget")
RegisterUnitEvent(14426, 4, "HarbFoulmountain_OnDied")