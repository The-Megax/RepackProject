--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DeathFlayer_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathFlayer_VenomSting", 8000, 0)
end

function DeathFlayer_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function DeathFlayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathFlayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathFlayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5823, 1, "DeathFlayer_OnCombat")
RegisterUnitEvent(5823, 2, "DeathFlayer_OnLeaveCombat")
RegisterUnitEvent(5823, 3, "DeathFlayer_OnKilledTarget")
RegisterUnitEvent(5823, 4, "DeathFlayer_OnDied")