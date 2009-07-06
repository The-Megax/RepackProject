--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SaltstoneBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltstoneBasilisk_CrystallineSlumber", 12000, 0)
end

function SaltstoneBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function SaltstoneBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltstoneBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltstoneBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4147, 1, "SaltstoneBasilisk_OnCombat")
RegisterUnitEvent(4147, 2, "SaltstoneBasilisk_OnLeaveCombat")
RegisterUnitEvent(4147, 3, "SaltstoneBasilisk_OnKilledTarget")
RegisterUnitEvent(4147, 4, "SaltstoneBasilisk_OnDied")