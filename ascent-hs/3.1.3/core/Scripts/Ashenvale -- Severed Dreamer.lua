--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SeveredDreamer_OnCombat(Unit, Event)
Unit:RegisterEvent("SeveredDreamer_SummonIllusionaryNightmare", 1000, 1)
end

function SeveredDreamer_SummonIllusionaryNightmare(pUnit, Event) 
pUnit:CastSpell(6905) 
end

function SeveredDreamer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeveredDreamer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeveredDreamer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3802, 1, "SeveredDreamer_OnCombat")
RegisterUnitEvent(3802, 2, "SeveredDreamer_OnLeaveCombat")
RegisterUnitEvent(3802, 3, "SeveredDreamer_OnKilledTarget")
RegisterUnitEvent(3802, 4, "SeveredDreamer_OnDied")