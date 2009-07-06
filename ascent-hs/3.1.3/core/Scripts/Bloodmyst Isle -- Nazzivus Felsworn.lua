--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function NazzivusFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("NazzivusFelsworn_Immolate", 6000, 1)
Unit:RegisterEvent("NazzivusFelsworn_ShadowBolt", 8000, 0)
end

function NazzivusFelsworn_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11962, pUnit:GetMainTank()) 
end

function NazzivusFelsworn_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function NazzivusFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NazzivusFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NazzivusFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17339, 1, "NazzivusFelsworn_OnCombat")
RegisterUnitEvent(17339, 2, "NazzivusFelsworn_OnLeaveCombat")
RegisterUnitEvent(17339, 3, "NazzivusFelsworn_OnKilledTarget")
RegisterUnitEvent(17339, 4, "NazzivusFelsworn_OnDied")