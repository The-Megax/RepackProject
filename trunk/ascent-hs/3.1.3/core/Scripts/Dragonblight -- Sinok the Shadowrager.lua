--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SinoktheShadowrager_OnCombat(Unit, Event)
Unit:RegisterEvent("SinoktheShadowrager_BlinkStrike", 6000, 0)
Unit:RegisterEvent("SinoktheShadowrager_RagingShadows", 8000, 0)
end

function SinoktheShadowrager_BlinkStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49961, pUnit:GetMainTank()) 
end

function SinoktheShadowrager_RagingShadows(pUnit, Event) 
pUnit:CastSpell(51622) 
end

function SinoktheShadowrager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SinoktheShadowrager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SinoktheShadowrager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26771, 1, "SinoktheShadowrager_OnCombat")
RegisterUnitEvent(26771, 2, "SinoktheShadowrager_OnLeaveCombat")
RegisterUnitEvent(26771, 3, "SinoktheShadowrager_OnKilledTarget")
RegisterUnitEvent(26771, 4, "SinoktheShadowrager_OnDied")