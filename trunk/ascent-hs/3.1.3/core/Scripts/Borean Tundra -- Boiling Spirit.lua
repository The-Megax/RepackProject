--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BoilingSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("BoilingSpirit_ScaldingSteam", 8000, 0)
end

function BoilingSpirit_ScaldingSteam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50206, pUnit:GetMainTank()) 
end

function BoilingSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BoilingSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BoilingSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25419, 1, "BoilingSpirit_OnCombat")
RegisterUnitEvent(25419, 2, "BoilingSpirit_OnLeaveCombat")
RegisterUnitEvent(25419, 3, "BoilingSpirit_OnKilledTarget")
RegisterUnitEvent(25419, 4, "BoilingSpirit_OnDied")