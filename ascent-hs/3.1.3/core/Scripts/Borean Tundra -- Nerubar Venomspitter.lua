--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NerubarVenomspitter_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarVenomspitter_VenomSpit", 8000, 0)
end

function NerubarVenomspitter_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45577, pUnit:GetMainTank()) 
end

function NerubarVenomspitter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarVenomspitter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarVenomspitter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24563, 1, "NerubarVenomspitter_OnCombat")
RegisterUnitEvent(24563, 2, "NerubarVenomspitter_OnLeaveCombat")
RegisterUnitEvent(24563, 3, "NerubarVenomspitter_OnKilledTarget")
RegisterUnitEvent(24563, 4, "NerubarVenomspitter_OnDied")