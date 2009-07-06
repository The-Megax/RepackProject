--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function XavianHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("XavianHellcaller_Fireball", 8000, 0)
Unit:RegisterEvent("XavianHellcaller_GiftoftheXavian", 13000, 0)
end

function XavianHellcaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function XavianHellcaller_GiftoftheXavian(pUnit, Event) 
pUnit:CastSpell(6925) 
end

function XavianHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function XavianHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function XavianHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3757, 1, "XavianHellcaller_OnCombat")
RegisterUnitEvent(3757, 2, "XavianHellcaller_OnLeaveCombat")
RegisterUnitEvent(3757, 3, "XavianHellcaller_OnKilledTarget")
RegisterUnitEvent(3757, 4, "XavianHellcaller_OnDied")