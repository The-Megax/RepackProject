--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ShadowSprite_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadowSprite_ShadowBolt", 8000, 0)
end

function ShadowSprite_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function ShadowSprite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadowSprite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadowSprite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2003, 1, "ShadowSprite_OnCombat")
RegisterUnitEvent(2003, 2, "ShadowSprite_OnLeaveCombat")
RegisterUnitEvent(2003, 3, "ShadowSprite_OnKilledTarget")
RegisterUnitEvent(2003, 4, "ShadowSprite_OnDied")