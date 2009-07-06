--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function FledglingChimaera_OnCombat(Unit, Event)
Unit:RegisterEvent("FledglingChimaera_CorrosivePoison", 10000, 0)
end

function FledglingChimaera_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function FledglingChimaera_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FledglingChimaera_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FledglingChimaera_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4031, 1, "FledglingChimaera_OnCombat")
RegisterUnitEvent(4031, 2, "FledglingChimaera_OnLeaveCombat")
RegisterUnitEvent(4031, 3, "FledglingChimaera_OnKilledTarget")
RegisterUnitEvent(4031, 4, "FledglingChimaera_OnDied")