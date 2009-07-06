--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Voidwraith_OnCombat(Unit, Event)
Unit:RegisterEvent("Voidwraith_Spawn", 6000, 0)
Unit:RegisterEvent("Voidwraith_Summon", 15000,0)
end

function Voidwraith_Spawn(pUnit, Event) 
pUnit:CastSpell(34302) 
end

function Voidwraith_Summon(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36463)
    pUnit:SpawnCreature(17471, x-1, y, z, o, 14, o)
end

function Voidwraith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Voidwraith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Voidwraith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18869, 1, "Voidwraith_OnCombat")
RegisterUnitEvent(18869, 2, "Voidwraith_OnLeaveCombat")
RegisterUnitEvent(18869, 3, "Voidwraith_OnKilledTarget")
RegisterUnitEvent(18869, 4, "Voidwraith_OnDied")