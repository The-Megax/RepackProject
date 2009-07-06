--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Lynx_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Lynx_Dash",5000,0)
    pUnit:RegisterEvent("Lynx_Rip",6000,0)
    pUnit:RegisterEvent("Lynx_Swipe",5000,0)
end

function Lynx_Dash(pUnit,Event)
    pUnit:CastSpell(36589)
end   
   
function Lynx_Rip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36590,pUnit:GetMainTank())
end

function Lynx_Swipe(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31279,pUnit:GetMainTank())
end
    
function Lynx_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Lynx_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20671, 1, "Lynx_OnEnterCombat")
RegisterUnitEvent (20671, 2, "Lynx_OnLeaveCombat")
RegisterUnitEvent (20671, 4, "Lynx_OnDied")