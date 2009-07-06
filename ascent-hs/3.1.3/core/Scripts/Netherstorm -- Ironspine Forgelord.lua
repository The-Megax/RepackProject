--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Forgelord_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Forgelord_Hammer",1000,0)
    pUnit:RegisterEvent("Forgelord_Slam",1900,0)
    pUnit:RegisterEvent("Forgelord_Toughen",1000,0)
end

function Forgelord_Hammer(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36251,pUnit:GetClosestPlayer())
end

function Forgelord_Slam(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37179,pUnit:GetClosestPlayer())
end

function Forgelord_Toughen(pUnit,Event)
    pUnit:CastSpell(33962)
end

function Forgelord_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Forgelord_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20928, 1, "Forgelord_OnEnterCombat")
RegisterUnitEvent (20928, 2, "Forgelord_OnLeaveCombat")
RegisterUnitEvent (20928, 4, "Forgelord_OnDied")