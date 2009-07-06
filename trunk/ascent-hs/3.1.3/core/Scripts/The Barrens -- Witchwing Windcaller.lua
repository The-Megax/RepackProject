--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WitchwingWindcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingWindcaller_EnvelopingWinds", 10000, 0)
end

function WitchwingWindcaller_EnvelopingWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6728, pUnit:GetMainTank()) 
end

function WitchwingWindcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingWindcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingWindcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3280, 1, "WitchwingWindcaller_OnCombat")
RegisterUnitEvent(3280, 2, "WitchwingWindcaller_OnLeaveCombat")
RegisterUnitEvent(3280, 3, "WitchwingWindcaller_OnKilledTarget")
RegisterUnitEvent(3280, 4, "WitchwingWindcaller_OnDied")