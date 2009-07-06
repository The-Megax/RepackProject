--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Conduit_OnCombat(Unit, Event)
Unit:RegisterEvent("Conduit_Dummy", 9000, 0)
end

function Conduit_Dummy(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36780, pUnit:GetMainTank()) 
end

function Conduit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Conduit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end



RegisterUnitEvent(20899, 1, "Conduit_OnCombat")
RegisterUnitEvent(20899, 2, "Conduit_OnLeaveCombat")
RegisterUnitEvent(20899, 3, "Conduit_OnKilledTarget")
RegisterUnitEvent(20899, 4, "Conduit_OnDied")