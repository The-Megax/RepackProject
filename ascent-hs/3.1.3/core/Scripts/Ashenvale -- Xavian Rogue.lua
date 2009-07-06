--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function XavianRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("XavianRogue_GiftoftheXavian", 13000, 0)
end

function XavianRogue_GiftoftheXavian(pUnit, Event) 
pUnit:CastSpell(6925) 
end

function XavianRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function XavianRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function XavianRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3752, 1, "XavianRogue_OnCombat")
RegisterUnitEvent(3752, 2, "XavianRogue_OnLeaveCombat")
RegisterUnitEvent(3752, 3, "XavianRogue_OnKilledTarget")
RegisterUnitEvent(3752, 4, "XavianRogue_OnDied")