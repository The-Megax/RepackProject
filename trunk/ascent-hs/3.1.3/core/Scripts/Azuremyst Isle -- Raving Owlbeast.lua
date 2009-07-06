--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RavingOwlbeast_OnCombat(Unit, Event)
Unit:RegisterEvent("RavingOwlbeast_Enrage", 10000, 0)
end

function RavingOwlbeast_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function RavingOwlbeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RavingOwlbeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RavingOwlbeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17188, 1, "RavingOwlbeast_OnCombat")
RegisterUnitEvent(17188, 2, "RavingOwlbeast_OnLeaveCombat")
RegisterUnitEvent(17188, 3, "RavingOwlbeast_OnKilledTarget")
RegisterUnitEvent(17188, 4, "RavingOwlbeast_OnDied")