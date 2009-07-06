--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Glrggl_OnCombat(Unit, Event)
Unit:RegisterEvent("Glrggl_FlipperThwack", 8000, 0)
end

function Glrggl_FlipperThwack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50169, pUnit:GetMainTank()) 
end

function Glrggl_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Glrggl_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Glrggl_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25203, 1, "Glrggl_OnCombat")
RegisterUnitEvent(25203, 2, "Glrggl_OnLeaveCombat")
RegisterUnitEvent(25203, 3, "Glrggl_OnKilledTarget")
RegisterUnitEvent(25203, 4, "Glrggl_OnDied")