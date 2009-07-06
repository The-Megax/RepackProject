--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Dimensius_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Dimensius_Feed",5000,0)
end

function Dimensius_Feed(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37450,pUnit:GetMainTank())
end   

function Dimensius_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dimensius_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21780, 1, "Dimensius_OnEnterCombat")
RegisterUnitEvent (21780, 2, "Dimensius_OnLeaveCombat")
RegisterUnitEvent (21780, 4, "Dimensius_OnDied")