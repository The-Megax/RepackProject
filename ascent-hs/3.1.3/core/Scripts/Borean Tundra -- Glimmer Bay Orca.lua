--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GlimmerBayOrca_OnCombat(Unit, Event)
Unit:RegisterEvent("GlimmerBayOrca_FlipperThwack", 8000, 0)
end

function GlimmerBayOrca_FlipperThwack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50169, pUnit:GetMainTank()) 
end

function GlimmerBayOrca_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlimmerBayOrca_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlimmerBayOrca_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25204, 1, "GlimmerBayOrca_OnCombat")
RegisterUnitEvent(25204, 2, "GlimmerBayOrca_OnLeaveCombat")
RegisterUnitEvent(25204, 3, "GlimmerBayOrca_OnKilledTarget")
RegisterUnitEvent(25204, 4, "GlimmerBayOrca_OnDied")