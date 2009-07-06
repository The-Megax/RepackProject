--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Varedis_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Varedis_CurseOfFlames", 120000, 0)
	pUnit:RegisterEvent("Varedis_Evasion", 24000, 0)
	pUnit:RegisterEvent("Varedis_ManaBurn", 9000, 0)
end

function Varedis_CurseOfFlames(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38010,pUnit:GetClosestPlayer())
end

function Varedis_Evasion(pUnit,Event)
	pUnit:CastSpell(37683)
end

function Varedis_ManaBurn(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39262,pUnit:GetClosestPlayer())
end

function Varedis_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Varedis_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21178, 1, "Varedis_OnEnterCombat")
RegisterUnitEvent(21178, 2, "Varedis_OnLeaveCombat")
RegisterUnitEvent(21178, 4, "Varedis_OnDied")