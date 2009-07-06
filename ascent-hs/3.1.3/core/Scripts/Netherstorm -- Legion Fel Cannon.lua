--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Cannon_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Cannon_Blast",3000,0)
end

function Cannon_Blast(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36238,pUnit:GetClosestPlayer())
end

function Cannon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Cannon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21233, 1, "Cannon_OnEnterCombat")
RegisterUnitEvent (21233, 2, "Cannon_OnLeaveCombat")
RegisterUnitEvent (21233, 4, "Cannon_OnDied")