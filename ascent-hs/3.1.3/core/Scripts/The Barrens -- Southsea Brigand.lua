--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SouthseaBrigand_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaBrigand_Backhand", 8000, 0)
end

function SouthseaBrigand_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function SouthseaBrigand_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaBrigand_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaBrigand_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3381, 1, "SouthseaBrigand_OnCombat")
RegisterUnitEvent(3381, 2, "SouthseaBrigand_OnLeaveCombat")
RegisterUnitEvent(3381, 3, "SouthseaBrigand_OnKilledTarget")
RegisterUnitEvent(3381, 4, "SouthseaBrigand_OnDied")