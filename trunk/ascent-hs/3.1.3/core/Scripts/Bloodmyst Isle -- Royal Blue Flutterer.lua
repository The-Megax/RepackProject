--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RoyalBlueFlutterer_OnCombat(Unit, Event)
Unit:RegisterEvent("RoyalBlueFlutterer_Rake", 8000, 0)
end

function RoyalBlueFlutterer_Rake(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36332, pUnit:GetMainTank()) 
end

function RoyalBlueFlutterer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RoyalBlueFlutterer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RoyalBlueFlutterer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17350, 1, "RoyalBlueFlutterer_OnCombat")
RegisterUnitEvent(17350, 2, "RoyalBlueFlutterer_OnLeaveCombat")
RegisterUnitEvent(17350, 3, "RoyalBlueFlutterer_OnKilledTarget")
RegisterUnitEvent(17350, 4, "RoyalBlueFlutterer_OnDied")