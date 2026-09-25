local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))() 

-- Create entity
local entity = Creator.createEntity({
    CustomName = "A-60",
    Model = "rbxassetid:////11379072534",

    Speed = 350,
    DelayTime = 4.5,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        2.5,
    },

    Cycles = {
        Min = 3,
        Max = 7,
        WaitTime = 1,
    },

    CamShake = {
        true,
        {12.5, 45, 0.2, 1.3},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://11378285585",
            Image2 = "rbxassetid://11378285585",

            Shake = true,

            Sound1 = {
                116282238939992,
                {Volume = 0.5},
            },

            Sound2 = {
                116282238939992,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 0, 0),
            },

            Tease = {
                false,
                Min = 4,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You Died To Entity Designated As A-60",
        "He Will Make Loud Sound",
        "You Only Have Small Amount Of Time Before He Catches you",
        "Try You Best To Avoid Him!"
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
