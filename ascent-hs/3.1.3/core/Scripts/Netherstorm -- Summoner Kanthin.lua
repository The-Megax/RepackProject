--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Summoner_Kanthin_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Summoner_Kanthin_Fireball", 4000, 0)
pUnit:RegisterEvent("Summoner_Kanthin_Nova", 10000, 0)
pUnit:RegisterEvent("Summoner_Kanthin_Pyroblast", 7000, 0)
end

function Summoner_Kanthin_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Summoner_Kanthin_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Summoner_Kanthin_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(19657, 1, "Summoner_Kanthin_OnCombat")
RegisterUnitEvent(19657, 2, "Summoner_Kanthin_OnLeaveCombat")
RegisterUnitEvent(19657, 3, "Summoner_Kanthin_OnKillTarget")
RegisterUnitEvent(19657, 4, "Summoner_Kanthin_OnDeath")

function Summoner_Kanthin_Fireball(pUnit, Event)
pUnit:FullCastSpellOnTarget(19816,pUnit:GetClosestPlayer())
end

function Summoner_Kanthin_Nova(pUnit, Event)
pUnit:FullCastSpellOnTarget(19657,pUnit:GetMainTank())
end

function Summoner_Kanthin_Pyroblast(pUnit, Event)
pUnit:FullCastSpellOnTarget(17273,pUnit:GetClosestPlayer())
end
