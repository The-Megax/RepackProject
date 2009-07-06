--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GlacialLieutenant_OnCombat(Unit, Event)
Unit:RegisterEvent("GlacialLieutenant_FrostNova", 8000, 0)
Unit:RegisterEvent("GlacialLieutenant_FrostShock", 6000, 0)
end

function GlacialLieutenant_FrostNova(pUnit, Event) 
pUnit:CastSpell(14907) 
end

function GlacialLieutenant_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function GlacialLieutenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlacialLieutenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlacialLieutenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26215, 1, "GlacialLieutenant_OnCombat")
RegisterUnitEvent(26215, 2, "GlacialLieutenant_OnLeaveCombat")
RegisterUnitEvent(26215, 3, "GlacialLieutenant_OnKilledTarget")
RegisterUnitEvent(26215, 4, "GlacialLieutenant_OnDied")