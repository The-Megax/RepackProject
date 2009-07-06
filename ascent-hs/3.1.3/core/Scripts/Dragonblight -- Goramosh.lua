--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Goramosh_OnCombat(Unit, Event)
Unit:RegisterEvent("Goramosh_ConeofCold", 6000, 0)
Unit:RegisterEvent("Goramosh_Frostbolt", 8000, 0)
end

function Goramosh_ConeofCold(pUnit, Event) 
pUnit:CastSpell(20828) 
end

function Goramosh_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function Goramosh_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Goramosh_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Goramosh_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26349, 1, "Goramosh_OnCombat")
RegisterUnitEvent(26349, 2, "Goramosh_OnLeaveCombat")
RegisterUnitEvent(26349, 3, "Goramosh_OnKilledTarget")
RegisterUnitEvent(26349, 4, "Goramosh_OnDied")