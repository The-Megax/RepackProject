--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LegionCommanderYorik_OnCombat(Unit, Event)
Unit:RegisterEvent("LegionCommanderYorik_Shoot", 5000, 0)
end

function LegionCommanderYorik_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function LegionCommanderYorik_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegionCommanderYorik_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegionCommanderYorik_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27857, 1, "LegionCommanderYorik_OnCombat")
RegisterUnitEvent(27857, 2, "LegionCommanderYorik_OnLeaveCombat")
RegisterUnitEvent(27857, 3, "LegionCommanderYorik_OnKilledTarget")
RegisterUnitEvent(27857, 4, "LegionCommanderYorik_OnDied")