--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FoulwealdTotemic_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdTotemic_SearingTotem", 2000, 1)
end

function FoulwealdTotemic_SearingTotem(pUnit, Event) 
pUnit:CastSpell(6363) 
end

function FoulwealdTotemic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdTotemic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdTotemic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3750, 1, "FoulwealdTotemic_OnCombat")
RegisterUnitEvent(3750, 2, "FoulwealdTotemic_OnLeaveCombat")
RegisterUnitEvent(3750, 3, "FoulwealdTotemic_OnKilledTarget")
RegisterUnitEvent(3750, 4, "FoulwealdTotemic_OnDied")