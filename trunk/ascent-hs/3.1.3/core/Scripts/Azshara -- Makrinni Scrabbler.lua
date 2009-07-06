--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MakrinniScrabbler_OnCombat(Unit, Event)
Unit:RegisterEvent("MakrinniScrabbler_Frostbolt", 8000, 0)
Unit:RegisterEvent("MakrinniScrabbler_Heal", 14000, 0)
end

function MakrinniScrabbler_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20822, pUnit:GetMainTank()) 
end

function MakrinniScrabbler_Heal(pUnit, Event) 
pUnit:CastSpell(11642) 
end

function MakrinniScrabbler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MakrinniScrabbler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MakrinniScrabbler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6370, 1, "MakrinniScrabbler_OnCombat")
RegisterUnitEvent(6370, 2, "MakrinniScrabbler_OnLeaveCombat")
RegisterUnitEvent(6370, 3, "MakrinniScrabbler_OnKilledTarget")
RegisterUnitEvent(6370, 4, "MakrinniScrabbler_OnDied")