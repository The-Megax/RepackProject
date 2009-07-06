--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Sunfury_Arch_Mage_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Sunfury_Arch_Mage_Nova", 10000, 0)
pUnit:RegisterEvent("Sunfury_Arch_Mage_Fiery_Intellect", 1000, (1))
pUnit:RegisterEvent("Sunfury_Arch_Mage_Fireball", 4000, 0)
end

function Sunfury_Arch_Mage_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Sunfury_Arch_Mage_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Sunfury_Arch_Mage_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(20135, 1, "Sunfury_Arch_Mage_OnCombat")
RegisterUnitEvent(20135, 2, "Sunfury_Arch_Mage_OnLeaveCombat")
RegisterUnitEvent(20135, 3, "Sunfury_Arch_Mage_OnKillTarget")
RegisterUnitEvent(20135, 4, "Sunfury_Arch_Mage_OnDeath")

function Sunfury_Arch_Mage_Nova(pUnit, Event)
pUnit:CastSpell(11831)
end

function Sunfury_Arch_Mage_Fiery_Intellect(pUnit, Event)
pUnit:CastSpell(35917)
end

function Sunfury_Arch_Mage_Fireball(pUnit, Event)
pUnit:FullCastSpellOnTarget(20823,pUnit:GetMainTank())
end
