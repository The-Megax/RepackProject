--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RascalSprite_OnCombat(Unit, Event)
Unit:RegisterEvent("RascalSprite_FaerieFire", 1000, 1)
end

function RascalSprite_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6950, pUnit:GetMainTank()) 
end

function RascalSprite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RascalSprite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RascalSprite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2002, 1, "RascalSprite_OnCombat")
RegisterUnitEvent(2002, 2, "RascalSprite_OnLeaveCombat")
RegisterUnitEvent(2002, 3, "RascalSprite_OnKilledTarget")
RegisterUnitEvent(2002, 4, "RascalSprite_OnDied")