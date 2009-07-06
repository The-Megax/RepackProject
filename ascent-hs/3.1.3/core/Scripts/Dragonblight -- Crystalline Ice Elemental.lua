--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CrystallineIceElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("CrystallineIceElemental_IceSlash", 6000, 0)
end

function CrystallineIceElemental_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function CrystallineIceElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrystallineIceElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrystallineIceElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26316, 1, "CrystallineIceElemental_OnCombat")
RegisterUnitEvent(26316, 2, "CrystallineIceElemental_OnLeaveCombat")
RegisterUnitEvent(26316, 3, "CrystallineIceElemental_OnKilledTarget")
RegisterUnitEvent(26316, 4, "CrystallineIceElemental_OnDied")