--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Voidshrieker_OnCombat(Unit, Event)
Unit:RegisterEvent("Voidshrieker_Spawn", 8000, 0)
Unit:RegisterEvent("Voidshrieker_Bolt", 6000, 0)
end

function Voidshrieker_Spawn(pUnit, Event) 
pUnit:CastSpell(34302) 
end

function Voidshrieker_Bolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34344, pUnit:GetMainTank()) 
end

function Voidshrieker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Voidshrieker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Voidshrieker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18870, 1, "Voidshrieker_OnCombat")
RegisterUnitEvent(18870, 2, "Voidshrieker_OnLeaveCombat")
RegisterUnitEvent(18870, 3, "Voidshrieker_OnKilledTarget")
RegisterUnitEvent(18870, 4, "Voidshrieker_OnDied")