--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NecrolordXavius_OnCombat(Unit, Event)
Unit:RegisterEvent("NecrolordXavius_ShadowBolt", 7000, 0)
Unit:RegisterEvent("NecrolordXavius_Shadowflame", 6000, 0)
end

function NecrolordXavius_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20298, pUnit:GetMainTank()) 
end

function NecrolordXavius_Shadowflame(pUnit, Event) 
pUnit:CastSpell(51337) 
end

function NecrolordXavius_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NecrolordXavius_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NecrolordXavius_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27826, 1, "NecrolordXavius_OnCombat")
RegisterUnitEvent(27826, 2, "NecrolordXavius_OnLeaveCombat")
RegisterUnitEvent(27826, 3, "NecrolordXavius_OnKilledTarget")
RegisterUnitEvent(27826, 4, "NecrolordXavius_OnDied")