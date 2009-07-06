--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodfeatherWindWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherWindWitch_GustofWind", 8000, 0)
end

function BloodfeatherWindWitch_GustofWind(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6982, pUnit:GetMainTank()) 
end

function BloodfeatherWindWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherWindWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherWindWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2020, 1, "BloodfeatherWindWitch_OnCombat")
RegisterUnitEvent(2020, 2, "BloodfeatherWindWitch_OnLeaveCombat")
RegisterUnitEvent(2020, 3, "BloodfeatherWindWitch_OnKilledTarget")
RegisterUnitEvent(2020, 4, "BloodfeatherWindWitch_OnDied")