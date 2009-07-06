--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function PridewingWyvern_OnCombat(Unit, Event)
Unit:RegisterEvent("PridewingWyvern_CorrosivePoison", 10000, 0)
end

function PridewingWyvern_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function PridewingWyvern_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PridewingWyvern_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PridewingWyvern_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4012, 1, "PridewingWyvern_OnCombat")
RegisterUnitEvent(4012, 2, "PridewingWyvern_OnLeaveCombat")
RegisterUnitEvent(4012, 3, "PridewingWyvern_OnKilledTarget")
RegisterUnitEvent(4012, 4, "PridewingWyvern_OnDied")