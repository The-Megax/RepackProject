--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function FelweaverScornn_OnCombat(Unit, Event)
Unit:RegisterEvent("FelweaverScornn_ShadowBolt", 8000, 0)
end

function FelweaverScornn_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function FelweaverScornn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelweaverScornn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelweaverScornn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5822, 1, "FelweaverScornn_OnCombat")
RegisterUnitEvent(5822, 2, "FelweaverScornn_OnLeaveCombat")
RegisterUnitEvent(5822, 3, "FelweaverScornn_OnKilledTarget")
RegisterUnitEvent(5822, 4, "FelweaverScornn_OnDied")