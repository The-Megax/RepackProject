--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, March 17, 2009. ]]

function VengefulSurge_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("FrostNova", 14000, 1)
end

function FrostNova(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:FullCastSpellOnTarget(14907,plr)
end

function VengefulSurge_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function VengefulSurge_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegsiterUnitEvent(2776,1,"VengefulSurge_OnEnterCombat")
RegsiterUnitEvent(2776,2,"VengefulSurge_OnLeaveCombat")
RegsiterUnitEvent(2776,4,"VengefulSurge_OnDied")