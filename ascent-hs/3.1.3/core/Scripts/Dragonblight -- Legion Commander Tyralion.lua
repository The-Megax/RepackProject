--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function LegionCommanderTyralion_OnCombat(Unit, Event)
Unit:RegisterEvent("LegionCommanderTyralion_Shoot", 5000, 0)
end

function LegionCommanderTyralion_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function LegionCommanderTyralion_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegionCommanderTyralion_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegionCommanderTyralion_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27844, 1, "LegionCommanderTyralion_OnCombat")
RegisterUnitEvent(27844, 2, "LegionCommanderTyralion_OnLeaveCombat")
RegisterUnitEvent(27844, 3, "LegionCommanderTyralion_OnKilledTarget")
RegisterUnitEvent(27844, 4, "LegionCommanderTyralion_OnDied")