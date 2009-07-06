--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AmbereyeBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbereyeBasilisk_Petrify", 15000, 0)
end

function AmbereyeBasilisk_Petrify(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11020, pUnit:GetMainTank()) 
end

function AmbereyeBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbereyeBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbereyeBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11785, 1, "AmbereyeBasilisk_OnCombat")
RegisterUnitEvent(11785, 2, "AmbereyeBasilisk_OnLeaveCombat")
RegisterUnitEvent(11785, 3, "AmbereyeBasilisk_OnKilledTarget")
RegisterUnitEvent(11785, 4, "AmbereyeBasilisk_OnDied")