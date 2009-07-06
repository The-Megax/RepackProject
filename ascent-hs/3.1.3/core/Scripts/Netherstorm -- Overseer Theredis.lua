--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Theredis_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Theredis_Disarm",8000,0)
    pUnit:RegisterEvent("Theredis_Breaker",9000,0)
end

function Theredis_Crystal(pUnit,Event)
    pUnit:FullCastSpellOnTarget(6713,pUnit:GetMainTank())
end   
   
function Theredis_Breaker(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35871,pUnit:GetMainTank())
end
    
function Theredis_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Theredis_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20416, 1, "Theredis_OnEnterCombat")
RegisterUnitEvent (20416, 2, "Theredis_OnLeaveCombat")
RegisterUnitEvent (20416, 4, "Theredis_OnDied")