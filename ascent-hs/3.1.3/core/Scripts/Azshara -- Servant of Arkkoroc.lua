--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ServantofArkkoroc_OnCombat(Unit, Event)
Unit:RegisterEvent("ServantofArkkoroc_Trample", 5000, 0)
end

function ServantofArkkoroc_Trample(pUnit, Event) 
pUnit:CastSpell(5568) 
end

function ServantofArkkoroc_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ServantofArkkoroc_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ServantofArkkoroc_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6143, 1, "ServantofArkkoroc_OnCombat")
RegisterUnitEvent(6143, 2, "ServantofArkkoroc_OnLeaveCombat")
RegisterUnitEvent(6143, 3, "ServantofArkkoroc_OnKilledTarget")
RegisterUnitEvent(6143, 4, "ServantofArkkoroc_OnDied")