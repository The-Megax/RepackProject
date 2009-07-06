--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SkymasterBaeric_OnCombat(Unit, Event)
Unit:RegisterEvent("SkymasterBaeric_FieryIntellect", 2000, 1)
end

function SkymasterBaeric_FieryIntellect(pUnit, Event) 
pUnit:CastSpell(35917) 
end

function SkymasterBaeric_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkymasterBaeric_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkymasterBaeric_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30269, 1, "SkymasterBaeric_OnCombat")
RegisterUnitEvent(30269, 2, "SkymasterBaeric_OnLeaveCombat")
RegisterUnitEvent(30269, 3, "SkymasterBaeric_OnKilledTarget")
RegisterUnitEvent(30269, 4, "SkymasterBaeric_OnDied")