--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SouthseaPrivateer_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaPrivateer_FireShot", 9000, 0)
Unit:RegisterEvent("SouthseaPrivateer_Shoot", 6000, 0)
end

function SouthseaPrivateer_FireShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6979, pUnit:GetMainTank()) 
end

function SouthseaPrivateer_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SouthseaPrivateer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaPrivateer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaPrivateer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3384, 1, "SouthseaPrivateer_OnCombat")
RegisterUnitEvent(3384, 2, "SouthseaPrivateer_OnLeaveCombat")
RegisterUnitEvent(3384, 3, "SouthseaPrivateer_OnKilledTarget")
RegisterUnitEvent(3384, 4, "SouthseaPrivateer_OnDied")