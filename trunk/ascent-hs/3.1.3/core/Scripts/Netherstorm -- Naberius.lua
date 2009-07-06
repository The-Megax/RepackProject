--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Naberius_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Naberius_Nova",1000,0)
    pUnit:RegisterEvent("Naberius_Bolt",3000,0)
end

function Naberius_Nova(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36148,pUnit:GetClosestPlayer())
end

function Naberius_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15497,pUnit:GetClosestPlayer())
end

function Naberius_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Naberius_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20483, 1, "Naberius_OnEnterCombat")
RegisterUnitEvent (20483, 2, "Naberius_OnLeaveCombat")
RegisterUnitEvent (20483, 4, "Naberius_OnDied")