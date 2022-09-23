local to_insert = {
    {
        id                  = "SUMMON_BALL",
        name                = "$action_name_toti_ball",
        description         = "$action_desc_toti_ball",
        author              = "Copi",
        sprite              = "mods/templeoftheinnocent/files/ui_gfx/gun_actions/summon_ball.png",
        related_projectiles = { "mods/templeoftheinnocent/files/entities/projectiles/ball.xml" },
        type                = ACTION_TYPE_PROJECTILE,
        spawn_level         = "0",
        spawn_probability   = "0",
        price               = 160,
        mana                = 100,
        max_uses            = -1,
        action              = function()
            add_projectile("mods/templeoftheinnocent/files/entities/projectiles/ball.xml")
        end,
    },
}

for _, value in ipairs(to_insert) do
    if (value.author == nil) then
        value.author = "TOTI_ANON"
    end
    value.id = "TOTI_" .. value.id
    table.insert(actions, value)
end