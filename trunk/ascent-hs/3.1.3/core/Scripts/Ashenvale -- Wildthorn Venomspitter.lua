--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WildthornVenomspitter_OnCombat(Unit, Event)
Unit:RegisterEvent("WildthornVenomspitter_VenomSpit", 8000, 0)
end

function WildthornVenomspitter_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6917, pUnit:GetMainTank()) 
end

function WildthornVenomspitter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildthornVenomspitter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildthornVenomspitter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3820, 1, "WildthornVenomspitter_OnCombat")
RegisterUnitEvent(3820, 2, "WildthornVenomspitter_OnLeaveCombat")
RegisterUnitEvent(3820, 3, "WildthornVenomspitter_OnKilledTarget")
RegisterUnitEvent(3820, 4, "WildthornVenomspitter_OnDied")