--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function thLegionWyrmHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionWyrmHunter_Shoot", 6000, 0)
end

function thLegionWyrmHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function thLegionWyrmHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionWyrmHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionWyrmHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26779, 1, "thLegionWyrmHunter_OnCombat")
RegisterUnitEvent(26779, 2, "thLegionWyrmHunter_OnLeaveCombat")
RegisterUnitEvent(26779, 3, "thLegionWyrmHunter_OnKilledTarget")
RegisterUnitEvent(26779, 4, "thLegionWyrmHunter_OnDied")