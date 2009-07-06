--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IronRuneWeaver_OnCombat(Unit, Event)
Unit:RegisterEvent("IronRuneWeaver_RuneWeaving", 9000, 0)
end

function IronRuneWeaver_RuneWeaving(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52713, pUnit:GetMainTank()) 
end

function IronRuneWeaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronRuneWeaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronRuneWeaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26820, 1, "IronRuneWeaver_OnCombat")
RegisterUnitEvent(26820, 2, "IronRuneWeaver_OnLeaveCombat")
RegisterUnitEvent(26820, 3, "IronRuneWeaver_OnKilledTarget")
RegisterUnitEvent(26820, 4, "IronRuneWeaver_OnDied")