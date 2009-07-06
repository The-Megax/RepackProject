--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FelmuskShadowstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("FelmuskShadowstalker_OverwhelmingStench", 10000, 0)
end

function FelmuskShadowstalker_OverwhelmingStench(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6942, pUnit:GetMainTank()) 
end

function FelmuskShadowstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelmuskShadowstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelmuskShadowstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3763, 1, "FelmuskShadowstalker_OnCombat")
RegisterUnitEvent(3763, 2, "FelmuskShadowstalker_OnLeaveCombat")
RegisterUnitEvent(3763, 3, "FelmuskShadowstalker_OnKilledTarget")
RegisterUnitEvent(3763, 4, "FelmuskShadowstalker_OnDied")