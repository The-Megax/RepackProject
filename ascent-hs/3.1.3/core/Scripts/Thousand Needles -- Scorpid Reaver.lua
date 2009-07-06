--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScorpidReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidReaver_Cleave", 4000, 0)
end

function ScorpidReaver_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function ScorpidReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4140, 1, "ScorpidReaver_OnCombat")
RegisterUnitEvent(4140, 2, "ScorpidReaver_OnLeaveCombat")
RegisterUnitEvent(4140, 3, "ScorpidReaver_OnKilledTarget")
RegisterUnitEvent(4140, 4, "ScorpidReaver_OnDied")