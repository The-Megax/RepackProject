--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Lasher_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Lasher_Growth",1500,0)
end

function Lasher_Growth(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36604,pUnit:GetClosestPlayer())
end

function Lasher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Lasher_OnDied(Unit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20983, 1, "Lasher_OnEnterCombat")
RegisterUnitEvent (20983, 2, "Lasher_OnLeaveCombat")
RegisterUnitEvent (20983, 4, "Lasher_OnDied")