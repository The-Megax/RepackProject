--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Culuthas_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Culuthas_Felfire",3000,0)
end

function Culuthas_Felfire(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37089, pUnit:GetClosestPlayer())
end

function Culuthas_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Culuthas_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20138, 1, "Culuthas_OnEnterCombat")
RegisterUnitEvent (20138, 2, "Culuthas_OnLeaveCombat")
RegisterUnitEvent (20138, 4, "Culuthas_OnDied")