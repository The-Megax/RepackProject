--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MammothShark_OnCombat(Unit, Event)
Unit:RegisterEvent("MammothShark_Thrash", 5000, 0)
end

function MammothShark_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function MammothShark_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MammothShark_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MammothShark_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12125, 1, "MammothShark_OnCombat")
RegisterUnitEvent(12125, 2, "MammothShark_OnLeaveCombat")
RegisterUnitEvent(12125, 3, "MammothShark_OnKilledTarget")
RegisterUnitEvent(12125, 4, "MammothShark_OnDied")