--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IronRuneAvenger_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneAvenger_RuneofRetribution", 3000, 1)
end

function IronRuneAvenger_RuneofRetribution(pUnit, Event) 
pUnit:CastSpell(52628) 
end

function IronRuneAvenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneAvenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneAvenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26786, 1, "IronRuneAvenger_OnCombat")
RegisterUnitEvent(26786, 2, "IronRuneAvenger_OnLeaveCombat")
RegisterUnitEvent(26786, 3, "IronRuneAvenger_OnKilledTarget")
RegisterUnitEvent(26786, 4, "IronRuneAvenger_OnDied")