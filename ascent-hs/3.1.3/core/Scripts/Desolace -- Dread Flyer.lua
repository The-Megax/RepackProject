--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DreadFlyer_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadFlyer_Disarm", 10000, 0)
end

function DreadFlyer_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function DreadFlyer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadFlyer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadFlyer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4693, 1, "DreadFlyer_OnCombat")
RegisterUnitEvent(4693, 2, "DreadFlyer_OnLeaveCombat")
RegisterUnitEvent(4693, 3, "DreadFlyer_OnKilledTarget")
RegisterUnitEvent(4693, 4, "DreadFlyer_OnDied")