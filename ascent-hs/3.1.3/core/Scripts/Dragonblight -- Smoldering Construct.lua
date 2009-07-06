--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SmolderingConstruct_OnCombat(Unit, Event)
Unit:RegisterEvent("SmolderingConstruct_Backlash", 6000, 0)
end

function SmolderingConstruct_Backlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51439, pUnit:GetMainTank()) 
end

function SmolderingConstruct_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SmolderingConstruct_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SmolderingConstruct_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27362, 1, "SmolderingConstruct_OnCombat")
RegisterUnitEvent(27362, 2, "SmolderingConstruct_OnLeaveCombat")
RegisterUnitEvent(27362, 3, "SmolderingConstruct_OnKilledTarget")
RegisterUnitEvent(27362, 4, "SmolderingConstruct_OnDied")