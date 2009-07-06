--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Razormaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Razormaw_FlameBreath", 8000, 0)
Unit:RegisterEvent("Razormaw_Swipe", 6000, 0)
Unit:RegisterEvent("Razormaw_TerrifyingRoar", 12000, 0)
end

function Razormaw_FlameBreath(pUnit, Event) 
pUnit:CastSpell(8873) 
end

function Razormaw_Swipe(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31279, pUnit:GetMainTank()) 
end

function Razormaw_TerrifyingRoar(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14100, pUnit:GetMainTank()) 
end

function Razormaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Razormaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Razormaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17592, 1, "Razormaw_OnCombat")
RegisterUnitEvent(17592, 2, "Razormaw_OnLeaveCombat")
RegisterUnitEvent(17592, 3, "Razormaw_OnKilledTarget")
RegisterUnitEvent(17592, 4, "Razormaw_OnDied")