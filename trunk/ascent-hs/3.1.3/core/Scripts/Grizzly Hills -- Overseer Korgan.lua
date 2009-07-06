--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OverseerKorgan_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerKorgan_CallLightning", 6000, 0)
Unit:RegisterEvent("OverseerKorgan_RevitalizingRune", 10000, 0)
end

function OverseerKorgan_CallLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32018, pUnit:GetMainTank()) 
end

function OverseerKorgan_RevitalizingRune(pUnit, Event) 
pUnit:CastSpell(52714) 
end

function OverseerKorgan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerKorgan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerKorgan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26921, 1, "OverseerKorgan_OnCombat")
RegisterUnitEvent(26921, 2, "OverseerKorgan_OnLeaveCombat")
RegisterUnitEvent(26921, 3, "OverseerKorgan_OnKilledTarget")
RegisterUnitEvent(26921, 4, "OverseerKorgan_OnDied")