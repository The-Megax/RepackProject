--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SouthseaCannoneer_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaCannoneer_Shoot", 6000, 0)
end

function SouthseaCannoneer_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SouthseaCannoneer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaCannoneer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaCannoneer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3382, 1, "SouthseaCannoneer_OnCombat")
RegisterUnitEvent(3382, 2, "SouthseaCannoneer_OnLeaveCombat")
RegisterUnitEvent(3382, 3, "SouthseaCannoneer_OnKilledTarget")
RegisterUnitEvent(3382, 4, "SouthseaCannoneer_OnDied")