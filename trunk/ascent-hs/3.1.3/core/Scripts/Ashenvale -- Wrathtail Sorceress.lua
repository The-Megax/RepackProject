--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WrathtailSorceress_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailSorceress_Frostbolt", 7000, 0)
end

function WrathtailSorceress_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function WrathtailSorceress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailSorceress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailSorceress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3717, 1, "WrathtailSorceress_OnCombat")
RegisterUnitEvent(3717, 2, "WrathtailSorceress_OnLeaveCombat")
RegisterUnitEvent(3717, 3, "WrathtailSorceress_OnKilledTarget")
RegisterUnitEvent(3717, 4, "WrathtailSorceress_OnDied")