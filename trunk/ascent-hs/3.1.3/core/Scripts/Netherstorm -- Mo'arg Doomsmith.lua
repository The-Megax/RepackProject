--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Doomsmith_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Doomsmith_Doomsaw",1300,0)
end

function Doomsmith_Doomsaw(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36200,pUnit:GetClosestPlayer())
end

function Doomsmith_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Doomsmith_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16944, 1, "Doomsmith_OnEnterCombat")
RegisterUnitEvent (16944, 2, "Doomsmith_OnLeaveCombat")
RegisterUnitEvent (16944, 4, "Doomsmith_OnDied")