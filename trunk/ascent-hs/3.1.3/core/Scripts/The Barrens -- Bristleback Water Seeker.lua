--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BristlebackWaterSeeker_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackWaterSeeker_FrostNova", 8000, 0)
end

function BristlebackWaterSeeker_FrostNova(pUnit, Event) 
pUnit:CastSpell(12748) 
end

function BristlebackWaterSeeker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackWaterSeeker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackWaterSeeker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3260, 1, "BristlebackWaterSeeker_OnCombat")
RegisterUnitEvent(3260, 2, "BristlebackWaterSeeker_OnLeaveCombat")
RegisterUnitEvent(3260, 3, "BristlebackWaterSeeker_OnKilledTarget")
RegisterUnitEvent(3260, 4, "BristlebackWaterSeeker_OnDied")