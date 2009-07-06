--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ArcanoScorp_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(37917) 
	pUnit:CastSpell(37851)
	pUnit:RegisterEvent("ArcanoScorp_DisMantle", 3000, 0)
	pUnit:RegisterEvent("ArcanoScorp_Pince", 6600, 0)
end

function ArcanoScorp_Dismantle(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37919,pUnit:GetClosestPlayer())
end

function ArcanoScorp_Pince(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37918,pUnit:GetClosestPlayer())
end

RegisterUnitEvent (21909, 1, "ArcanoScorp_OnEnterCombat")
RegisterUnitEvent (21909, 2, "ArcanoScorp_OnLeaveCombat")
RegisterUnitEvent (21909, 4, "ArcanoScorp_OnDied")