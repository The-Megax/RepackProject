--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScorpidTerror_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidTerror_Terrify", 10000, 0)
end

function ScorpidTerror_Terrify(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7399, pUnit:GetMainTank()) 
end

function ScorpidTerror_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidTerror_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidTerror_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4139, 1, "ScorpidTerror_OnCombat")
RegisterUnitEvent(4139, 2, "ScorpidTerror_OnLeaveCombat")
RegisterUnitEvent(4139, 3, "ScorpidTerror_OnKilledTarget")
RegisterUnitEvent(4139, 4, "ScorpidTerror_OnDied")