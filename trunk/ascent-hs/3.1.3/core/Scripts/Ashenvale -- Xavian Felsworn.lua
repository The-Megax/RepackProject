--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function XavianFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("XavianFelsworn_Corruption", 8000, 0)
Unit:RegisterEvent("XavianFelsworn_GiftoftheXavian", 13000, 0)
end

function XavianFelsworn_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6223, pUnit:GetMainTank()) 
end

function XavianFelsworn_GiftoftheXavian(pUnit, Event) 
pUnit:CastSpell(6925) 
end

function XavianFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function XavianFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function XavianFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3755, 1, "XavianFelsworn_OnCombat")
RegisterUnitEvent(3755, 2, "XavianFelsworn_OnLeaveCombat")
RegisterUnitEvent(3755, 3, "XavianFelsworn_OnKilledTarget")
RegisterUnitEvent(3755, 4, "XavianFelsworn_OnDied")