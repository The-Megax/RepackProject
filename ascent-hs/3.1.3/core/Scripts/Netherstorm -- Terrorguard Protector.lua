--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Protector_OnCombat(Unit, Event)
Unit:RegisterEvent("Protector_Cleave", 7000, 0)
Unit:RegisterEvent("Protector_Flames", 5000, 0)
end

function Protector_Cleave(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15496, pUnit:GetMainTank()) 
end

function Protector_Flames(pUnit, Event) 
pUnit:FullCastSpellOnTarget(37488, pUnit:GetMainTank()) 
end

function Protector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Protector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Protector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21923, 1, "Protector_OnCombat")
RegisterUnitEvent(21923, 2, "Protector_OnLeaveCombat")
RegisterUnitEvent(21923, 3, "Protector_OnKilledTarget")
RegisterUnitEvent(21923, 4, "Protector_OnDied")