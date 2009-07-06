--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Crocolisk_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Crocolisk_Rip",1000,0)
end

function Crocolisk_Rip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(3604, pUnit:GetClosestPlayer())
end

function Crocolisk_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Crocolisk_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20773, 1, "Crocolisk_OnEnterCombat")
RegisterUnitEvent (20773, 2, "Crocolisk_OnLeaveCombat")
RegisterUnitEvent (20773, 4, "Crocolisk_OnDied")