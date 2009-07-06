--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BurningDepthsNecromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningDepthsNecromancer_PowerRelease", 7000, 0)
end

function BurningDepthsNecromancer_PowerRelease(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51431, pUnit:GetMainTank()) 
end

function BurningDepthsNecromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningDepthsNecromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningDepthsNecromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27358, 1, "BurningDepthsNecromancer_OnCombat")
RegisterUnitEvent(27358, 2, "BurningDepthsNecromancer_OnLeaveCombat")
RegisterUnitEvent(27358, 3, "BurningDepthsNecromancer_OnKilledTarget")
RegisterUnitEvent(27358, 4, "BurningDepthsNecromancer_OnDied")