--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LieutenantTazinni_OnCombat(Unit, Event)
Unit:RegisterEvent("LieutenantTazinni_DragonsBreath", 7000, 0)
Unit:RegisterEvent("LieutenantTazinni_FrostfireBolt", 8000, 0)
end

function LieutenantTazinni_DragonsBreath(pUnit, Event) 
pUnit:CastSpell(35250) 
end

function LieutenantTazinni_FrostfireBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51779, pUnit:GetMainTank()) 
end

function LieutenantTazinni_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LieutenantTazinni_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LieutenantTazinni_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26815, 1, "LieutenantTazinni_OnCombat")
RegisterUnitEvent(26815, 2, "LieutenantTazinni_OnLeaveCombat")
RegisterUnitEvent(26815, 3, "LieutenantTazinni_OnKilledTarget")
RegisterUnitEvent(26815, 4, "LieutenantTazinni_OnDied")