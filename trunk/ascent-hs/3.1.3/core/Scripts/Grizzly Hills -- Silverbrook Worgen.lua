--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SilverbrookWorgen_OnCombat(Unit, Event)
Unit:RegisterEvent("SilverbrookWorgen_Dash", 10000, 0)
end

function SilverbrookWorgen_Dash(pUnit, Event) 
pUnit:CastSpell(36589) 
end

function SilverbrookWorgen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilverbrookWorgen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilverbrookWorgen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(47417, 1, "SilverbrookWorgen_OnCombat")
RegisterUnitEvent(47417, 2, "SilverbrookWorgen_OnLeaveCombat")
RegisterUnitEvent(47417, 3, "SilverbrookWorgen_OnKilledTarget")
RegisterUnitEvent(47417, 4, "SilverbrookWorgen_OnDied")