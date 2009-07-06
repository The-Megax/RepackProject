--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SeasonedMagister_OnEnterCombat(pUnit,Event)
	pUnit:registerEvent("SeasonedMagister_Fireball", 3000, 0)
end

function SeasonedMagister_Fireball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15228,pUnit:GetClosestPlayer())
end

function SeasonedMagister_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function SeasonedMagister_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22863, 1, "SeasonedMagister_OnEnterCombat")
RegisterUnitEvent(22863, 2, "SeasonedMagister_OnLeaveCombat")
RegisterUnitEvent(22863, 4, "SeasonedMagister_OnDied")