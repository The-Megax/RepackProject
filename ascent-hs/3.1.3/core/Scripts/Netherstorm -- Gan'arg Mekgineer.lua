--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Mekgineer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Mekgineer_Drain",1000,0)
    pUnit:RegisterEvent("Mekgineer_Steal",1000,0)
end

function Mekgineer_Drain(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36825,pUnit:GetClosestPlayer())
end

function Mekgineer_Steal(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36208,pUnit:GetClosestPlayer())
end

function Mekgineer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Mekgineer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16949, 1, "Mekgineer_OnEnterCombat")
RegisterUnitEvent (16949, 2, "Mekgineer_OnLeaveCombat")
RegisterUnitEvent (16949, 4, "Mekgineer_OnDied")