--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RunicLightningGunner_OnCombat(Unit, Event)
Unit:RegisterEvent("RunicLightningGunner_LightningGunShot", 6000, 0)
end

function RunicLightningGunner_LightningGunShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(46982, pUnit:GetMainTank()) 
end

function RunicLightningGunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RunicLightningGunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RunicLightningGunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26414, 1, "RunicLightningGunner_OnCombat")
RegisterUnitEvent(26414, 2, "RunicLightningGunner_OnLeaveCombat")
RegisterUnitEvent(26414, 3, "RunicLightningGunner_OnKilledTarget")
RegisterUnitEvent(26414, 4, "RunicLightningGunner_OnDied")