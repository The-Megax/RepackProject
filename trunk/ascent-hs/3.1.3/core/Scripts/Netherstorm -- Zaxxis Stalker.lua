--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Stalker_OnCombat(Unit, Event)
Unit:RegisterEvent("Stalker_Backstab", 6000, 0)
Unit:RegisterEvent("Stalker_Warp", 8000, 0)
end

function Stalker_Backstab(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7159, pUnit:GetMainTank()) 
end

function Stalker_Warp(pUnit, Event) 
pUnit:CastSpell(32920) 
end

function Stalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Stalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Stalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19642, 1, "Stalker_OnCombat")
RegisterUnitEvent(19642, 2, "Stalker_OnLeaveCombat")
RegisterUnitEvent(19642, 3, "Stalker_OnKilledTarget")
RegisterUnitEvent(19642, 4, "Stalker_OnDied")