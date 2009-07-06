--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DarkSprite_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkSprite_DarkenVision", 8000, 0)
end

function DarkSprite_DarkenVision(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5514, pUnit:GetMainTank()) 
end

function DarkSprite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkSprite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkSprite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2004, 1, "DarkSprite_OnCombat")
RegisterUnitEvent(2004, 2, "DarkSprite_OnLeaveCombat")
RegisterUnitEvent(2004, 3, "DarkSprite_OnKilledTarget")
RegisterUnitEvent(2004, 4, "DarkSprite_OnDied")