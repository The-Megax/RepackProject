--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Heartrazor_OnCombat(Unit, Event)
Unit:RegisterEvent("Heartrazor_LethalToxin", 12000, 0)
end

function Heartrazor_LethalToxin(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8256, pUnit:GetMainTank()) 
end

function Heartrazor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Heartrazor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Heartrazor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5934, 1, "Heartrazor_OnCombat")
RegisterUnitEvent(5934, 2, "Heartrazor_OnLeaveCombat")
RegisterUnitEvent(5934, 3, "Heartrazor_OnKilledTarget")
RegisterUnitEvent(5934, 4, "Heartrazor_OnDied")