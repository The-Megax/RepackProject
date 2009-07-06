--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RisenWintergardeMage_OnCombat(Unit, Event)
Unit:RegisterEvent("RisenWintergardeMage_FireBlast", 6000, 0)
Unit:RegisterEvent("RisenWintergardeMage_Frostbolt", 7000, 0)
end

function RisenWintergardeMage_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13339, pUnit:GetMainTank()) 
end

function RisenWintergardeMage_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function RisenWintergardeMage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RisenWintergardeMage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RisenWintergardeMage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27283, 1, "RisenWintergardeMage_OnCombat")
RegisterUnitEvent(27283, 2, "RisenWintergardeMage_OnLeaveCombat")
RegisterUnitEvent(27283, 3, "RisenWintergardeMage_OnKilledTarget")
RegisterUnitEvent(27283, 4, "RisenWintergardeMage_OnDied")