--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HazzaliTunneler_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliTunneler_PierceArmor", 10000, 0)
end

function HazzaliTunneler_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function HazzaliTunneler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliTunneler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliTunneler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5453, 1, "HazzaliTunneler_OnCombat")
RegisterUnitEvent(5453, 2, "HazzaliTunneler_OnLeaveCombat")
RegisterUnitEvent(5453, 3, "HazzaliTunneler_OnKilledTarget")
RegisterUnitEvent(5453, 4, "HazzaliTunneler_OnDied")