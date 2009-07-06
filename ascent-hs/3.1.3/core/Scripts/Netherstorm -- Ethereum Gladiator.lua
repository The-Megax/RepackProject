--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Gladiator_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Gladiator_Cleave",1000,0)
    pUnit:RegisterEvent("Gladiator_Hamstring",1000,0)
    pUnit:RegisterEvent("Gladiator_Strike",1000,0)
end

function Gladiator_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15284,pUnit:GetClosestPlayer())
end

function Gladiator_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9080,pUnit:GetClosestPlayer())
end

function Gladiator_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(16856,pUnit:GetClosestPlayer())
end

function Gladiator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Gladiator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20854, 1, "Gladiator_OnEnterCombat")
RegisterUnitEvent (20854, 2, "Gladiator_OnEnterCombat")
RegisterUnitEvent (20854, 4, "Gladiator_OnEnterCombat")