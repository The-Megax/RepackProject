--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Gazzuz_OnCombat(Unit, Event)
Unit:RegisterEvent("Gazzuz_SummonVoidwalker", 1000, 1)
Unit:RegisterEvent("Gazzuz_DemonSkin", 2000, 1)
Unit:RegisterEvent("Gazzuz_Corruption", 4000, 1)
Unit:RegisterEvent("Gazzuz_ShadowBolt", 8000, 0)
end

function Gazzuz_SummonVoidwalker(pUnit, Event) 
pUnit:CastSpell(12746) 
end

function Gazzuz_DemonSkin(pUnit, Event) 
pUnit:CastSpell(20798) 
end

function Gazzuz_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(172, pUnit:GetMainTank()) 
end

function Gazzuz_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function Gazzuz_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Gazzuz_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Gazzuz_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3204, 1, "Gazzuz_OnCombat")
RegisterUnitEvent(3204, 2, "Gazzuz_OnLeaveCombat")
RegisterUnitEvent(3204, 3, "Gazzuz_OnKilledTarget")
RegisterUnitEvent(3204, 4, "Gazzuz_OnDied")