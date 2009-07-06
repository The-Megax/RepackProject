--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Azure_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Azure_Screech", 1000,0)
end

function Azure_Screech(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31273, pUnit:GetClosestPlayer())
end

function Azure_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Azure_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21005, 1, "Azure_OnEnterCombat")
RegisterUnitEvent (21005, 2, "Azure_OnLeaveCombat")
RegisterUnitEvent (21005, 4, "Azure_OnDied")