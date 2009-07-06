--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SunfuryWarlock_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("SunfuryWarlock_Incinerate", 3000, 0)
	pUnit:RegisterEvent("SunfuryWarlock_ShadowBolt", 9000, 0)
end

function SunfuryWarlock_Incinerate(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32707,pUnit:GetClosestPlayer())
end

function SunfuryWarlock_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9613,pUnit:GetClosestPlayer())
end

function SunfuryWarlock_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function SunfuryWarlock_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21503, 1, "SunfuryWarlock_OnEnterCombat")
RegisterUnitEvent(21503, 2, "SunfuryWarlock_OnLeaveCombat")
RegisterUnitEvent(21503, 4, "SunfuryWarlock_OnDied")