--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ArcanistNozzlespring_OnCombat(Unit, Event)
Unit:RegisterEvent("ArcanistNozzlespring_ArcaneMissiles", 8000, 0)
Unit:RegisterEvent("ArcanistNozzlespring_Fireball", 12000, 0)
end

function ArcanistNozzlespring_ArcaneMissiles(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15791, pUnit:GetRandomPlayer(0)) 
end

function ArcanistNozzlespring_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13375, pUnit:GetMainTank()) 
end

function ArcanistNozzlespring_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArcanistNozzlespring_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArcanistNozzlespring_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15444, 1, "ArcanistNozzlespring_OnCombat")
RegisterUnitEvent(15444, 2, "ArcanistNozzlespring_OnLeaveCombat")
RegisterUnitEvent(15444, 3, "ArcanistNozzlespring_OnKilledTarget")
RegisterUnitEvent(15444, 4, "ArcanistNozzlespring_OnDied")