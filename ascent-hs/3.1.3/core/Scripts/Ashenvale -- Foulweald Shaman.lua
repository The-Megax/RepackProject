--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FoulwealdShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdShaman_StrengthofEarthTotem", 2000, 1)
end

function FoulwealdShaman_StrengthofEarthTotem(pUnit, Event) 
pUnit:CastSpell(8160) 
end

function FoulwealdShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3748, 1, "FoulwealdShaman_OnCombat")
RegisterUnitEvent(3748, 2, "FoulwealdShaman_OnLeaveCombat")
RegisterUnitEvent(3748, 3, "FoulwealdShaman_OnKilledTarget")
RegisterUnitEvent(3748, 4, "FoulwealdShaman_OnDied")