--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DreadboneInvader_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadboneInvader_Soulthirst", 10000, 0)
end

function DreadboneInvader_Soulthirst(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51290, pUnit:GetMainTank()) 
end

function DreadboneInvader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadboneInvader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadboneInvader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27286, 1, "DreadboneInvader_OnCombat")
RegisterUnitEvent(27286, 2, "DreadboneInvader_OnLeaveCombat")
RegisterUnitEvent(27286, 3, "DreadboneInvader_OnKilledTarget")
RegisterUnitEvent(27286, 4, "DreadboneInvader_OnDied")