--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Huricanian_OnCombat(Unit, Event)
Unit:RegisterEvent("Huricanian_ChainLightning", 8000, 0)
end

function Huricanian_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15659, pUnit:GetRandomPlayer(0)) 
end

function Huricanian_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Huricanian_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Huricanian_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14478, 1, "Huricanian_OnCombat")
RegisterUnitEvent(14478, 2, "Huricanian_OnLeaveCombat")
RegisterUnitEvent(14478, 3, "Huricanian_OnKilledTarget")
RegisterUnitEvent(14478, 4, "Huricanian_OnDied")