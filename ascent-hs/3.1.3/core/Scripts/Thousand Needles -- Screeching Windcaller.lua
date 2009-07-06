--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScreechingWindcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("ScreechingWindcaller_GustofWind", 10000, 0)
end

function ScreechingWindcaller_GustofWind(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6982, pUnit:GetMainTank()) 
end

function ScreechingWindcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScreechingWindcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScreechingWindcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4104, 1, "ScreechingWindcaller_OnCombat")
RegisterUnitEvent(4104, 2, "ScreechingWindcaller_OnLeaveCombat")
RegisterUnitEvent(4104, 3, "ScreechingWindcaller_OnKilledTarget")
RegisterUnitEvent(4104, 4, "ScreechingWindcaller_OnDied")