--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MakruraSnapclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("MarkuraSnapclaw_Claw",8000,0)
end

function MarkuraSnapclaw_Claw(pUnit,Event)
pUnit:FullCastSpellOnTarget(5424,pUnit:GetMainTank())
end

function MakruraSnapclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MakruraSnapclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MakruraSnapclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3105, 1, "MakruraSnapclaw_OnCombat")
RegisterUnitEvent(3105, 2, "MakruraSnapclaw_OnLeaveCombat")
RegisterUnitEvent(3105, 3, "MakruraSnapclaw_OnKilledTarget")
RegisterUnitEvent(3105, 4, "MakruraSnapclaw_OnDied")