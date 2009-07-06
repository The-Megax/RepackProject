--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BoulderfistWarrior_Charge(Unit, event, miscunit, misc)
	print "BoulderfistWarrior Charge"
	Unit:FullCastSpellOnTarget(31994,Unit:GetMainTank())
end

function BoulderfistWarrior(unit, event, miscunit, misc)
	print "BoulderfistWarrior"
	unit:RegisterEvent("BoulderfistWarrior_Charge",10000,0)
end

function BoulderfistWarrior_Death(Unit)
	Unit:RemoveEvents()
end

function BoulderfistWarrior_OnLeaveCombat(Unit)
	Unit:RemoveEvents()
end

RegisterUnitEvent(17136, 1,"BoulderfistWarrior")
RegisterUnitEvent(17136, 2, "BoulderfistWarrior_OnLeaveCombat")
RegisterUnitEvent(17136, 4, "BoulderfistWarrior_Death")