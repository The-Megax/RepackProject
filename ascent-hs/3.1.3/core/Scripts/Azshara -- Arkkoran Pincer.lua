--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ArkkoranPincer_OnCombat(Unit, Event)
Unit:RegisterEvent("ArkkoranPincer_Rend", 10000, 0)
end

function ArkkoranPincer_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13445, pUnit:GetMainTank()) 
end

function ArkkoranPincer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArkkoranPincer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArkkoranPincer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6137, 1, "ArkkoranPincer_OnCombat")
RegisterUnitEvent(6137, 2, "ArkkoranPincer_OnLeaveCombat")
RegisterUnitEvent(6137, 3, "ArkkoranPincer_OnKilledTarget")
RegisterUnitEvent(6137, 4, "ArkkoranPincer_OnDied")