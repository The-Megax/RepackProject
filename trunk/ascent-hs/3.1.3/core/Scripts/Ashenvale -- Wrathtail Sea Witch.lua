--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WrathtailSeaWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailSeaWitch_LightningBlast", 8000, 0)
end

function WrathtailSeaWitch_LightningBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8598, pUnit:GetMainTank()) 
end

function WrathtailSeaWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailSeaWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailSeaWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3715, 1, "WrathtailSeaWitch_OnCombat")
RegisterUnitEvent(3715, 2, "WrathtailSeaWitch_OnLeaveCombat")
RegisterUnitEvent(3715, 3, "WrathtailSeaWitch_OnKilledTarget")
RegisterUnitEvent(3715, 4, "WrathtailSeaWitch_OnDied")