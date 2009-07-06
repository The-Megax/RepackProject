--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Arrachea_OnCombat(Unit, Event)
Unit:RegisterEvent("Arrachea_HeadButt", 10000, 0)
end

function Arrachea_HeadButt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6730, pUnit:GetClosestPlayer()) 
end

function Arrachea_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Arrachea_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Arrachea_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3058, 1, "Arrachea_OnCombat")
RegisterUnitEvent(3058, 2, "Arrachea_OnLeaveCombat")
RegisterUnitEvent(3058, 3, "Arrachea_OnKilledTarget")
RegisterUnitEvent(3058, 4, "Arrachea_OnDied")
