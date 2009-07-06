--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Master_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Master_Arrow",1000,0)
    pUnit:RegisterEvent("Master_Clip",1000,0)
    pUnit:RegisterEvent("Master_Shoot",1000,0)
end

function Master_Arrow(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35964,pUnit:GetClosestPlayer())
end

function Master_Clip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35963,pUnit:GetClosestPlayer())
end

function Master_Shoot(pUnit,Event)
    pUnit:FullCastSpellOnTarget(6660,pUnit:GetClosestPlayer())
end

function Master_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Master_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19705, 1, "Master_OnEnterCombat")
RegisterUnitEvent (19705, 2, "Master_OnLeaveCombat")
RegisterUnitEvent (19705, 4, "Master_OnDied")