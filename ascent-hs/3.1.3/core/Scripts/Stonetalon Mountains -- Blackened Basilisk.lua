--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BlackenedBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("BlackenedBasilisk_CrystallineSlumber", 15000, 1)
end

function BlackenedBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function BlackenedBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlackenedBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlackenedBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4044, 1, "BlackenedBasilisk_OnCombat")
RegisterUnitEvent(4044, 2, "BlackenedBasilisk_OnLeaveCombat")
RegisterUnitEvent(4044, 3, "BlackenedBasilisk_OnKilledTarget")
RegisterUnitEvent(4044, 4, "BlackenedBasilisk_OnDied")