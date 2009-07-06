--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Morug_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Morug_Blade",1500,0)
    pUnit:RegisterEvent("Morug_Spray",1000,0)
end

function Morug_Blade(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36228,pUnit:GetClosestPlayer())
end

function Morug_Spray(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34261,pUnit:GetClosestPlayer())
end

function Morug_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Morug_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20800, 1, "Morug_OnEnterCombat")
RegisterUnitEvent (20800, 2, "Morug_OnLeaveCombat")
RegisterUnitEvent (20800, 4, "Morug_OnDied")