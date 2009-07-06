--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScorchedBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorchedBasilisk_CrystallineSlumber", 15000, 1)
end

function ScorchedBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function ScorchedBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorchedBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorchedBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4041, 1, "ScorchedBasilisk_OnCombat")
RegisterUnitEvent(4041, 2, "ScorchedBasilisk_OnLeaveCombat")
RegisterUnitEvent(4041, 3, "ScorchedBasilisk_OnKilledTarget")
RegisterUnitEvent(4041, 4, "ScorchedBasilisk_OnDied")