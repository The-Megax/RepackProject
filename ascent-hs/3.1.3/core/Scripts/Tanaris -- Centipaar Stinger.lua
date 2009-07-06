--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CentipaarStinger_OnCombat(Unit, Event)
Unit:RegisterEvent("CentipaarStinger_VenomSting", 10000, 0)
Unit:RegisterEvent("CentipaarStinger_Thrash", 6000, 0)
end

function CentipaarStinger_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function CentipaarStinger_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CentipaarStinger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CentipaarStinger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CentipaarStinger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5456, 1, "CentipaarStinger_OnCombat")
RegisterUnitEvent(5456, 2, "CentipaarStinger_OnLeaveCombat")
RegisterUnitEvent(5456, 3, "CentipaarStinger_OnKilledTarget")
RegisterUnitEvent(5456, 4, "CentipaarStinger_OnDied")