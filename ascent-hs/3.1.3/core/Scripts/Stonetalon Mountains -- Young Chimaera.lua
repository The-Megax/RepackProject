--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function YoungChimaera_OnCombat(Unit, Event)
Unit:RegisterEvent("YoungChimaera_LightningBolt", 8000, 0)
end

function YoungChimaera_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function YoungChimaera_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function YoungChimaera_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function YoungChimaera_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4032, 1, "YoungChimaera_OnCombat")
RegisterUnitEvent(4032, 2, "YoungChimaera_OnLeaveCombat")
RegisterUnitEvent(4032, 3, "YoungChimaera_OnKilledTarget")
RegisterUnitEvent(4032, 4, "YoungChimaera_OnDied")