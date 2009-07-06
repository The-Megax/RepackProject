--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Bonesunder_OnCombat(Unit, Event)
Unit:RegisterEvent("Bonesunder_BoneCrack", 10000, 0)
end

function Bonesunder_BoneCrack(pUnit, Event) 
pUnit:CastSpell(52080) 
end

function Bonesunder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bonesunder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bonesunder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27006, 1, "Bonesunder_OnCombat")
RegisterUnitEvent(27006, 2, "Bonesunder_OnLeaveCombat")
RegisterUnitEvent(27006, 3, "Bonesunder_OnKilledTarget")
RegisterUnitEvent(27006, 4, "Bonesunder_OnDied")