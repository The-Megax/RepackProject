--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Apex_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Apex_Thunderclap",1000,0)
end

function Apex_Thunderclap(pUnit,Event)
    pUnit:FullCastSpellOnTraget(8078, pUnit:GetClosestPlayer())
end

function Apex_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Apex_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19940, 1, "Apex_OnEnterCombat")
RegisterUnitEvent (19940, 2, "Apex_OnLeaveCombat")
RegisterUnitEvent (19940, 4, "Apex_OnDied")

