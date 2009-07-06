--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function InjuredMammoth_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredMammoth_Trample", 6000, 0)
end

function InjuredMammoth_Trample(pUnit, Event) 
pUnit:CastSpell(51944) 
end

function InjuredMammoth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredMammoth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredMammoth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26711, 1, "InjuredMammoth_OnCombat")
RegisterUnitEvent(26711, 2, "InjuredMammoth_OnLeaveCombat")
RegisterUnitEvent(26711, 3, "InjuredMammoth_OnKilledTarget")
RegisterUnitEvent(26711, 4, "InjuredMammoth_OnDied")