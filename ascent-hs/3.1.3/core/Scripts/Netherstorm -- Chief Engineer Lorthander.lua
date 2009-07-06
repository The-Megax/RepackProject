--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Chief_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Chief_Glaive",1000,0)
end

function Chief_Glaive(pUnit,Event)
    pUnit:FullCastSpellOnTarget(38204,pUnit:GetClosestPlayer())
end

function Chief_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Chief_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18697, 1, "Chief_OnEnterCombat")
RegisterUnitEvent (18697, 2, "Chief_OnLeaveCombat")
RegisterUnitEvent (18697, 4, "Chief_OnDied")
