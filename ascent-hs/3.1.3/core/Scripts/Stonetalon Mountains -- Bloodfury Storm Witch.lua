--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BloodfuryStormWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryStormWitch_LightningBolt", 8000, 0)
Unit:RegisterEvent("BloodfuryStormWitch_LightningCloud", 4000, 1)
end

function BloodfuryStormWitch_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function BloodfuryStormWitch_LightningCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6535, pUnit:GetMainTank()) 
end

function BloodfuryStormWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryStormWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryStormWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4027, 1, "BloodfuryStormWitch_OnCombat")
RegisterUnitEvent(4027, 2, "BloodfuryStormWitch_OnLeaveCombat")
RegisterUnitEvent(4027, 3, "BloodfuryStormWitch_OnKilledTarget")
RegisterUnitEvent(4027, 4, "BloodfuryStormWitch_OnDied")