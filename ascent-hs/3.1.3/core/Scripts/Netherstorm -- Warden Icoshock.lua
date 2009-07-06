--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Icoshock_OnCombat(Unit, Event)
Unit:RegisterEvent("Icoshock_Surge", 7000, 0)
Unit:RegisterEvent("Icoshock_Drain", 1000, 1)
end

function Icoshock_Surge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36517, pUnit:GetMainTank()) 
end

function Icoshock_Drain(pUnit, Event) 
pUnit:CastSpell(36515) 
end

function Icoshock_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Icoshock_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Icoshock_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20770, 1, "Icoshock_OnCombat")
RegisterUnitEvent(20770, 2, "Icoshock_OnLeaveCombat")
RegisterUnitEvent(20770, 3, "Icoshock_OnKilledTarget")
RegisterUnitEvent(20770, 4, "Icoshock_OnDied")