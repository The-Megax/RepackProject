--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function OronuTheElder_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("OronuTheElder_GroundingTotem", 45000, 0)
	pUnit:RegisterEvent("OronuTheElder_HealingWave", 11000, 0)
	pUnit:RegisterEvent("OronuTheElder_LightningShield", 30000, 0)
end

function OronuTheElder_GroundingTotem(pUnit,Event)
	pUnit:CastSpell(34079)
end

function OronuTheElder_HealingWave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11986,pUnit:GetRandomFriend())
end

function OronuTheElder_LightningShield(pUnit,Event)
	pUnit:CastSpell(12550)
end

function OronuTheElder_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function OronuTheElder_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21663, 1, "OronuTheElder_OnEnterCombat")
RegisterUnitEvent(21663, 2, "OronuTheElder_OnLeaveCombsat")
RegisterUnitEvent(21663, 4, "OronuTheElder_OnDied")