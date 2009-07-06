--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, March 17, 2009. ]]

function WitherbarkTroll_OnEnterCombat(Unit,Event)
local choice = math.random(1,2)
local tank = Unit:GetMainTank()
	if (choice == 1) then
		Unit:FullCastSpellOnTarget(4974,tank)
elseif (choice == 2) then
		return
end
end

RegisterUnitEvent(4974,1,"WitherbarkTroll_OnEnterCombat")