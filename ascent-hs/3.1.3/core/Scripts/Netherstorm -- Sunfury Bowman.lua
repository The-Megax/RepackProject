--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Sunfury_Bowman_OnCombat(Unit, Event)
Unit:RegisterEvent("Sunfury_Bowman_Net", 8000, 0)
Unit:RegisterEvent("Sunfury_Bowman_Immolation_Arrow", 6000, 0)
Unit:RegisterEvent("Sunfury_Bowman_Shoot", 6000, 0)
end

function Sunfury_Bowman_Immolation_Arrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(37847, pUnit:GetMainTank()) 
end

function Sunfury_Bowman_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12024, pUnit:GetMainTank()) 
end

function Sunfury_Bowman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function Sunfury_Bowman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sunfury_Bowman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sunfury_Bowman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20207, 1, "Sunfury_Bowman_OnCombat")
RegisterUnitEvent(20207, 2, "Sunfury_Bowman_OnLeaveCombat")
RegisterUnitEvent(20207, 3, "Sunfury_Bowman_OnKilledTarget")
RegisterUnitEvent(20207, 4, "Sunfury_Bowman_OnDied")