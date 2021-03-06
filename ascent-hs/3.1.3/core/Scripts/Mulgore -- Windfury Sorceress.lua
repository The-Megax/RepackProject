--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WindfurySorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("WindfurySorceress_Frostbolt", 8000, 0)
end

function WindfurySorceress_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13322, pUnit:GetMainTank()) 
end

function WindfurySorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WindfurySorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WindfurySorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2964, 1, "WindfurySorceress_OnCombat")
RegisterUnitEvent(2964, 2, "WindfurySorceress_OnLeaveCombat")
RegisterUnitEvent(2964, 3, "WindfurySorceress_OnKilledTarget")
RegisterUnitEvent(2964, 4, "WindfurySorceress_OnDied")