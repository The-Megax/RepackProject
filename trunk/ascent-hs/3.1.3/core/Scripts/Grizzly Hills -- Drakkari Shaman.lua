--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DrakkariShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariShaman_LightningBolt", 7000, 0)
Unit:RegisterEvent("DrakkariShaman_MasteredElements", 10000, 0)
end

function DrakkariShaman_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function DrakkariShaman_MasteredElements(pUnit, Event) 
pUnit:CastSpell(52290) 
end

function DrakkariShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26447, 1, "DrakkariShaman_OnCombat")
RegisterUnitEvent(26447, 2, "DrakkariShaman_OnLeaveCombat")
RegisterUnitEvent(26447, 3, "DrakkariShaman_OnKilledTarget")
RegisterUnitEvent(26447, 4, "DrakkariShaman_OnDied")