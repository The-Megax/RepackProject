--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Athanel_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Athanel_Cleave",4000,0)
end

function Athanel_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15496,pUnit:GetMainTank())
end   
    
function Athanel_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Athanel_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20435, 1, "Athanel_OnEnterCombat")
RegisterUnitEvent (20435, 2, "Athanel_OnLeaveCombat")
RegisterUnitEvent (20435, 4, "Athanel_OnDied")