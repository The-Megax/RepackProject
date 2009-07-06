--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WarsongShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongShaman_ChainHeal", 16000, 0)
Unit:RegisterEvent("WarsongShaman_ChainLightning", 9000, 0)
Unit:RegisterEvent("WarsongShaman_EarthShock", 12000, 0)
Unit:RegisterEvent("WarsongShaman_LesserHealingWave", 20000, 0)
Unit:RegisterEvent("WarsongShaman_WaterShield", 4000, 1)
end

function WarsongShaman_ChainHeal(pUnit, Event) 
pUnit:CastSpell(16367) 
end

function WarsongShaman_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39945, pUnit:GetMainTank()) 
end

function WarsongShaman_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25025, pUnit:GetMainTank()) 
end

function WarsongShaman_LesserHealingWave(pUnit, Event) 
pUnit:CastSpell(49309) 
end

function WarsongShaman_WaterShield(pUnit, Event) 
pUnit:CastSpell(34827) 
end

function WarsongShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27678, 1, "WarsongShaman_OnCombat")
RegisterUnitEvent(27678, 2, "WarsongShaman_OnLeaveCombat")
RegisterUnitEvent(27678, 3, "WarsongShaman_OnKilledTarget")
RegisterUnitEvent(27678, 4, "WarsongShaman_OnDied")