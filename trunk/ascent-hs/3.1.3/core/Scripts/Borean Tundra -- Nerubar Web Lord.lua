--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NerubarWebLord_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarWebLord_BlindingSwarm", 8000, 0)
end

function NerubarWebLord_BlindingSwarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50284, pUnit:GetMainTank()) 
end

function NerubarWebLord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarWebLord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarWebLord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25294, 1, "NerubarWebLord_OnCombat")
RegisterUnitEvent(25294, 2, "NerubarWebLord_OnLeaveCombat")
RegisterUnitEvent(25294, 3, "NerubarWebLord_OnKilledTarget")
RegisterUnitEvent(25294, 4, "NerubarWebLord_OnDied")