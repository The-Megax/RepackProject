--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GorehooftheBlack_OnCombat(Unit, Event)
Unit:RegisterEvent("GorehooftheBlack_WarStomp", 8000, 0)
end

function GorehooftheBlack_WarStomp(pUnit, Event) 
pUnit:CastSpell(45) 
end

function GorehooftheBlack_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorehooftheBlack_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorehooftheBlack_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11914, 1, "GorehooftheBlack_OnCombat")
RegisterUnitEvent(11914, 2, "GorehooftheBlack_OnLeaveCombat")
RegisterUnitEvent(11914, 3, "GorehooftheBlack_OnKilledTarget")
RegisterUnitEvent(11914, 4, "GorehooftheBlack_OnDied")