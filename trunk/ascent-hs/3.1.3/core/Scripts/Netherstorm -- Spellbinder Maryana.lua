--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Maryana_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Maryana_Blast",5000,0)
    pUnit:RegisterEvent("Maryana_Fire",7000,0)
    pUnit:RegisterEvent("Maryana_Intellect",1000,(1))
end

function Maryana_Blast(pUnit,Event)
    pUnit:CastSpell(37450)
end   

function Maryana_Fire(pUnit,Event)
    pUnit:CastSpell(15091)
end

function Maryana_Intellect(pUnit,Event)
    pUnit:CastSpell(35917)
end

function Maryana_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Maryana_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19593, 1, "Maryana_OnEnterCombat")
RegisterUnitEvent (19593, 2, "Maryana_OnLeaveCombat")
RegisterUnitEvent (19593, 4, "Maryana_OnDied")