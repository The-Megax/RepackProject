--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Regenerator_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Regenerator_Bolt",2500,0)
end

function Regenerator_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34232,pUnit:ClosestPlayer())
end   
    
function Regenerator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Regenerator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21783, 1, "Regenerator_OnEnterCombat")
RegisterUnitEvent (21783, 2, "Regenerator_OnLeaveCombat")
RegisterUnitEvent (21783, 4, "Regenerator_OnDied")