--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ShadowhoofAssassin_OnEnterCombat(pUnit,Event)
	pUnit:registerEvent("ShadowhoofAssassin_DebilitatingStrike", 15000, 0)
	pUnit:registerEvent("ShadowhoofAssassin_SinisterStrike", 6000, 0)
end

function ShadowhoofAssassin_DebilitatingStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37577,pUnit:GetClosestPlayer())
end

function ShadowhoofAssassin_SinisterStrike(pUnit,Event)
	pUnit:FullCastSpellOnTarget(14873,pUnit:GetClosestPlayer())
end

function ShadowhoofAssassin_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ShadowhoofAssassin_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22858, 1, "ShadowhoofAssassin_OnEnterCombat")
RegisterUnitEvent(22858, 2, "ShadowhoofAssassin_OnLeaveCombat")
RegisterUnitEvent(22858, 4, "ShadowhoofAssassin_OnDied")