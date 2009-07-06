--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ScourgeDeathspeaker_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgeDeathspeaker_Fireball", 6000, 0)
Unit:RegisterEvent("ScourgeDeathspeaker_FlameoftheSeer", 3000, 1)
end

function ScourgeDeathspeaker_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52282, pUnit:GetMainTank()) 
end

function ScourgeDeathspeaker_FlameoftheSeer(pUnit, Event) 
pUnit:CastSpell(52281) 
end

function ScourgeDeathspeaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgeDeathspeaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgeDeathspeaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27615, 1, "ScourgeDeathspeaker_OnCombat")
RegisterUnitEvent(27615, 2, "ScourgeDeathspeaker_OnLeaveCombat")
RegisterUnitEvent(27615, 3, "ScourgeDeathspeaker_OnKilledTarget")
RegisterUnitEvent(27615, 4, "ScourgeDeathspeaker_OnDied")