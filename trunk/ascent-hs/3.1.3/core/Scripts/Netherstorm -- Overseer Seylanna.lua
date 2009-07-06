--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Seylanna_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Seylanna_Crystal",2000,0)
    pUnit:RegisterEvent("Seylanna_Beam",4000,0)
end

function Seylanna_Crystal(pUnit,Event)
    pUnit:CastSpell(36179)
end   
   
function Seylanna_Beam(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35919,pUnit:GetClosestPlayer())
end
    
function Seylanna_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Seylanna_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20397, 1, "Seylanna_OnEnterCombat")
RegisterUnitEvent (20397, 2, "Seylanna_OnLeaveCombat")
RegisterUnitEvent (20397, 4, "Seylanna_OnDied")