--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IronRuneShaper_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneShaper_MoldRune", 3000, 1)
end

function IronRuneShaper_MoldRune(pUnit, Event) 
pUnit:CastSpell(52622) 
end

function IronRuneShaper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneShaper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneShaper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26270, 1, "IronRuneShaper_OnCombat")
RegisterUnitEvent(26270, 2, "IronRuneShaper_OnLeaveCombat")
RegisterUnitEvent(26270, 3, "IronRuneShaper_OnKilledTarget")
RegisterUnitEvent(26270, 4, "IronRuneShaper_OnDied")