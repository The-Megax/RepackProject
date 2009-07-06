--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CeleaFrozenmane_OnCombat(Unit, Event)
Unit:RegisterEvent("CeleaFrozenmane_Shoot", 6000, 0)
end

function CeleaFrozenmane_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22121, pUnit:GetMainTank()) 
end

function CeleaFrozenmane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CeleaFrozenmane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CeleaFrozenmane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24032, 1, "CeleaFrozenmane_OnCombat")
RegisterUnitEvent(24032, 2, "CeleaFrozenmane_OnLeaveCombat")
RegisterUnitEvent(24032, 3, "CeleaFrozenmane_OnKilledTarget")
RegisterUnitEvent(24032, 4, "CeleaFrozenmane_OnDied")