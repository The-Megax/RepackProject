--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EmissaryRomankhan_OnCombat(Unit, Event)
Unit:RegisterEvent("EmissaryRomankhan_Wilt", 15000, 0)
end

function EmissaryRomankhan_Wilt(pUnit, Event) 
pUnit:CastSpell(23772) 
end

function EmissaryRomankhan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmissaryRomankhan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmissaryRomankhan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14862, 1, "EmissaryRomankhan_OnCombat")
RegisterUnitEvent(14862, 2, "EmissaryRomankhan_OnLeaveCombat")
RegisterUnitEvent(14862, 3, "EmissaryRomankhan_OnKilledTarget")
RegisterUnitEvent(14862, 4, "EmissaryRomankhan_OnDied")