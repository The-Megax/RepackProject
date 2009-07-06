--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Rockfang_OnCombat(Unit, Event)
Unit:RegisterEvent("Rockfang_ChillingHowl", 10000, 0)
end

function Rockfang_ChillingHowl(pUnit, Event) 
pUnit:CastSpell(32918) 
end

function Rockfang_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rockfang_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rockfang_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25774, 1, "Rockfang_OnCombat")
RegisterUnitEvent(25774, 2, "Rockfang_OnLeaveCombat")
RegisterUnitEvent(25774, 3, "Rockfang_OnKilledTarget")
RegisterUnitEvent(25774, 4, "Rockfang_OnDied")