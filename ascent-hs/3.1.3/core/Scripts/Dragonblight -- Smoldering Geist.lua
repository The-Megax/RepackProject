--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SmolderingGeist_OnCombat(Unit, Event)
Unit:RegisterEvent("SmolderingGeist_BurningBlaze", 6500, 0)
end

function SmolderingGeist_BurningBlaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51500, pUnit:GetMainTank()) 
end

function SmolderingGeist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SmolderingGeist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SmolderingGeist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27363, 1, "SmolderingGeist_OnCombat")
RegisterUnitEvent(27363, 2, "SmolderingGeist_OnLeaveCombat")
RegisterUnitEvent(27363, 3, "SmolderingGeist_OnKilledTarget")
RegisterUnitEvent(27363, 4, "SmolderingGeist_OnDied")