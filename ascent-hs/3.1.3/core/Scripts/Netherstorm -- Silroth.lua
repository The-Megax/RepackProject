--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Silroth_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Silroth_Flames1",10000,0)
    pUnit:RegisterEvent("Silroth_Flames2",2000,0)
end

function Silroth_Flames1(pUnit,Event)
    pUnit:CastSpell(36253)
end   

function Silroth_Flames2(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36252,pUnit:GetMainTank())
end

function Silroth_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Silroth_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20801, 1, "Silroth_OnEnterCombat")
RegisterUnitEvent (20801, 2, "Silroth_OnLeaveCombat")
RegisterUnitEvent (20801, 4, "Silroth_OnDied")