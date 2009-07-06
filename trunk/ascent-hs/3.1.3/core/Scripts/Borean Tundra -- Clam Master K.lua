--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ClamMasterK_OnCombat(Unit, Event)
Unit:RegisterEvent("ClamMasterK_HookedNet", 8000, 0)
end

function ClamMasterK_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49711, pUnit:GetMainTank()) 
end

function ClamMasterK_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ClamMasterK_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ClamMasterK_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25800, 1, "ClamMasterK_OnCombat")
RegisterUnitEvent(25800, 2, "ClamMasterK_OnLeaveCombat")
RegisterUnitEvent(25800, 3, "ClamMasterK_OnKilledTarget")
RegisterUnitEvent(25800, 4, "ClamMasterK_OnDied")