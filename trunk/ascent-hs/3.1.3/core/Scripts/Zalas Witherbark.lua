--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, March 17, 2009. ]]

function ZalasWitherbark_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("ShadowboltVolley", 3000, 0)
end

function ShadowboltVolley(Unit,Event)
local plr = Unit:GetClosestPlayer()
	if (plr ~= nil) then
		return
	else
	Unit:FullCastSpellOnTarget(9081,plr)
end
end

function ZalasWitherbark_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function ZalasWitherbark_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2605,1,"ZalasWitherbark_OnEnterCombat")
RegsiterUnitEvent(2605,2,"ZalasWitherbark_OnLeaveCombat")
RegisterUnitEvent(2605,4,"ZalasWitherbark_OnDied")