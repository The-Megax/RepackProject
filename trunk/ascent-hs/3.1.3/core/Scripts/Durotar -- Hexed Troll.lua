--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HexedTroll_OnCombat(Unit, Event)
Unit:RegisterEvent("HexedTroll_Inmolate", 8000, 0)
end

function HexedTroll_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(348, pUnit:GetMainTank()) 
end

function HexedTroll_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HexedTroll_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HexedTroll_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3207, 1, "HexedTroll_OnCombat")
RegisterUnitEvent(3207, 2, "HexedTroll_OnLeaveCombat")
RegisterUnitEvent(3207, 3, "HexedTroll_OnKilledTarget")
RegisterUnitEvent(3207, 4, "HexedTroll_OnDied")