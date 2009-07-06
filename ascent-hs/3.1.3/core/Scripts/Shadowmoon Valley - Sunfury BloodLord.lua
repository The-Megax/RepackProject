--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SunfuryBloodLord_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("SunfuryBloodLord_DebilitatingStrike", 15000, 0)
	pUnit:RegisterEvent("SunfuryBloodLord_TorrentOfFlames", 5000, 0)
end

function SunfuryBloodLord_DebilitatingStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37577,pUnit:GetClosestPlayer())
end

function SunfuryBloodLord_TorrentOfFlames(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36104,pUnit:GetClosestPlayer())
end

function SunfuryBloodLord_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function SunfuryBloodLord_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21743, 1, "SunfuryBloodLord_OnEnterCombat")
RegisterUnitEvent(21743, 2, "SunfuryBloodLord_OnLeaveCombat")
RegisterUnitEvent(21743, 4, "SunfuryBloodLord_OnDied")