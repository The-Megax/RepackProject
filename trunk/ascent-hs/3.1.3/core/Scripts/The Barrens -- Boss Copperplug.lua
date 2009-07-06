--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BossCopperplug_OnCombat(Unit, Event)
Unit:RegisterEvent("BossCopperplug_Bom", 8000, 0)
Unit:RegisterEvent("BossCopperplug_Net", 10000, 0)
end

function BossCopperplug_Bom(pUnit, Event) 
pUnit:CastSpell(9143) 
end

function BossCopperplug_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function BossCopperplug_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BossCopperplug_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BossCopperplug_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(9336, 1, "BossCopperplug_OnCombat")
RegisterUnitEvent(9336, 2, "BossCopperplug_OnLeaveCombat")
RegisterUnitEvent(9336, 3, "BossCopperplug_OnKilledTarget")
RegisterUnitEvent(9336, 4, "BossCopperplug_OnDied")