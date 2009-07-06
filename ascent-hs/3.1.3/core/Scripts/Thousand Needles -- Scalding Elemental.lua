--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScaldingElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("ScaldingElemental_Scald", 10000, 0)
end

function ScaldingElemental_Scald(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17276, pUnit:GetMainTank()) 
end

function ScaldingElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScaldingElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScaldingElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10756, 1, "ScaldingElemental_OnCombat")
RegisterUnitEvent(10756, 2, "ScaldingElemental_OnLeaveCombat")
RegisterUnitEvent(10756, 3, "ScaldingElemental_OnKilledTarget")
RegisterUnitEvent(10756, 4, "ScaldingElemental_OnDied")