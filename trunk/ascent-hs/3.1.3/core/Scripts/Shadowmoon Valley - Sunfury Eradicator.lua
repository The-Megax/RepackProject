--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SunfuryEradicator_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(38008)
	pUnit:RegisterEvent("SunfuryEradicator_FlashHeal", 15000, 0)
end

function SunfuryEradicator_FlashHeal(pUnit,Event)
	pUnit:FullCastSpellOnTarget(17137,pUnit:GetRandomFriend())
end

function SunfuryEradicator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function SunfuryEradicator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21742, 1, "SunfuryEradicator_OnEnterCombat")
RegisterUnitEvent(21742, 2, "SunfuryEradicator_OnLeaveCombat")
RegisterUnitEvent(21742, 4, "SunfuryEradicator_OnDied")