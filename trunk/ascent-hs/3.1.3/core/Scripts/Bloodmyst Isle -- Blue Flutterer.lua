--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BlueFlutterer_OnCombat(Unit, Event)
Unit:RegisterEvent("BlueFlutterer_Rake", 10000, 0)
end

function BlueFlutterer_Rake(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36332, pUnit:GetMainTank()) 
end

function BlueFlutterer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlueFlutterer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlueFlutterer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17349, 1, "BlueFlutterer_OnCombat")
RegisterUnitEvent(17349, 2, "BlueFlutterer_OnLeaveCombat")
RegisterUnitEvent(17349, 3, "BlueFlutterer_OnKilledTarget")
RegisterUnitEvent(17349, 4, "BlueFlutterer_OnDied")