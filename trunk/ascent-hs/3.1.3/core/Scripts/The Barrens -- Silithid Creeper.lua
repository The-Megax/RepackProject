--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SilithidCreeper_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidCreeper_SilithidCreeperEgg", 4000, 1)
end

function SilithidCreeper_SilithidCreeperEgg(pUnit, Event) 
pUnit:CastSpell(6587) 
end

function SilithidCreeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidCreeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidCreeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3250, 1, "SilithidCreeper_OnCombat")
RegisterUnitEvent(3250, 2, "SilithidCreeper_OnLeaveCombat")
RegisterUnitEvent(3250, 3, "SilithidCreeper_OnKilledTarget")
RegisterUnitEvent(3250, 4, "SilithidCreeper_OnDied")