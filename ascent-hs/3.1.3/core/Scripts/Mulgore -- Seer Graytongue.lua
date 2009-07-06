--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SeerGraytongue_OnCombat(Unit, Event)
Unit:RegisterEvent("SeerGraytongue_MarkoftheWild", 1000, 1)
end

function SeerGraytongue_MarkoftheWild(pUnit, Event) 
pUnit:CastSpell(1126) 
end

function SeerGraytongue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeerGraytongue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeerGraytongue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2982, 1, "SeerGraytongue_OnCombat")
RegisterUnitEvent(2982, 2, "SeerGraytongue_OnLeaveCombat")
RegisterUnitEvent(2982, 3, "SeerGraytongue_OnKilledTarget")
RegisterUnitEvent(2982, 4, "SeerGraytongue_OnDied")