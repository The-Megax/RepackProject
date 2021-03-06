--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WrathscaleShorestalker_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleShorestalker_Strike", 6000, 0)
end

function WrathscaleShorestalker_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WrathscaleShorestalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleShorestalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleShorestalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17331, 1, "WrathscaleShorestalker_OnCombat")
RegisterUnitEvent(17331, 2, "WrathscaleShorestalker_OnLeaveCombat")
RegisterUnitEvent(17331, 3, "WrathscaleShorestalker_OnKilledTarget")
RegisterUnitEvent(17331, 4, "WrathscaleShorestalker_OnDied")