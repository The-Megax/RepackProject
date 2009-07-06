--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Monstrosity_OnCombat(Unit, Event)
Unit:RegisterEvent("Monstrosity_Arcane", 6000, 0)
Unit:RegisterEvent("Monstrosity_Storm", 20000, 0)
end

function Monstrosity_Arcane(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13901, pUnit:GetMainTank()) 
end

function Monstrosity_Storm(pUnit, Event) 
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36577)
    pUnit:SpawnCreature(21322, x-1, y, z, o, 14, o)
end

function Monstrosity_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Monstrosity_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Monstrosity_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20516, 1, "Monstrosity_OnCombat")
RegisterUnitEvent(20516, 2, "Monstrosity_OnLeaveCombat")
RegisterUnitEvent(20516, 3, "Monstrosity_OnKilledTarget")
RegisterUnitEvent(20516, 4, "Monstrosity_OnDied")