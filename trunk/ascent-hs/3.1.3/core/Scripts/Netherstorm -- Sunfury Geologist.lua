--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Geologist_OnCombat(Unit, Event)
Unit:RegisterEvent("Geologist_Armor", 10000, 0)
Unit:RegisterEvent("Geologist_Rock", 6000, 0)
end

function Geologist_Armor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35918, pUnit:GetMainTank()) 
end

function Geologist_Rock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36645, pUnit:GetMainTank()) 
end

function Geologist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Geologist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Geologist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19779, 1, "Geologist_OnCombat")
RegisterUnitEvent(19779, 2, "Geologist_OnLeaveCombat")
RegisterUnitEvent(19779, 3, "Geologist_OnKilledTarget")
RegisterUnitEvent(19779, 4, "Geologist_OnDied")