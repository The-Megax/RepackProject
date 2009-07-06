--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ColdwindWasteHuntress_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdwindWasteHuntress_EyePeck", 6000, 0)
end

function ColdwindWasteHuntress_EyePeck(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49865, pUnit:GetMainTank()) 
end

function ColdwindWasteHuntress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdwindWasteHuntress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdwindWasteHuntress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26575, 1, "ColdwindWasteHuntress_OnCombat")
RegisterUnitEvent(26575, 2, "ColdwindWasteHuntress_OnLeaveCombat")
RegisterUnitEvent(26575, 3, "ColdwindWasteHuntress_OnKilledTarget")
RegisterUnitEvent(26575, 4, "ColdwindWasteHuntress_OnDied")