--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Wyrmbait_OnCombat(Unit, Event)
Unit:RegisterEvent("Wyrmbait_Shoot", 6000, 0)
end

function Wyrmbait_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function Wyrmbait_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Wyrmbait_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Wyrmbait_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27843, 1, "Wyrmbait_OnCombat")
RegisterUnitEvent(27843, 2, "Wyrmbait_OnLeaveCombat")
RegisterUnitEvent(27843, 3, "Wyrmbait_OnKilledTarget")
RegisterUnitEvent(27843, 4, "Wyrmbait_OnDied")