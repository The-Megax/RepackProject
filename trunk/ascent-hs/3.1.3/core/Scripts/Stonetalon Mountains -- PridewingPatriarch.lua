--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function PridewingPatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("PridewingPatriarch_CorrosivePoison", 10000, 0)
end

function PridewingPatriarch_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function PridewingPatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PridewingPatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PridewingPatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4015, 1, "PridewingPatriarch_OnCombat")
RegisterUnitEvent(4015, 2, "PridewingPatriarch_OnLeaveCombat")
RegisterUnitEvent(4015, 3, "PridewingPatriarch_OnKilledTarget")
RegisterUnitEvent(4015, 4, "PridewingPatriarch_OnDied")