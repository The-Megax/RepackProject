--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Shredder_OnCombat(Unit, Event)
Unit:RegisterEvent("Shredder_Blast", 6000, 0)
Unit:RegisterEvent("Shredder_Shield", 1000, 1)
end

function Shredder_Blast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36594, pUnit:GetMainTank()) 
end

function Shredder_Shield(pUnit, Event) 
pUnit:CastSpell(19514) 
end

function Shredder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Shredder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Shredder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20673, 1, "Shredder_OnCombat")
RegisterUnitEvent(20673, 2, "Shredder_OnLeaveCombat")
RegisterUnitEvent(20673, 3, "Shredder_OnKilledTarget")
RegisterUnitEvent(20673, 4, "Shredder_OnDied")