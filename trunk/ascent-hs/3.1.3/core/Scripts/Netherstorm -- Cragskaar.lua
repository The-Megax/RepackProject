--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]
function Cragskaar_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Cragskaar_Knock",45000,0)
end

function Cragskaar_Knock(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32959, pUnit:GetClosestPlayer())
end

function Cragskaar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Cragskaar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20202, 1, "Cragskaar_OnEnterCombat")
RegisterUnitEvent (20202, 2, "Cragskaar_OnLeaveCombat")
RegisterUnitEvent (20202, 4, "Cragskaar_OnDied")