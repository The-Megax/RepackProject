--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WildthornLurker_OnCombat(Unit, Event)
Unit:RegisterEvent("WildthornLurker_Hide", 1000, 1)
end

function WildthornLurker_Hide(pUnit, Event) 
pUnit:CastSpell(6920) 
end

function WildthornLurker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildthornLurker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildthornLurker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3821, 1, "WildthornLurker_OnCombat")
RegisterUnitEvent(3821, 2, "WildthornLurker_OnLeaveCombat")
RegisterUnitEvent(3821, 3, "WildthornLurker_OnKilledTarget")
RegisterUnitEvent(3821, 4, "WildthornLurker_OnDied")