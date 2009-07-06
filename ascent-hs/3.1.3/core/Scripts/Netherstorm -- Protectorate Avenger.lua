--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Avenger_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Avenger_Claive",4000,0)
end

function Avenger_Claive(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36500,pUnit:GetMainTank())
end   
    
function Avenger_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Avenger_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21805, 1, "Avenger_OnEnterCombat")
RegisterUnitEvent (21805, 2, "Avenger_OnLeaveCombat")
RegisterUnitEvent (21805, 4, "Avenger_OnDied")