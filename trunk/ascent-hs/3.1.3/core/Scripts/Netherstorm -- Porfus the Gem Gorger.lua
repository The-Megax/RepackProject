--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Porfus_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Porfus_Hamstring",5000,0)
end

function Porfus_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31553,pUnit:GetMainTank())
end   
    
function Porfus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Porfus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20783, 1, "Porfus_OnEnterCombat")
RegisterUnitEvent (20783, 2, "Porfus_OnLeaveCombat")
RegisterUnitEvent (20783, 4, "Porfus_OnDied")