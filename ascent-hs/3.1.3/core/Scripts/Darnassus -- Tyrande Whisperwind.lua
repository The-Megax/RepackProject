--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TyrandeWhisperwind_OnCombat(Unit, Event)
Unit:RegisterEvent("TyrandeWhisperwind_Cleave", 12000, 0)
Unit:RegisterEvent("TyrandeWhisperwind_Moonfire", 18000, 0)
Unit:RegisterEvent("TyrandeWhisperwind_SearingArrow", 20000, 0)
Unit:RegisterEvent("TyrandeWhisperwind_Starfall", 25000, 0)
end

function TyrandeWhisperwind_Cleave(pUnit, Event) 
pUnit:CastSpell(20691) 
end

function TyrandeWhisperwind_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20690, pUnit:GetMainTank()) 
end

function TyrandeWhisperwind_SearingArrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20688, pUnit:GetMainTank()) 
end

function TyrandeWhisperwind_Starfall(pUnit, Event) 
pUnit:CastSpell(20687) 
end

function TyrandeWhisperwind_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TyrandeWhisperwind_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TyrandeWhisperwind_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7999, 1, "TyrandeWhisperwind_OnCombat")
RegisterUnitEvent(7999, 2, "TyrandeWhisperwind_OnLeaveCombat")
RegisterUnitEvent(7999, 3, "TyrandeWhisperwind_OnKilledTarget")
RegisterUnitEvent(7999, 4, "TyrandeWhisperwind_OnDied")