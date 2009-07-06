--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Laztarash_OnCombat(Unit, Event)
Unit:RegisterEvent("Laztarash_Hamstring", 8000, 0)
end

function Laztarash_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31553, pUnit:GetMainTank()) 
end

function Laztarash_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Laztarash_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Laztarash_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20789, 1, "Laztarash_OnCombat")
RegisterUnitEvent(20789, 2, "Laztarash_OnLeaveCombat")
RegisterUnitEvent(20789, 3, "Laztarash_OnKilledTarget")
RegisterUnitEvent(20789, 4, "Laztarash_OnDied")