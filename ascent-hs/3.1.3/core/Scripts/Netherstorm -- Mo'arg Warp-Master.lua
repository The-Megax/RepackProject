--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WarpMaster_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("WarpMaster_Spray",2000,0)
end

function WarpMaster_Spray(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36486,pUnit:GetClosestPlayer())
end

function WarpMaster_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function WarpMaster_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20326, 1, "WarpMaster_OnEnterCombat")
RegisterUnitEvent (20326, 2, "WarpMaster_OnLeaveCombat")
RegisterUnitEvent (20326, 4, "WarpMaster_OnDied")