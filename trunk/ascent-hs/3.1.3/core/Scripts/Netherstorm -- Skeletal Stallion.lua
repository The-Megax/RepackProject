--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Stallion_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Stallion_Kick",5000,0)
end

function Stallion_Kick(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11978,pUnit:GetMainTank())
end   

function Stallion_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Stallion_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20495, 1, "Stallion_OnEnterCombat")
RegisterUnitEvent (20495, 2, "Stallion_OnLeaveCombat")
RegisterUnitEvent (20495, 4, "Stallion_OnDied")