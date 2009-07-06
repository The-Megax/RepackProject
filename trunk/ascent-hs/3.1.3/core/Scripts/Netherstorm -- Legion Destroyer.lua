--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Destroyer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Destroyer_Knock",1000,0)
    pUnit:RegisterEvent("Destroyer_Strike",1000,0)
end

function Destroyer_Knock(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11428,pUnit:GetClosestPlayer())
end

function Destroyer_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(13737,pUnit:GetClosestPlayer())
end

function Destroyer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Destroyer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20403, 1, "Destroyer_OnEnterCombat")
RegisterUnitEvent (20403, 2, "Destroyer_OnLeaveCombat")
RegisterUnitEvent (20403, 4, "Destroyer_OnDied")