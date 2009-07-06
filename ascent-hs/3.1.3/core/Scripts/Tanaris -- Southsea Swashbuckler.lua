--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SouthseaSwashbuckler_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaSwashbuckler_Disarm", 10000, 0)
end

function SouthseaSwashbuckler_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function SouthseaSwashbuckler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaSwashbuckler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaSwashbuckler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7858, 1, "SouthseaSwashbuckler_OnCombat")
RegisterUnitEvent(7858, 2, "SouthseaSwashbuckler_OnLeaveCombat")
RegisterUnitEvent(7858, 3, "SouthseaSwashbuckler_OnKilledTarget")
RegisterUnitEvent(7858, 4, "SouthseaSwashbuckler_OnDied")