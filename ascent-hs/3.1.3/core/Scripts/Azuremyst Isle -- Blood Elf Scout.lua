--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodElfScout_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodElfScout_FaerieFire", 8000, 0)
end

function BloodElfScout_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25602, pUnit:GetMainTank()) 
end

function BloodElfScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodElfScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodElfScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(16521, 1, "BloodElfScout_OnCombat")
RegisterUnitEvent(16521, 2, "BloodElfScout_OnLeaveCombat")
RegisterUnitEvent(16521, 3, "BloodElfScout_OnKilledTarget")
RegisterUnitEvent(16521, 4, "BloodElfScout_OnDied")