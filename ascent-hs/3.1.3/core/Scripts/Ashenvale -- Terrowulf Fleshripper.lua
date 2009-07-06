--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TerrowulfFleshripper_OnCombat(Unit, Event)
Unit:RegisterEvent("TerrowulfFleshripper_TendonRip", 8000, 0)
end

function TerrowulfFleshripper_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function TerrowulfFleshripper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TerrowulfFleshripper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TerrowulfFleshripper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3789, 1, "TerrowulfFleshripper_OnCombat")
RegisterUnitEvent(3789, 2, "TerrowulfFleshripper_OnLeaveCombat")
RegisterUnitEvent(3789, 3, "TerrowulfFleshripper_OnKilledTarget")
RegisterUnitEvent(3789, 4, "TerrowulfFleshripper_OnDied")