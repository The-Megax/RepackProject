--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Rhonsus_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Rhonsus_Smithery",4000,0)
end

function Rhonsus_Smithery(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36103,pUnit:ClosestPlayer())
end   
    
function Rhonsus_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Rhonsus_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20410, 1, "Rhonsus_OnEnterCombat")
RegisterUnitEvent (20410, 2, "Rhonsus_OnLeaveCombat")
RegisterUnitEvent (20410, 4, "Rhonsus_OnDied")