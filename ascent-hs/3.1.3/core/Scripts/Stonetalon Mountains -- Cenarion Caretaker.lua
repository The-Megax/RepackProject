--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CenarionCaretaker_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionCaretaker_Maul", 5000, 0)
Unit:RegisterEvent("CenarionCaretaker_BearForm", 2000, 1)
Unit:RegisterEvent("CenarionCaretaker_Thorns", 1000, 1)
end

function CenarionCaretaker_BearForm(pUnit, Event) 
pUnit:CastSpell(7090) 
end

function CenarionCaretaker_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12616, pUnit:GetMainTank()) 
end

function CenarionCaretaker_Thorns(pUnit, Event) 
pUnit:CastSpell(782) 
end

function CenarionCaretaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionCaretaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionCaretaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4050, 1, "CenarionCaretaker_OnCombat")
RegisterUnitEvent(4050, 2, "CenarionCaretaker_OnLeaveCombat")
RegisterUnitEvent(4050, 3, "CenarionCaretaker_OnKilledTarget")
RegisterUnitEvent(4050, 4, "CenarionCaretaker_OnDied")