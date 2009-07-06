--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NaxxramasNecrolord_OnCombat(Unit, Event)
Unit:RegisterEvent("NaxxramasNecrolord_ChaosBolt", 6000, 0)
end

function NaxxramasNecrolord_ChaosBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51287, pUnit:GetMainTank()) 
end

function NaxxramasNecrolord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NaxxramasNecrolord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NaxxramasNecrolord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27289, 1, "NaxxramasNecrolord_OnCombat")
RegisterUnitEvent(27289, 2, "NaxxramasNecrolord_OnLeaveCombat")
RegisterUnitEvent(27289, 3, "NaxxramasNecrolord_OnKilledTarget")
RegisterUnitEvent(27289, 4, "NaxxramasNecrolord_OnDied")