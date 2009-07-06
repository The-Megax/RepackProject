--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WarbringerGoredrak_OnCombat(Unit, Event)
Unit:RegisterEvent("WarbringerGoredrak_ArcaneBlast", 8000, 0)
Unit:RegisterEvent("WarbringerGoredrak_PowerSap", 10000, 0)
end

function WarbringerGoredrak_ArcaneBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50545, pUnit:GetMainTank()) 
end

function WarbringerGoredrak_PowerSap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50534, pUnit:GetMainTank()) 
end

function WarbringerGoredrak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarbringerGoredrak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarbringerGoredrak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25712, 1, "WarbringerGoredrak_OnCombat")
RegisterUnitEvent(25712, 2, "WarbringerGoredrak_OnLeaveCombat")
RegisterUnitEvent(25712, 3, "WarbringerGoredrak_OnKilledTarget")
RegisterUnitEvent(25712, 4, "WarbringerGoredrak_OnDied")