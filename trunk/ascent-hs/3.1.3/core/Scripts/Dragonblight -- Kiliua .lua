--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function KoltiraDeathweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("KoltiraDeathweaver_WorldofShadows", 5000, 1)
end

function KoltiraDeathweaver_WorldofShadows(pUnit, Event) 
pUnit:CastSpell(47740) 
end

function KoltiraDeathweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KoltiraDeathweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KoltiraDeathweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26581, 1, "KoltiraDeathweaver_OnCombat")
RegisterUnitEvent(26581, 2, "KoltiraDeathweaver_OnLeaveCombat")
RegisterUnitEvent(26581, 3, "KoltiraDeathweaver_OnKilledTarget")
RegisterUnitEvent(26581, 4, "KoltiraDeathweaver_OnDied")