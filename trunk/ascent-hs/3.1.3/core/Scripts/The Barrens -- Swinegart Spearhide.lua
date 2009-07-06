--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SwinegartSpearhide_OnCombat(Unit, Event)
Unit:RegisterEvent("SwinegartSpearhide_PierceArmor", 10000, 0)
end

function SwinegartSpearhide_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function SwinegartSpearhide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SwinegartSpearhide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SwinegartSpearhide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5864, 1, "SwinegartSpearhide_OnCombat")
RegisterUnitEvent(5864, 2, "SwinegartSpearhide_OnLeaveCombat")
RegisterUnitEvent(5864, 3, "SwinegartSpearhide_OnKilledTarget")
RegisterUnitEvent(5864, 4, "SwinegartSpearhide_OnDied")