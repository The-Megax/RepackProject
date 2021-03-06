--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ChieftainOomooroo_OnCombat(Unit, Event)
Unit:RegisterEvent("ChieftainOomooroo_Enrage", 10000, 1)
Unit:RegisterEvent("ChieftainOomooroo_Strike", 6000, 0)
end

function ChieftainOomooroo_Enrage(pUnit, Event) 
pUnit:CastSpell(18501) 
end

function ChieftainOomooroo_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13446, pUnit:GetMainTank()) 
end

function ChieftainOomooroo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChieftainOomooroo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChieftainOomooroo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17448, 1, "ChieftainOomooroo_OnCombat")
RegisterUnitEvent(17448, 2, "ChieftainOomooroo_OnLeaveCombat")
RegisterUnitEvent(17448, 3, "ChieftainOomooroo_OnKilledTarget")
RegisterUnitEvent(17448, 4, "ChieftainOomooroo_OnDied")