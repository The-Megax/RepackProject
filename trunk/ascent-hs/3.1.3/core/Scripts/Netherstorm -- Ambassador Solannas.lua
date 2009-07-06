--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Ambassador_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ambassador_Fireball", 3000, 0)
end

function Ambassador_Fireball(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9053,pUnit:GetClosestPlayer())
end

function Ambassador_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ambassador_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20163, 1, "Ambassador_OnEnterCombat")
RegisterUnitEvent (20163, 2, "Ambassador_OnLeaveCombat")
RegisterUnitEvent (20163, 4, "Ambassador_OnDied")
