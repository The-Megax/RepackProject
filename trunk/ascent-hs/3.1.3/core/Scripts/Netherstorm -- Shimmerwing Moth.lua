--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Moth_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Moth_Dust",10000,0)
    pUnit:RegisterEvent("Moth_Buffet",2000,0)
end

function Moth_Dust(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36592,pUnit:GetMainTank())
end   

function Moth_Buffet(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32914,pUnit:GetMainTank())
end

function Moth_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Moth_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20611, 1, "Moth_OnEnterCombat")
RegisterUnitEvent (20611, 2, "Moth_OnLeaveCombat")
RegisterUnitEvent (20611, 4, "Moth_OnDied")