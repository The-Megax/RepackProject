--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Drunk_OnCombat(Unit, Event)
Unit:RegisterEvent("Drunk_Knock", 8000, 0)
end

function Drunk_Knock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank()) 
end

function Drunk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Drunk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Drunk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18585, 1, "Drunk_OnCombat")
RegisterUnitEvent(18585, 2, "Drunk_OnLeaveCombat")
RegisterUnitEvent(18585, 3, "Drunk_OnKilledTarget")
RegisterUnitEvent(18585, 4, "Drunk_OnDied")