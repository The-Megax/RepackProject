--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IceRevenant_OnCombat(Unit, Event)
Unit:RegisterEvent("IceRevenant_IcyTorrent", 7000, 0)
end

function IceRevenant_IcyTorrent(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51584, pUnit:GetMainTank()) 
end

function IceRevenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceRevenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceRevenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26283, 1, "IceRevenant_OnCombat")
RegisterUnitEvent(26283, 2, "IceRevenant_OnLeaveCombat")
RegisterUnitEvent(26283, 3, "IceRevenant_OnKilledTarget")
RegisterUnitEvent(26283, 4, "IceRevenant_OnDied")