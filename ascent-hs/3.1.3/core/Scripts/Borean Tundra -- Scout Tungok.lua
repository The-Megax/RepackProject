--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ScoutTungok_OnCombat(Unit, Event)
Unit:RegisterEvent("ScoutTungok_Enrage", 10000, 0)
end

function ScoutTungok_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function ScoutTungok_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScoutTungok_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScoutTungok_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25440, 1, "ScoutTungok_OnCombat")
RegisterUnitEvent(25440, 2, "ScoutTungok_OnLeaveCombat")
RegisterUnitEvent(25440, 3, "ScoutTungok_OnKilledTarget")
RegisterUnitEvent(25440, 4, "ScoutTungok_OnDied")