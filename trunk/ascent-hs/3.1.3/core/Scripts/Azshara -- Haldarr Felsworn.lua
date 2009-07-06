--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HaldarrFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("HaldarrFelsworn_ShadowBolt", 8000, 0)
end

function HaldarrFelsworn_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20825, pUnit:GetMainTank()) 
end

function HaldarrFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HaldarrFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HaldarrFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6127, 1, "HaldarrFelsworn_OnCombat")
RegisterUnitEvent(6127, 2, "HaldarrFelsworn_OnLeaveCombat")
RegisterUnitEvent(6127, 3, "HaldarrFelsworn_OnKilledTarget")
RegisterUnitEvent(6127, 4, "HaldarrFelsworn_OnDied")
