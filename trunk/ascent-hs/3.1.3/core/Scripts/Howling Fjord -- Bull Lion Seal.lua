--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BullLionSeal_OnCombat(Unit, Event)
Unit:RegisterEvent("BullLionSeal_FlipperThwack", 6000, 0)
end

function BullLionSeal_FlipperThwack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50169, pUnit:GetMainTank()) 
end

function BullLionSeal_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BullLionSeal_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BullLionSeal_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26866, 1, "BullLionSeal_OnCombat")
RegisterUnitEvent(26866, 2, "BullLionSeal_OnLeaveCombat")
RegisterUnitEvent(26866, 3, "BullLionSeal_OnKilledTarget")
RegisterUnitEvent(26866, 4, "BullLionSeal_OnDied")