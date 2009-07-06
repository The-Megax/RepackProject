--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Azarad_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Azarad_Rage",12000,0)
end

function Azarad_Rage(pUnit,Event)
    pUnit:CastSpell(35491)
end   
    
function Azarad_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Azarad_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20685, 1, "Azarad_OnEnterCombat")
RegisterUnitEvent (20685, 2, "Azarad_OnLeaveCombat")
RegisterUnitEvent (20685, 4, "Azarad_OnDied")