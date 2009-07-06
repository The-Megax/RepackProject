--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Negatron_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Negatron_Charge",1000,(1))
    pUnit:RegisterEvent("Negatron_Demolish",1000,0)
    pUnit:RegisterEvent("Negatron_Quake",1000,0)
    pUnit:RegisterEvent("Negatron_Enrage",1000,0)
end

function Negatron_Charge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35570,pUnit:GetClosestPlayer())
end

function Negatron_Demolish(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34625,pUnit:GetClosestPlayer())
end

function Negatron_Quake(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35565,pUnit:GetClosestPlayer())
end

function Negatron_Enrage(pUnit,Event)
    pUnit:CastSpell(34624)
end

function Negatron_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Negatron_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19851, 1, "Negatron_OnEnterCombat")
RegisterUnitEvent (19851, 2, "Negatron_OnLeaveCombat")
RegisterUnitEvent (19851, 4, "Negatron_OnDied")