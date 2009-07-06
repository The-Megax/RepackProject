--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, March 17, 2009. ]]

function Nimar-The-Slayer_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Cleave", 5000, 0)
	Unit:RegisterEvent("Whirlwind", 14000, 0)
end

function Cleave(Unit,Event)
	Unit:FullCastSpellOnTarget(845,plr)
end

function Whirlwind(Unit,Event)
	Unit:FullCastSpellOnTarget(15576,plr)
	Unit:CastSpellOnTarget(17207,plr)
end

function Nimar-The-Slayer_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Nimar-The-Slayer_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2606,1,"Nimar-The-Slayer_OnEnterCombat")
RegisterUnitEvent(2606,2,"Nimar-The-Slayer_OnLeaveCombat")
RegisterUnitEvent(2606,4,"Nimar-The-Slayer_OnDied")