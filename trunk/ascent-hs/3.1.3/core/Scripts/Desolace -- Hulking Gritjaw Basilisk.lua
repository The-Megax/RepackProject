--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HulkingGritjawBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("HulkingGritjawBasilisk_CrystallineSlumber", 15000, 1)
end

function HulkingGritjawBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function HulkingGritjawBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HulkingGritjawBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HulkingGritjawBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4729, 1, "HulkingGritjawBasilisk_OnCombat")
RegisterUnitEvent(4729, 2, "HulkingGritjawBasilisk_OnLeaveCombat")
RegisterUnitEvent(4729, 3, "HulkingGritjawBasilisk_OnKilledTarget")
RegisterUnitEvent(4729, 4, "HulkingGritjawBasilisk_OnDied")