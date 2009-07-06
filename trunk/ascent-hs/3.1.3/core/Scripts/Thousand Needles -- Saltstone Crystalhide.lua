--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SaltstoneCrystalhide_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltstoneCrystalhide_ManaBurn", 6000, 0)
end

function SaltstoneCrystalhide_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8129, pUnit:GetRandomPlayer(4)) 
end

function SaltstoneCrystalhide_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltstoneCrystalhide_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltstoneCrystalhide_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4151, 1, "SaltstoneCrystalhide_OnCombat")
RegisterUnitEvent(4151, 2, "SaltstoneCrystalhide_OnLeaveCombat")
RegisterUnitEvent(4151, 3, "SaltstoneCrystalhide_OnKilledTarget")
RegisterUnitEvent(4151, 4, "SaltstoneCrystalhide_OnDied")