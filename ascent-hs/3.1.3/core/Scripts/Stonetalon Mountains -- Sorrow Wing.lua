--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SorrowWing_OnCombat(Unit, Event)
Unit:RegisterEvent("SorrowWing_SoulRend", 6000, 1)
Unit:RegisterEvent("SorrowWing_DeadlyLeechPoison", 8000, 1)
end

function SorrowWing_SoulRend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3405, pUnit:GetMainTank()) 
end

function SorrowWing_DeadlyLeechPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3388, pUnit:GetMainTank()) 
end

function SorrowWing_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SorrowWing_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SorrowWing_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5928, 1, "SorrowWing_OnCombat")
RegisterUnitEvent(5928, 2, "SorrowWing_OnLeaveCombat")
RegisterUnitEvent(5928, 3, "SorrowWing_OnKilledTarget")
RegisterUnitEvent(5928, 4, "SorrowWing_OnDied")