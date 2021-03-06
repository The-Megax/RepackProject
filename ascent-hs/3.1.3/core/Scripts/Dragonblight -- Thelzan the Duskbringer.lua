--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ThelzantheDuskbringer_OnCombat(Unit, Event)
Unit:RegisterEvent("ThelzantheDuskbringer_ChainsofIce", 16000, 0)
Unit:RegisterEvent("ThelzantheDuskbringer_FrostArmor", 11000, 0)
Unit:RegisterEvent("ThelzantheDuskbringer_Frostbolt", 7000, 0)
Unit:RegisterEvent("ThelzantheDuskbringer_FrostboltVolley", 12000, 0)
Unit:RegisterEvent("ThelzantheDuskbringer_ScreamofChaos", 20000, 0)
end

function ThelzantheDuskbringer_ChainsofIce(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39268, pUnit:GetRandomPlayer(0)) 
end

function ThelzantheDuskbringer_FrostArmor(pUnit, Event) 
pUnit:CastSpell(31256) 
end

function ThelzantheDuskbringer_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(42719, pUnit:GetMainTank()) 
end

function ThelzantheDuskbringer_FrostboltVolley(pUnit, Event) 
pUnit:CastSpell(22643) 
end

function ThelzantheDuskbringer_ScreamofChaos(pUnit, Event) 
pUnit:CastSpell(50497) 
end

function ThelzantheDuskbringer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThelzantheDuskbringer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThelzantheDuskbringer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27383, 1, "ThelzantheDuskbringer_OnCombat")
RegisterUnitEvent(27383, 2, "ThelzantheDuskbringer_OnLeaveCombat")
RegisterUnitEvent(27383, 3, "ThelzantheDuskbringer_OnKilledTarget")
RegisterUnitEvent(27383, 4, "ThelzantheDuskbringer_OnDied")