--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GroveWalker_OnCombat(Unit, Event)
Unit:RegisterEvent("GroveWalker_Rejuvenation", 12000, 0)
Unit:RegisterEvent("GroveWalker_Thorns", 2000, 1)
end

function GroveWalker_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(15981) 
end

function GroveWalker_Thorns(pUnit, Event) 
pUnit:CastSpell(35361) 
end

function GroveWalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GroveWalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GroveWalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31228, 1, "GroveWalker_OnCombat")
RegisterUnitEvent(31228, 2, "GroveWalker_OnLeaveCombat")
RegisterUnitEvent(31228, 3, "GroveWalker_OnKilledTarget")
RegisterUnitEvent(31228, 4, "GroveWalker_OnDied")