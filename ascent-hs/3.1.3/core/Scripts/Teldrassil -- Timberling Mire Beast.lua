--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TimberlingMireBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("TimberlingMireBeast_MiringMud", 8000, 0)
end

function TimberlingMireBeast_MiringMud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5567, pUnit:GetMainTank()) 
end

function TimberlingMireBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimberlingMireBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimberlingMireBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2029, 1, "TimberlingMireBeast_OnCombat")
RegisterUnitEvent(2029, 2, "TimberlingMireBeast_OnLeaveCombat")
RegisterUnitEvent(2029, 3, "TimberlingMireBeast_OnKilledTarget")
RegisterUnitEvent(2029, 4, "TimberlingMireBeast_OnDied")