--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TatteredAbomination_OnCombat(Unit, Event)
Unit:RegisterEvent("TatteredAbomination_ScourgeHook", 7000, 0)
end

function TatteredAbomination_ScourgeHook(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50335, pUnit:GetMainTank()) 
end

function TatteredAbomination_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TatteredAbomination_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TatteredAbomination_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27797, 1, "TatteredAbomination_OnCombat")
RegisterUnitEvent(27797, 2, "TatteredAbomination_OnLeaveCombat")
RegisterUnitEvent(27797, 3, "TatteredAbomination_OnKilledTarget")
RegisterUnitEvent(27797, 4, "TatteredAbomination_OnDied")