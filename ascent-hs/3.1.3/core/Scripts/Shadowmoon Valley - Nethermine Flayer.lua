--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function NethermineFlayer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("NethermineFlayer_Rend", 30000, 0)
	pUnit:RegisterEvent("NethermineFlayer_ShredArmor", 31000, 0)
end

function NethermineFlayer_Rend(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13443,pUnit:GetClosestPlayer())
end

function NethermineFlayer_ShredArmor(pUnit,Event)
	pUnit:FullCastSpellOnTarget(40770,pUnit:GetClosestPlayer())
end

function NethermineFlayer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function NethermineFlayer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23169, 1, "NethermineFlayer_OnEnterCombat")
RegisterUnitEvent(23169, 2, "NethermineFlayer_OnLeaveCombat")
RegisterUnitEvent(23169, 4, "NethermineFlayer_OnDied")