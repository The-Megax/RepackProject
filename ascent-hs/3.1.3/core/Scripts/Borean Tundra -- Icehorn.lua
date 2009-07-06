--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Icehorn_OnCombat(Unit, Event)
Unit:RegisterEvent("Icehorn_Romp", 8000, 0)
end

function Icehorn_Romp(pUnit, Event) 
pUnit:CastSpell(57468) 
end

function Icehorn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Icehorn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Icehorn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32361, 1, "Icehorn_OnCombat")
RegisterUnitEvent(32361, 2, "Icehorn_OnLeaveCombat")
RegisterUnitEvent(32361, 3, "Icehorn_OnKilledTarget")
RegisterUnitEvent(32361, 4, "Icehorn_OnDied")