--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WintersSister_OnCombat(Unit, Event)
Unit:RegisterEvent("WintersSister_FrostShock", 6000, 0)
end

function WintersSister_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function WintersSister_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WintersSister_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WintersSister_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26456, 1, "WintersSister_OnCombat")
RegisterUnitEvent(26456, 2, "WintersSister_OnLeaveCombat")
RegisterUnitEvent(26456, 3, "WintersSister_OnKilledTarget")
RegisterUnitEvent(26456, 4, "WintersSister_OnDied")