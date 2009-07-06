--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function thLegionSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("thLegionSentinel_GlaiveThrow", 8000, 0)
Unit:RegisterEvent("thLegionSentinel_Shoot", 6000, 0)
Unit:RegisterEvent("thLegionSentinel_ShootMagicArrow", 7000, 0)
end

function thLegionSentinel_GlaiveThrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49481, pUnit:GetMainTank()) 
end

function thLegionSentinel_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15547, pUnit:GetMainTank()) 
end

function thLegionSentinel_ShootMagicArrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48530, pUnit:GetMainTank()) 
end

function thLegionSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function thLegionSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function thLegionSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27162, 1, "thLegionSentinel_OnCombat")
RegisterUnitEvent(27162, 2, "thLegionSentinel_OnLeaveCombat")
RegisterUnitEvent(27162, 3, "thLegionSentinel_OnKilledTarget")
RegisterUnitEvent(27162, 4, "thLegionSentinel_OnDied")