--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WarsongShredder_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongShredder_Overdrive", 10000, 0)
end

function WarsongShredder_Overdrive(pUnit, Event) 
pUnit:CastSpell(18546) 
end

function WarsongShredder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongShredder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongShredder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11684, 1, "WarsongShredder_OnCombat")
RegisterUnitEvent(11684, 2, "WarsongShredder_OnLeaveCombat")
RegisterUnitEvent(11684, 3, "WarsongShredder_OnKilledTarget")
RegisterUnitEvent(11684, 4, "WarsongShredder_OnDied")