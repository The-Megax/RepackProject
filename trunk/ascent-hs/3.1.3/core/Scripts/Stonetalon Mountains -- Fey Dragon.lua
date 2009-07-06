--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function FeyDragon_OnCombat(Unit, Event)
Unit:RegisterEvent("FeyDragon_NullifyMana", 6000, 0)
end

function FeyDragon_NullifyMana(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7994, pUnit:GetRandomPlayer(4)) 
end

function FeyDragon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FeyDragon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FeyDragon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4016, 1, "FeyDragon_OnCombat")
RegisterUnitEvent(4016, 2, "FeyDragon_OnLeaveCombat")
RegisterUnitEvent(4016, 3, "FeyDragon_OnKilledTarget")
RegisterUnitEvent(4016, 4, "FeyDragon_OnDied")