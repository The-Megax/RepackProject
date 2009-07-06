--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Zora_OnCombat(Unit, Event)
Unit:RegisterEvent("Zora_PoisonBolt", 8000, 0)
end

function Zora_PoisonBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21067, pUnit:GetMainTank()) 
end

function Zora_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Zora_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Zora_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14474, 1, "Zora_OnCombat")
RegisterUnitEvent(14474, 2, "Zora_OnLeaveCombat")
RegisterUnitEvent(14474, 3, "Zora_OnKilledTarget")
RegisterUnitEvent(14474, 4, "Zora_OnDied")