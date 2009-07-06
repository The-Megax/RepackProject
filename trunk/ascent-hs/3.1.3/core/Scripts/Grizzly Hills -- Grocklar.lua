--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Grocklar_OnCombat(Unit, Event)
Unit:RegisterEvent("Grocklar_StoneFist", 3000, 1)
Unit:RegisterEvent("Grocklar_StoneStomp", 8000, 0)
end

function Grocklar_StoneFist(pUnit, Event) 
pUnit:CastSpell(49676) 
end

function Grocklar_StoneStomp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49675, pUnit:GetMainTank()) 
end

function Grocklar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Grocklar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Grocklar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32422, 1, "Grocklar_OnCombat")
RegisterUnitEvent(32422, 2, "Grocklar_OnLeaveCombat")
RegisterUnitEvent(32422, 3, "Grocklar_OnKilledTarget")
RegisterUnitEvent(32422, 4, "Grocklar_OnDied")