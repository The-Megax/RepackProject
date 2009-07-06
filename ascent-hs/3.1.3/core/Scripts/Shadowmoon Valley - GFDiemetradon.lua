--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GFDiemetradon_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("GFDiemetradon_FelFireball", 11000, 0)
	pUnit:RegisterEvent("GFDiemetradon_FlamingWound", 51000, 0)
end

function GFDiemetradon_FelFireball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37945,pUnit:GetClosestPlayer())
end

function GFDiemetradon_FlamingWound(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37941,pUnit:GetClosestPlayer())
end

function GFDiemetradon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function GFDiemetradon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21462, 1, "GFDiemetradon_OnEnterCombat")
RegisterUnitEvent(21462, 2, "GFDiemetradon_OnLeaveCombat")
RegisterUnitEvent(21462, 4, "GFDiemetradon_OnDied")