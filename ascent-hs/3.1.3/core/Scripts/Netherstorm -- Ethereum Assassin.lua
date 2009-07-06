--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Assassin_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Assassin_Kick",1000,0)
    pUnit:RegisterEvent("Assassin_Warp",1000,0)
end

function Assassin_Kick(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34802,pUnit:GetClosestPlayer())
end

function Assassin_Warp(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32920,pUnit:GetClosestPlayer())
end

function Assassin_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Assassin_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20452, 1, "Assassin_OnEnterCombat")
RegisterUnitEvent (20452, 2, "Assassin_OnEnterCombat")
RegisterUnitEvent (20452, 4, "Assassin_OnEnterCombat")