--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SingedBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("SingedBasilisk_CrystallineSlumber", 15000, 1)
end

function SingedBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function SingedBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SingedBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SingedBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4042, 1, "SingedBasilisk_OnCombat")
RegisterUnitEvent(4042, 2, "SingedBasilisk_OnLeaveCombat")
RegisterUnitEvent(4042, 3, "SingedBasilisk_OnKilledTarget")
RegisterUnitEvent(4042, 4, "SingedBasilisk_OnDied")