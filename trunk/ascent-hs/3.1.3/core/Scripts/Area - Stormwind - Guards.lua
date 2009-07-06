--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

--Stormwind Royal Guard

function R_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("R_Cleave",4000,0)
    pUnit:RegisterEvent("R_Enrage",30000,0)
    pUnit:RegisterEvent("R_ShieldSlam",7000,0)
    pUnit:RegisterEvent("R_Armor",6000,0)
end

function R_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15284,pUnit:GetMainTank())
end

function R_Enrage(pUnit,Event)
    pUnit:CastSpell(8269)
end

function R_ShieldSlam(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15655,pUnit:GetMainTank())
end

function R_Armor(pUnit,Event)
    pUnit:FullCastSpellOnTarget(16145,pUnit:GetMainTank())
end

function R_OnDied(pUnit,Event)
    pUnit:RemoveEvents()
end

function R_OnLeaveCombat(pUnit,Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(1756,1,"R_OnEnterCombat")
RegisterUnitEvent(1756,2,"R_OnLeaveCombat")
RegisterUnitEvent(1756,4,"R_OnDied")

--Officer Jaxon and Brady

function J_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("J_Net",8000,0)
    pUnit:RegisterEvent("J_Armor",6000,0)
end

function J_Net(pUnit,Event)
    pUnit:FullCastSpellOnTarget(14030,pUnit:GetMainTank())
end

function J_Armor(pUnit,Event)
    pUnit:FullCastSpellOnTarget(16145,pUnit:GetMainTank())
end

function J_OnDied(pUnit,Event)
    pUnit:RemoveEvents()
end

function J_OnLeaveCombat(pUnit,Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(14423,1,"J_OnEnterCombat")
RegisterUnitEvent(14423,2,"J_OnLeaveCombat")
RegisterUnitEvent(14423,4,"J_OnDied")

RegisterUnitEvent(14439,1,"J_OnEnterCombat")
RegisterUnitEvent(14439,2,"J_OnLeaveCombat")
RegisterUnitEvent(14439,4,"J_OnDied")


