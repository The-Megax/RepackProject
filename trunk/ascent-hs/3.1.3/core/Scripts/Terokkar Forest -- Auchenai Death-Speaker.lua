--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AuchenaiDeathSpeaker_ShadowBolt(pUnit)
	pUnit:FullCastSpellOnTarget(9613)
end

function AuchenaiDeathSpeaker_OnEnterCombat(pUnit, event)
	local casttime = math.random(3500,5600)
	pUnit:RegisterEvent("AuchenaiDeathSpeaker_ShadowBolt", casttime, 0)
	pUnit:CastSpell(13787)
end

RegisterUnitEvent(21242, 1, "AuchenaiDeathSpeaker_OnEnterCombat")
