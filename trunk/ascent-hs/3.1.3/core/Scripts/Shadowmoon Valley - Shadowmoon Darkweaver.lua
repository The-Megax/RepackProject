--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ShadowmoonDarkweaver_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ShadowmoonDarkweaver_Immolate", 4000, 0)
	pUnit:RegisterEvent("ShadowmoonDarkweaver_NetherInfusion", 35000, 3)
	pUnit:RegisterEvent("ShadowmoonDarkweaver_ShadowBolt", 2500, 0)
	pUnit:RegisterEvent("ShadowmoonDarkweaver_Shadowfury", 9000, 0)
end

function ShadowmoonDarkweaver_Immolate(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11962,pUnit:GetClosestPlayer())
end

function ShadowmoonDarkweaver_NetherInfusion(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38446,pUnit:GetClosestPlayer())
end

function ShadowmoonDarkweaver_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9613,pUnit:GetClosestPlayer())
end

function ShadowmoonDarkweaver_Shadowfury(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35373,pUnit:GetClosestPlayer())
end

function ShadowmoonDarkweaver_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ShadowmoonDarkweaver_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function ShadowmoonDarkweaver_OnSpawn(pUnit,Event)
	pUnit:CastSpell(38442)
end

RegisterUnitEvent(22081, 1, "ShadowmoonDarkweaver_OnEnterCombat")
RegisterUnitEvent(22081, 2, "ShadowmoonDarkweaver_OnLeaveCombat")
RegisterUnitEvent(22081, 4, "ShadowmoonDarkweaver_OnDied")
RegisterUnitEvent(22081, 6, "ShadowmoonDarkweaver_OnSpawn")