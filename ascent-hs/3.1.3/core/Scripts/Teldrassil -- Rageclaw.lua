--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Rageclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Rageclaw_BearForm", 1000, 1)
Unit:RegisterEvent("Rageclaw_Maul", 4000, 0)
end

function Rageclaw_BearForm(pUnit, Event) 
pUnit:CastSpell(7090) 
end

function Rageclaw_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12161, pUnit:GetMainTank()) 
end

function Rageclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rageclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rageclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7318, 1, "Rageclaw_OnCombat")
RegisterUnitEvent(7318, 2, "Rageclaw_OnLeaveCombat")
RegisterUnitEvent(7318, 3, "Rageclaw_OnKilledTarget")
RegisterUnitEvent(7318, 4, "Rageclaw_OnDied")