--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodElfSurveyor_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodElfSurveyor_FireNova", 6000, 0)
end

function BloodElfSurveyor_FireNova(pUnit, Event) 
pUnit:CastSpell(11969) 
end

function BloodElfSurveyor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodElfSurveyor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodElfSurveyor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6198, 1, "BloodElfSurveyor_OnCombat")
RegisterUnitEvent(6198, 2, "BloodElfSurveyor_OnLeaveCombat")
RegisterUnitEvent(6198, 3, "BloodElfSurveyor_OnKilledTarget")
RegisterUnitEvent(6198, 4, "BloodElfSurveyor_OnDied")