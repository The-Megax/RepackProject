--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AngratharNecrolord_OnCombat(Unit, Event)
Unit:RegisterEvent("AngratharNecrolord_ShadowBolt", 7000, 0)
end

function AngratharNecrolord_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AngratharNecrolord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AngratharNecrolord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AngratharNecrolord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27603, 1, "AngratharNecrolord_OnCombat")
RegisterUnitEvent(27603, 2, "AngratharNecrolord_OnLeaveCombat")
RegisterUnitEvent(27603, 3, "AngratharNecrolord_OnKilledTarget")
RegisterUnitEvent(27603, 4, "AngratharNecrolord_OnDied")