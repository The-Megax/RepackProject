--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MinionofKaw_OnCombat(Unit, Event)
Unit:RegisterEvent("MinionofKaw_DestructiveStrike", 8000, 0)
end

function MinionofKaw_DestructiveStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51430, pUnit:GetMainTank()) 
end

function MinionofKaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MinionofKaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MinionofKaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25880, 1, "MinionofKaw_OnCombat")
RegisterUnitEvent(25880, 2, "MinionofKaw_OnLeaveCombat")
RegisterUnitEvent(25880, 3, "MinionofKaw_OnKilledTarget")
RegisterUnitEvent(25880, 4, "MinionofKaw_OnDied")