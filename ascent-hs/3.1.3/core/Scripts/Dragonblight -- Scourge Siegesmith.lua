--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ScourgeSiegesmith_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgeSiegesmith_Bomb", 5500, 0)
end

function ScourgeSiegesmith_Bomb(pUnit, Event) 
pUnit:CastSpell(22334) 
end

function ScourgeSiegesmith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgeSiegesmith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgeSiegesmith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27410, 1, "ScourgeSiegesmith_OnCombat")
RegisterUnitEvent(27410, 2, "ScourgeSiegesmith_OnLeaveCombat")
RegisterUnitEvent(27410, 3, "ScourgeSiegesmith_OnKilledTarget")
RegisterUnitEvent(27410, 4, "ScourgeSiegesmith_OnDied")