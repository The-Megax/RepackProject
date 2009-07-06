--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, May 08, 2009. ]]

function Foulbelly_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Aura.Of.Rot", 35000, 0)
	Unit:RegisterEvent("Deadly.Poison", 80000, 0)
	Unit:RegisterEvent("Plague.Cloud", 5000, 1)
	Unit:RegisterEvent("Slowing.Poison", 45000, 0)
end

function Aura.Of.Rot(Unit,Event)
 if (plr ~= nil) then 
	return
	else
	Unit:FullCastSpell(3106)
 end
end

function Deadly.Poison(Unit,Event)
 if (plr ~= nil) then 
	return
	else
	Unit:FullCastSpellOnTarget(3583,plr)
 end
end

function Plague.Cloud(Unit,Event)
 if (plr ~= nil) then 
	return
	else
	Unit:FullCastSpellOnTarget(3256,plr)
 end
end

function Slowing.Poison(Unit,Event)
 if (plr ~= nil) then 
	return
	else
	Unit:FullCastSpellOnTarget(7992,plr)
 end
end

function Foulbelly_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Foulbelly_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegsiterUnitEvent(2601,1,"Foulbelly_OnEnterCombat")
RegsiterUnitEvent(2601,2,"Foulbelly_OnLeaveCombat")
RegsiterUnitEvent(2601,4,"Foulbelly_OnDied")