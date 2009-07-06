--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BaeldunAppraiser_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunAppraiser_LesserHeal", 5000, 0)
end

function BaeldunAppraiser_LesserHeal(pUnit, Event) 
pUnit:CastSpell(2052) 
end

function BaeldunAppraiser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunAppraiser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunAppraiser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2990, 1, "BaeldunAppraiser_OnCombat")
RegisterUnitEvent(2990, 2, "BaeldunAppraiser_OnLeaveCombat")
RegisterUnitEvent(2990, 3, "BaeldunAppraiser_OnKilledTarget")
RegisterUnitEvent(2990, 4, "BaeldunAppraiser_OnDied")