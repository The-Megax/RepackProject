--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MammothCalf_OnCombat(Unit, Event)
Unit:RegisterEvent("MammothCalf_Trample", 6000, 0)
end

function MammothCalf_Trample(pUnit, Event) 
pUnit:CastSpell(15550) 
end

function MammothCalf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MammothCalf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MammothCalf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24613, 1, "MammothCalf_OnCombat")
RegisterUnitEvent(24613, 2, "MammothCalf_OnLeaveCombat")
RegisterUnitEvent(24613, 3, "MammothCalf_OnKilledTarget")
RegisterUnitEvent(24613, 4, "MammothCalf_OnDied")