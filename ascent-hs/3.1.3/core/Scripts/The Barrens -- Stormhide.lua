--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Stormhide_OnCombat(Unit, Event)
Unit:RegisterEvent("Stormhide_LizardBolt", 6000, 0)
end

function Stormhide_LizardBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5401, pUnit:GetMainTank()) 
end

function Stormhide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Stormhide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Stormhide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3238, 1, "Stormhide_OnCombat")
RegisterUnitEvent(3238, 2, "Stormhide_OnLeaveCombat")
RegisterUnitEvent(3238, 3, "Stormhide_OnKilledTarget")
RegisterUnitEvent(3238, 4, "Stormhide_OnDied")