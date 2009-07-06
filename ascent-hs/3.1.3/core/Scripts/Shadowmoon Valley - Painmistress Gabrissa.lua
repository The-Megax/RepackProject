--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function PainmistressGabrissa_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("PainmistressGabrissa_CurseOfPain", 120000, 0)
end

function PainmistressGabrissa_CurseOfPain(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38048,pUnit:GetClosestPlayer())
 if pUnit:GetHealthPct() == 50 then 
	pUnit:RemoveEvents()
end
end

function PainmistressGabrissa_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function PainmistressGabrissa_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21309, 1, "PainmistressGabrissa_OnEnterCombat")
RegisterUnitEvent(21309, 2, "PainmistressGabrissa_OnLeaveCombsat")
RegisterUnitEvent(21309, 4, "PainmistressGabrissa_OnDied")