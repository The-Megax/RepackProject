--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Raptor_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Raptor_Enrage",20000,0)
end

function Raptor_Enrage(pUnit,Event)
    pUnit:CastSpell(8599)
end   
    
function Raptor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Raptor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20634, 1, "Raptor_OnEnterCombat")
RegisterUnitEvent (20634, 2, "Raptor_OnLeaveCombat")
RegisterUnitEvent (20634, 4, "Raptor_OnDied")