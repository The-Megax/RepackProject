--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Ray_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ray_Drain",1000,0)
    pUnit:RegisterEvent("Ray_Shock",1000,0)
    pUnit:RegisterEvent("Ray_Sting",1000,0)
end

function Ray_Drain(pUnit,Event)
    pUnit:FullCastSpellOnTarget(17008,pUnit:GetClosestPlayer())
end

function Ray_Shock(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35334,pUnit:GetClosestPlayer())
end

function Ray_Sting(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36659,pUnit:GetClosestPlayer())
end

function Ray_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ray_OnDied(Unit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18880, 1, "Ray_OnEnterCombat")
RegisterUnitEvent (18880, 2, "Ray_OnLeaveCombat")
RegisterUnitEvent (18880, 4, "Ray_OnDied")