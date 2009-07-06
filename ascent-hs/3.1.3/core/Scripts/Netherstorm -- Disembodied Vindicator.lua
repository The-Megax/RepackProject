--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Vindicator_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Vindicator_Revenge",1000,0)
    pUnit:RegisterEvent("Vindicator_Vindication",1000,0)
end

function Vindicator_Revenge(pUnit,Event)
    pUnit:CastSpellOnTarget(36647,GetInRangeFriends())
end

function Vindicator_Vindication(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36002,pUnit:GetClosestPlayer())
end

function Vindicator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Vindicator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18872, 1, "Vindicator_OnEnterCombat")
RegisterUnitEvent (18872, 2, "Vindicator_OnLeaveCombat")
RegisterUnitEvent (18872, 4, "Vindicator_OnDied")