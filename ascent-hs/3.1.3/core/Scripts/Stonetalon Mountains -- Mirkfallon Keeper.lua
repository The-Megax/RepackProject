--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MirkfallonKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("MirkfallonKeeper_MirkfallonFungus", 10000, 1)
end

function MirkfallonKeeper_MirkfallonFungus(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8138, pUnit:GetMainTank()) 
end

function MirkfallonKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MirkfallonKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MirkfallonKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4056, 1, "MirkfallonKeeper_OnCombat")
RegisterUnitEvent(4056, 2, "MirkfallonKeeper_OnLeaveCombat")
RegisterUnitEvent(4056, 3, "MirkfallonKeeper_OnKilledTarget")
RegisterUnitEvent(4056, 4, "MirkfallonKeeper_OnDied")