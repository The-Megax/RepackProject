--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SilithidCreeperEgg_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidCreeperEgg_Suicide", 20000, 1)
Unit:RegisterEvent("SilithidCreeperEgg_SummonSilithidGrub", 4000, 1)
end

function SilithidCreeperEgg_Suicide(pUnit, Event) 
pUnit:CastSpell(7) 
end

function SilithidCreeperEgg_SummonSilithidGrub(pUnit, Event) 
pUnit:CastSpell(6588) 
end

function SilithidCreeperEgg_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidCreeperEgg_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidCreeperEgg_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5781, 1, "SilithidCreeperEgg_OnCombat")
RegisterUnitEvent(5781, 2, "SilithidCreeperEgg_OnLeaveCombat")
RegisterUnitEvent(5781, 3, "SilithidCreeperEgg_OnKilledTarget")
RegisterUnitEvent(5781, 4, "SilithidCreeperEgg_OnDied")