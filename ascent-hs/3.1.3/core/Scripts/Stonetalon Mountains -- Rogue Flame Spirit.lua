--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RogueFlameSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("RogueFlameSpirit_Inmolate", 10000, 0)
end

function RogueFlameSpirit_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1094, pUnit:GetMainTank()) 
end

function RogueFlameSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RogueFlameSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RogueFlameSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4036, 1, "RogueFlameSpirit_OnCombat")
RegisterUnitEvent(4036, 2, "RogueFlameSpirit_OnLeaveCombat")
RegisterUnitEvent(4036, 3, "RogueFlameSpirit_OnKilledTarget")
RegisterUnitEvent(4036, 4, "RogueFlameSpirit_OnDied")