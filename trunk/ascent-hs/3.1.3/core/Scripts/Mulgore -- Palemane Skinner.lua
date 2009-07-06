--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function PalemaneSkinner_OnCombat(Unit, Event)
Unit:RegisterEvent("PalemaneSkinner_Rejuvenation", 10000, 0)
end

function PalemaneSkinner_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(774) 
end

function PalemaneSkinner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PalemaneSkinner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PalemaneSkinner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2950, 1, "PalemaneSkinner_OnCombat")
RegisterUnitEvent(2950, 2, "PalemaneSkinner_OnLeaveCombat")
RegisterUnitEvent(2950, 3, "PalemaneSkinner_OnKilledTarget")
RegisterUnitEvent(2950, 4, "PalemaneSkinner_OnDied")