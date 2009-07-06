--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Loguhn_OnCombat(Unit, Event)
Unit:RegisterEvent("Loguhn_Enrage", 10000, 1)
Unit:RegisterEvent("Loguhn_SunderArmor", 5000, 0)
end

function Loguhn_Enrage(pUnit, Event) 
pUnit:CastSpell(8599)
end

function Loguhn_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50370, pUnit:GetMainTank()) 
end

function Loguhn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Loguhn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Loguhn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26196, 1, "Loguhn_OnCombat")
RegisterUnitEvent(26196, 2, "Loguhn_OnLeaveCombat")
RegisterUnitEvent(26196, 3, "Loguhn_OnKilledTarget")
RegisterUnitEvent(26196, 4, "Loguhn_OnDied")