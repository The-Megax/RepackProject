--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FordragonKnight_OnCombat(Unit, Event)
Unit:RegisterEvent("FordragonKnight_RallyingCry", 2000, 1)
end

function FordragonKnight_RallyingCry(pUnit, Event) 
pUnit:CastSpell(31732) 
end

function FordragonKnight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FordragonKnight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FordragonKnight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27531, 1, "FordragonKnight_OnCombat")
RegisterUnitEvent(27531, 2, "FordragonKnight_OnLeaveCombat")
RegisterUnitEvent(27531, 3, "FordragonKnight_OnKilledTarget")
RegisterUnitEvent(27531, 4, "FordragonKnight_OnDied")