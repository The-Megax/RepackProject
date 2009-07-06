--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DregmarRunebrand_OnCombat(Unit, Event)
Unit:RegisterEvent("DregmarRunebrand_RuneShield", 20000, 1)
end

function DregmarRunebrand_RuneShield(pUnit, Event) 
pUnit:CastSpell(48325) 
end

function DregmarRunebrand_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DregmarRunebrand_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DregmarRunebrand_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27003, 1, "DregmarRunebrand_OnCombat")
RegisterUnitEvent(27003, 2, "DregmarRunebrand_OnLeaveCombat")
RegisterUnitEvent(27003, 3, "DregmarRunebrand_OnKilledTarget")
RegisterUnitEvent(27003, 4, "DregmarRunebrand_OnDied")