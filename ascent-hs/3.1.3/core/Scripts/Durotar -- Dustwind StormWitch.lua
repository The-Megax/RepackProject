--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DustwindStormWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("DustwindStormWitch_LightningBolt", 8000, 0)
end

function DustwindStormWitch_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function DustwindStormWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DustwindStormWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DustwindStormWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3118, 1, "DustwindStormWitch_OnCombat")
RegisterUnitEvent(3118, 2, "DustwindStormWitch_OnLeaveCombat")
RegisterUnitEvent(3118, 3, "DustwindStormWitch_OnKilledTarget")
RegisterUnitEvent(3118, 4, "DustwindStormWitch_OnDied")