--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AncientProtector_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientProtector_EntanglingRoots", 10000, 0)
Unit:RegisterEvent("AncientProtector_WarStomp", 6000, 0)
end

function AncientProtector_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11922, pUnit:GetRandomPlayer(0)) 
end

function AncientProtector_WarStomp(pUnit, Event) 
pUnit:CastSpell(45) 
end

function AncientProtector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientProtector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientProtector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2041, 1, "AncientProtector_OnCombat")
RegisterUnitEvent(2041, 2, "AncientProtector_OnLeaveCombat")
RegisterUnitEvent(2041, 3, "AncientProtector_OnKilledTarget")
RegisterUnitEvent(2041, 4, "AncientProtector_OnDied")