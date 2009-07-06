--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Krellack_OnCombat(Unit, Event)
Unit:RegisterEvent("Krellack_FatalSting", 8000, 0)
end

function Krellack_FatalSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17170, pUnit:GetMainTank()) 
end

function Krellack_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Krellack_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Krellack_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14476, 1, "Krellack_OnCombat")
RegisterUnitEvent(14476, 2, "Krellack_OnLeaveCombat")
RegisterUnitEvent(14476, 3, "Krellack_OnKilledTarget")
RegisterUnitEvent(14476, 4, "Krellack_OnDied")