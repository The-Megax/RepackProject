--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HazzaliWasp_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliWasp_Poison", 10000, 0)
end

function HazzaliWasp_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HazzaliWasp_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliWasp_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliWasp_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5453, 1, "HazzaliWasp_OnCombat")
RegisterUnitEvent(5453, 2, "HazzaliWasp_OnLeaveCombat")
RegisterUnitEvent(5453, 3, "HazzaliWasp_OnKilledTarget")
RegisterUnitEvent(5453, 4, "HazzaliWasp_OnDied")