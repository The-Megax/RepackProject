--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Researcher_OnCombat(Unit, Event)
Unit:RegisterEvent("Researcher_Armor", 6000, 0)
end

function Researcher_Armor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35918, pUnit:GetMainTank()) 
end

function Researcher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Researcher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Researcher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20136, 1, "Researcher_OnCombat")
RegisterUnitEvent(20136, 2, "Researcher_OnLeaveCombat")
RegisterUnitEvent(20136, 3, "Researcher_OnKilledTarget")
RegisterUnitEvent(20136, 4, "Researcher_OnDied")