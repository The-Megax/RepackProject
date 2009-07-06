--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RoanaukIcemist_OnCombat(Unit, Event)
Unit:RegisterEvent("RoanaukIcemist_GloryoftheAncestors", 5000, 1)
Unit:RegisterEvent("RoanaukIcemist_IcemistsBlessing", 10000, 0)
end

function RoanaukIcemist_GloryoftheAncestors(pUnit, Event) 
pUnit:CastSpell(47378) 
end

function RoanaukIcemist_IcemistsBlessing(pUnit, Event) 
pUnit:CastSpell(47379) 
end

function RoanaukIcemist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RoanaukIcemist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RoanaukIcemist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26654, 1, "RoanaukIcemist_OnCombat")
RegisterUnitEvent(26654, 2, "RoanaukIcemist_OnLeaveCombat")
RegisterUnitEvent(26654, 3, "RoanaukIcemist_OnKilledTarget")
RegisterUnitEvent(26654, 4, "RoanaukIcemist_OnDied")