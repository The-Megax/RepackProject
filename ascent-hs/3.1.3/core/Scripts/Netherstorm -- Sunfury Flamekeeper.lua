--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Flamekeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("Flamekeeper_Enrage", 25000, 0)
Unit:RegisterEvent("Flamekeeper_Flame", 10000, 0)
Unit:RegisterEvent("Flamekeeper_Torch", 5000, 0)
end

function Flamekeeper_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Flamekeeper_Flame(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33731, pUnit:GetMainTank()) 
end

function Flamekeeper_Torch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35857, pUnit:GetMainTank()) 
end

function Flamekeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Flamekeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Flamekeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20221, 1, "Flamekeeper_OnCombat")
RegisterUnitEvent(20221, 2, "Flamekeeper_OnLeaveCombat")
RegisterUnitEvent(20221, 3, "Flamekeeper_OnKilledTarget")
RegisterUnitEvent(20221, 4, "Flamekeeper_OnDied")