--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Aberration_OnCombat(Unit, Event)
Unit:RegisterEvent("Aberration_Shield", 1000, 1)
Unit:RegisterEvent("Aberration_Storm", 20000, 0)
end

function Aberration_Shield(pUnit, Event) 
pUnit:CastSpell(36640) 
end

function Aberration_Storm(pUnit, Event) 
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36577)
    pUnit:SpawnCreature(21322, x-1, y, z, o, 14, o)
end

function Aberration_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Aberration_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Aberration_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18865, 1, "Aberration_OnCombat")
RegisterUnitEvent(18865, 2, "Aberration_OnLeaveCombat")
RegisterUnitEvent(18865, 3, "Aberration_OnKilledTarget")
RegisterUnitEvent(18865, 4, "Aberration_OnDied")