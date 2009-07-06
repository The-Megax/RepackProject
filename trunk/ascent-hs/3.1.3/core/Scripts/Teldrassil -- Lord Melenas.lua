--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LordMelenas_OnCombat(Unit, Event)
Unit:RegisterEvent("LordMelenas_CatForm", 1000, 1)
Unit:RegisterEvent("LordMelenas_Rake", 6000, 0)
Unit:RegisterEvent("LordMelenas_Rejuvenation", 12000, 0)
end

function LordMelenas_CatForm(pUnit, Event) 
pUnit:CastSpell(5759) 
end

function LordMelenas_Rake(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1822, pUnit:GetMainTank()) 
end

function LordMelenas_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(774) 
end

function LordMelenas_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LordMelenas_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LordMelenas_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2038, 1, "LordMelenas_OnCombat")
RegisterUnitEvent(2038, 2, "LordMelenas_OnLeaveCombat")
RegisterUnitEvent(2038, 3, "LordMelenas_OnKilledTarget")
RegisterUnitEvent(2038, 4, "LordMelenas_OnDied")