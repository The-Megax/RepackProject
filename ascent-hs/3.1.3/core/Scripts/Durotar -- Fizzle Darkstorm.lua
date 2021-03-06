--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function FizzleDarkstorm_OnCombat(Unit, Event)
Unit:RegisterEvent("FizzleDarkstorm_SoulSiphon", 13000, 0)
Unit:RegisterEvent("FizzleDarkstorm_ShadowBolt", 8000, 0)
Unit:RegisterEvent("FizzleDarkstorm_SummonImp", 1000, 1)
end

function FizzleDarkstorm_SummonImp(pUnit, Event) 
pUnit:CastSpell(11939) 
end

function FizzleDarkstorm_SoulSiphon(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7290, pUnit:GetMainTank()) 
end

function FizzleDarkstorm_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function FizzleDarkstorm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FizzleDarkstorm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FizzleDarkstorm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3203, 1, "FizzleDarkstorm_OnCombat")
RegisterUnitEvent(3203, 2, "FizzleDarkstorm_OnLeaveCombat")
RegisterUnitEvent(3203, 3, "FizzleDarkstorm_OnKilledTarget")
RegisterUnitEvent(3203, 4, "FizzleDarkstorm_OnDied")