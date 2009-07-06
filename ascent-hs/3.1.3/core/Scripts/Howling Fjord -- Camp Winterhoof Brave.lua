--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CampWinterhoofBrave_OnCombat(Unit, Event)
Unit:RegisterEvent("CampWinterhoofBrave_Cleave", 9000, 0)
Unit:RegisterEvent("CampWinterhoofBrave_Shoot", 6000, 0)
end

function CampWinterhoofBrave_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function CampWinterhoofBrave_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23337, pUnit:GetMainTank()) 
end

function CampWinterhoofBrave_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CampWinterhoofBrave_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CampWinterhoofBrave_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24031, 1, "CampWinterhoofBrave_OnCombat")
RegisterUnitEvent(24031, 2, "CampWinterhoofBrave_OnLeaveCombat")
RegisterUnitEvent(24031, 3, "CampWinterhoofBrave_OnKilledTarget")
RegisterUnitEvent(24031, 4, "CampWinterhoofBrave_OnDied")