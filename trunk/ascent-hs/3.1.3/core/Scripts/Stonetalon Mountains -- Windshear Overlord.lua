--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WindshearOverlord_OnCombat(Unit, Event)
Unit:RegisterEvent("WindshearOverlord_BattleFury", 2000, 1)
end

function WindshearOverlord_BattleFury(pUnit, Event) 
pUnit:CastSpell(3631) 
end

function WindshearOverlord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WindshearOverlord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WindshearOverlord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4004, 1, "WindshearOverlord_OnCombat")
RegisterUnitEvent(4004, 2, "WindshearOverlord_OnLeaveCombat")
RegisterUnitEvent(4004, 3, "WindshearOverlord_OnKilledTarget")
RegisterUnitEvent(4004, 4, "WindshearOverlord_OnDied")