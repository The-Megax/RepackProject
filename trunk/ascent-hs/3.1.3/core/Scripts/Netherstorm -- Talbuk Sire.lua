--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Sire_OnCombat(Unit, Event)
Unit:RegisterEvent("Sire_Stomp", 6000, 0)
end

function Sire_Stomp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32023, pUnit:GetMainTank()) 
end

function Sire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Sire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Sire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20777, 1, "Sire_OnCombat")
RegisterUnitEvent(20777, 2, "Sire_OnLeaveCombat")
RegisterUnitEvent(20777, 3, "Sire_OnKilledTarget")
RegisterUnitEvent(20777, 4, "Sire_OnDied")