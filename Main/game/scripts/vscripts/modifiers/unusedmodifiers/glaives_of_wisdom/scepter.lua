function CheckOFF(kv)
	if (IsServer()) then
		if (kv.caster:HasAbility("silencer_glaives_of_wisdom_overriden")) then
			if (kv.caster:HasScepter() == false) then
				return
			end
			local index = kv.ability:GetAbilityIndex()
			local level = kv.ability:GetLevel()
			kv.caster:RemoveAbility("silencer_glaives_of_wisdom_overriden")
			kv.caster:AddAbility("silencer_glaives_of_wisdom_overriden_scepter")
			kv.caster:GetAbilityByIndex(index):SetLevel(level)
			kv.caster:RemoveModifierByName("modifier_glaives_of_wisdom_datadriven")
		end
	end
end

function CheckON(kv)
	if (IsServer()) then
		if (kv.caster:HasAbility("silencer_glaives_of_wisdom_overriden_scepter")) then
			if kv.caster:HasScepter() then
				return
			end
			local index = kv.ability:GetAbilityIndex()
			local level = kv.ability:GetLevel()
			kv.caster:RemoveAbility("silencer_glaives_of_wisdom_overriden_scepter")
			kv.caster:AddAbility("silencer_glaives_of_wisdom_overriden")
			kv.caster:GetAbilityByIndex(index):SetLevel(level)
			kv.caster:RemoveModifierByName("modifier_glaives_of_wisdom_datadriven_scepter")
		end
	end
end