--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CorruptedScorpid_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedScorpid_NoxiousCatalyst", 10000, 0)
end

function CorruptedScorpid_NoxiousCatalyst(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5413, pUnit:GetMainTank()) 
end

function CorruptedScorpid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedScorpid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedScorpid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3226, 1, "CorruptedScorpid_OnCombat")
RegisterUnitEvent(3226, 2, "CorruptedScorpid_OnLeaveCombat")
RegisterUnitEvent(3226, 3, "CorruptedScorpid_OnKilledTarget")
RegisterUnitEvent(3226, 4, "CorruptedScorpid_OnDied")