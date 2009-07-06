--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Nuramoc_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Nuramoc_Lightning",2000,0)
    pUnit:RegisterEvent("Nuramoc_Bolt",4000,0)
    pUnit:RegisterEvent("Nuramoc_Shield",5000,0)
end

function Nuramoc_Lightning(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15797,pUnit:GetClosestPlayer())
end   
   
function Nuramoc_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(21971,pUnit:GetClosestPlayer())
end

function Nuramoc_Shield(pUnit,Event)
    pUnit:CastSpell(38905)
end
    
function Nuramoc_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Nuramoc_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20932, 1, "Nuramoc_OnEnterCombat")
RegisterUnitEvent (20932, 2, "Nuramoc_OnLeaveCombat")
RegisterUnitEvent (20932, 4, "Nuramoc_OnDied")