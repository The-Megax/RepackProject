--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WhirlingInvader_OnCombat(Unit, Event)
Unit:RegisterEvent("WhirlingInvader_Whirlwind", 6000, 0)
end

function WhirlingInvader_Whirlwind(pUnit, Event) 
pUnit:CastSpell(17207) 
end

function WhirlingInvader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WhirlingInvader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WhirlingInvader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14455, 1, "WhirlingInvader_OnCombat")
RegisterUnitEvent(14455, 2, "WhirlingInvader_OnLeaveCombat")
RegisterUnitEvent(14455, 3, "WhirlingInvader_OnKilledTarget")
RegisterUnitEvent(14455, 4, "WhirlingInvader_OnDied")