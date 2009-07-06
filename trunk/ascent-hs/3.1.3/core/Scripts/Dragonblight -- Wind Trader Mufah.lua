--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WindTraderMufah_OnCombat(Unit, Event)
Unit:RegisterEvent("WindTraderMufah_Typhoon", 4000, 1)
end

function WindTraderMufah_Typhoon(pUnit, Event) 
pUnit:CastSpell(51817) 
end

function WindTraderMufah_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WindTraderMufah_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WindTraderMufah_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26496, 1, "WindTraderMufah_OnCombat")
RegisterUnitEvent(26496, 2, "WindTraderMufah_OnLeaveCombat")
RegisterUnitEvent(26496, 3, "WindTraderMufah_OnKilledTarget")
RegisterUnitEvent(26496, 4, "WindTraderMufah_OnDied")