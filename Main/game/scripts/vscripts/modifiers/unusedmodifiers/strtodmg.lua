function StrToDamage( keys )

	local ability = keys.ability
	local caster = keys.caster
	local target = keys.target
	local str_caster = caster:GetStrength()
	local str_damage = ability:GetLevelSpecialValueFor("strength_damage_pct", (ability:GetLevel() -1)) 
	
	for i = 0, 18, 1 do
		if caster:GetAbilityByIndex(i) ~= nil then
			if caster:GetAbilityByIndex(i):GetAbilityName() == "special_bonus_unique_silencer_3" then
				if caster:GetAbilityByIndex(i):IsTrained() then
					str_damage = (ability:GetLevelSpecialValueFor("strength_damage_pct", (ability:GetLevel() -1)))+(caster:GetAbilityByIndex(i):GetSpecialValueFor("value"))
					break
				end
			end
		end
	end

	if caster:HasScepter() then str_damage = str_damage*2 end

	local damage_table = {}

	damage_table.attacker = caster
	damage_table.damage_type = ability:GetAbilityDamageType()
	damage_table.ability = ability
	damage_table.victim = target
	damage_table.damage = str_caster * str_damage / 100

	SendOverheadEventMessage( damage_table.attacker, OVERHEAD_ALERT_BONUS_SPELL_DAMAGE , damage_table.victim, damage_table.damage, nil )
	ApplyDamage(damage_table)

end