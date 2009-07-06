--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, March 17, 2009. ]]

function Molok-the-Crusher_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Backhand", 16000, 0)
end

function Backhand(Unit,Event)
	Unit:FullCastSpellOnTarget(6253,plr)
end

function Molok-the-Crusher_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Molok-the-Crusher_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2604,1,"Molok-the-Crusher_OnEnterCombat")
RegisterUnitEvent(2604,2,"Molok-the-Crusher_OnLeaveCombat")
RegisterUnitEvent(2604,4,"Molok-the-Crusher_OnDied")