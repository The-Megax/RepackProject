--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Sunfury_Arcanist_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Sunfury_Arcanist_Arcane_Missiles", 6000, 0)
pUnit:RegisterEvent("Sunfury_Arcanist_Bloodcrystal_Surge", 10000, 0)
end

function Sunfury_Arcanist_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Sunfury_Arcanist_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Sunfury_Arcanist_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(20134, 1, "Sunfury_Arcanist_OnCombat")
RegisterUnitEvent(20134, 2, "Sunfury_Arcanist_OnLeaveCombat")
RegisterUnitEvent(20134, 3, "Sunfury_Arcanist_OnKillTarget")
RegisterUnitEvent(20134, 4, "Sunfury_Arcanist_OnDeath")

function Sunfury_Arcanist_Arcane_Missiles(pUnit, Event)
pUnit:FullCastSpellOnTarget(34447,pUnit:GetMainTank())
end

function Sunfury_Arcanist_Bloodcrystal_Surge(pUnit, Event)
pUnit:CastSpell(35778)
end
