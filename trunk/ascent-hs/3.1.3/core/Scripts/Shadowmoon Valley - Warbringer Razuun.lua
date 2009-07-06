--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WarbringerRazuun_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("WarbringerRazuun_FelFireball", 3800, 0)
	pUnit:RegisterEvent("WarbringerRazuun_MindWarp", 45000, 1)
end

function WarbringerRazuun_FelFireball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35913,pUnit:GetClosestPlayer())
end

function WarbringerRazuun_MindWarp(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38047,pUnit:GetClosestPlayer())
end

function WarbringerRazuun_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function WarbringerRazuun_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21287, 1, "WarbringerRazuun_OnEnterCombat")
RegisterUnitEvent(21287, 2, "WarbringerRazuun_OnLeaveCombat")
RegisterUnitEvent(21287, 4, "WarbringerRazuun_OnDied")