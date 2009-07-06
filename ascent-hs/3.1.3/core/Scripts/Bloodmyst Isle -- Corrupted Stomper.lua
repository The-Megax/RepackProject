--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CorruptedStomper_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedStomper_Stomp", 8000, 0)
end

function CorruptedStomper_Stomp(pUnit, Event) 
pUnit:CastSpell(31277) 
end

function CorruptedStomper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedStomper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedStomper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17353, 1, "CorruptedStomper_OnCombat")
RegisterUnitEvent(17353, 2, "CorruptedStomper_OnLeaveCombat")
RegisterUnitEvent(17353, 3, "CorruptedStomper_OnKilledTarget")
RegisterUnitEvent(17353, 4, "CorruptedStomper_OnDied")