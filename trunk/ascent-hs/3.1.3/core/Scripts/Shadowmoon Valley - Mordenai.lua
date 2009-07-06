--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Mordenai_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Mordenai_Shoot", 2000, 0)
	pUnit:RegisterEvent("Mordenai_Start", 2000, 0)
end

function Mordenai_Shoot(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38372,pUnit:GetClosestPlayer())
end

function Mordenai_Start(pUnit,Eevnt)
 if pUnit:GetHealthPct() == 98 then
	pUnit:RemoveEvents()
	pUnit:RegisterEvent("Mordenai_AimedShot", 16000, 0)
	pUnit:RegisterEvent("Mordenai_ArcaneShot", 6000, 0)
end
end

function Mordenai_AimedShot(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38370,pUnit:GetClosestPlayer())
end

function Mordenai_ArcaneShot(pUnit,Event)
	pUnit:FullCastSpellOnTarget(36623,pUnit:GetClosestPlayer())
end

function Mordenai_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Mordenai_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22113, 1, "Mordenai_OnEnterCombat")
RegisterUnitEvent(22113, 2, "Mordenai_OnLeaveCombat")
RegisterUnitEvent(22113, 4, "Mordenai_OnDied")