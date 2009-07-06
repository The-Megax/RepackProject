--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IronRuneSmith_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneSmith_LightningCharged", 4000, 1)
Unit:RegisterEvent("IronRuneSmith_SmeltRune", 10000, 0)
end

function IronRuneSmith_LightningCharged(pUnit, Event) 
pUnit:CastSpell(52701) 
end

function IronRuneSmith_SmeltRune(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52699, pUnit:GetMainTank()) 
end

function IronRuneSmith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneSmith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneSmith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26408, 1, "IronRuneSmith_OnCombat")
RegisterUnitEvent(26408, 2, "IronRuneSmith_OnLeaveCombat")
RegisterUnitEvent(26408, 3, "IronRuneSmith_OnKilledTarget")
RegisterUnitEvent(26408, 4, "IronRuneSmith_OnDied")