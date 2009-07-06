--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RedfangElder_OnCombat(Unit, Event)
Unit:RegisterEvent("RedfangElder_ChainHeal", 12000, 0)
Unit:RegisterEvent("RedfangElder_Hurricane", 10000, 0)
end

function RedfangElder_ChainHeal(pUnit, Event) 
pUnit:CastSpell(14900) 
end

function RedfangElder_Hurricane(pUnit, Event) 
pUnit:CastSpell(32717) 
end

function RedfangElder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RedfangElder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RedfangElder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26436, 1, "RedfangElder_OnCombat")
RegisterUnitEvent(26436, 2, "RedfangElder_OnLeaveCombat")
RegisterUnitEvent(26436, 3, "RedfangElder_OnKilledTarget")
RegisterUnitEvent(26436, 4, "RedfangElder_OnDied")