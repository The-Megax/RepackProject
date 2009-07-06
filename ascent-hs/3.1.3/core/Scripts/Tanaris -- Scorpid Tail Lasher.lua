--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScorpidTailLasher_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidTailLasher_Lash", 8000, 0)
end

function ScorpidTailLasher_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6607, pUnit:GetMainTank()) 
end

function ScorpidTailLasher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidTailLasher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidTailLasher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5423, 1, "ScorpidTailLasher_OnCombat")
RegisterUnitEvent(5423, 2, "ScorpidTailLasher_OnLeaveCombat")
RegisterUnitEvent(5423, 3, "ScorpidTailLasher_OnKilledTarget")
RegisterUnitEvent(5423, 4, "ScorpidTailLasher_OnDied")