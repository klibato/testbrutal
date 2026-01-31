Config = {
    Core = 'ESX',  -- 'ESX' / 'QBCORE' | Autre configuration dans le dossier 'core'.
    Billing = 'esx_billing', -- 'okokBilling' / 'esx_billing' / 'jaksam_billing'
    TextUI = 'okokTextUI', -- 'ox_lib' / 'okokTextUI' / 'ESXTextUI' / 'QBDrawText' // Personnalisé dans cl_utils.lua
    ProgressBar = 'mythic_progbar', -- 'progressBars' / 'pogressBar' / 'mythic_progbar' // Personnalisé dans cl_utils.lua
    Inventory = 'ox_inventory', -- 'ox_inventory' / 'qb_inventory' / 'quasar_inventory' / 'chezza_inventory' // Personnalisé dans cl_utils.lua
    Metric = 'kmh', -- 'kmh' / 'mph'
    BrutalNotify = true, -- Achetez ici: (4€+TVA) https://store.brutalscripts.com | Ou configurez votre propre notify >> cl_utils.lua
    SteamName = false, -- true = Nom Steam | false = Nom du personnage
    DateFormat = '%d/%m/%Y', -- Format de date
    CustomOutfitMenu = false, -- Si true, ouvre un menu de tenues personnalisé, modifiable dans cl_utils.lua ligne 103.

    PoliceStations = {

        ['Commissariat de Police'] = {
            Job = 'police', -- Nom du métier
            MenuColors = {'rgb(15, 100, 210)', 'rgb(9, 43, 88)'}, -- Couleur du panneau

            Blip = {color = 38, sprite = 60, size = 0.6}, -- Blip du métier
            Marker = {use = true, marker = 20, rgb = {15, 100, 210}, bobUpAndDown = true, rotate = false},

            Duty = vector3(608.0304, 1.0756, 82.7600), -- Coordonnées prise/fin de service
            DutyBlips = true, -- Les policiers peuvent voir les autres policiers sur la carte.

            Cloakrooms = {
                vector3(553.8309, 29.4656, 69.3572),
                -- Vous pouvez en ajouter...
            },

            Armorys = {
                vector3(605.5718, 20.5813, 82.7600),
                -- Vous pouvez en ajouter...
            },

            BossMenu = {
                grades = {4},
                coords = {
                    vector3(608.2207, 10.6319, 91.5354),
                    -- Vous pouvez en ajouter...
                }
            },

            Garages = {
                {
                    Label = 'Garage I.', -- Nom du garage
                    menu = vector3(528.3946, 30.5107, 69.5110), -- Coordonnées du menu garage
                    spawn = vector4(527.0367, 35.6097, 69.5110, 211.5390), -- Coordonnées de spawn véhicule
                    deposit = vector3(527.0367, 35.6097, 69.5110), -- Zone de dépôt véhicule

                    vehicles = {
                        --['MODELE'] = {
                        --    Label = 'NOM-VEHICULE',
                        --    minRank = GRADE-MINIMUM
                        --},

                        ['poltorencer'] = {
                            Label = 'Police Rencer',
                            minRank = 4
                        },

                        ['polalamor'] = {
                            Label = 'Police Declasse',
                            minRank = 1
                        },

						['police4'] = {
                            Label = 'Police Banalisée',
                            minRank = 4
                        },

						['polbuffalor'] = {
                            Label = 'Police Buffalo',
                            minRank = 4
                        },
						['polfugitiver'] = {
                            Label = 'Police Fugitive',
                            minRank = 1
                        },
						['polscoutr'] = {
                            Label = 'Police Scout',
                            minRank = 1
                        },
						['polspeedo'] = {
                            Label = 'Fourgon Cellulaire',
                            minRank = 1
                        },

						['polstalkerr'] = {
                            Label = 'Police SUV',
                            minRank = 4
                        },

						['polstanierr'] = {
                            Label = 'Police Stanier',
                            minRank = 1
                        },
                    }
                },

                {
                    Label = 'Héliport',
                    menu = vector3(463.3165, -987.8311, 39.0156),
                    spawn = vector4(470.4517, -985.8835, 39.0156, 290.8555),
                    deposit = vector3(470.4517, -985.8835, 39.0156),

                    vehicles = {
                        ['polmav'] = {
                            Label = 'Hélicoptère Police',
                            minRank = 3
                        },
                    }
                },

                -- Vous pouvez en ajouter...
            },

            Shop = {
                -- minGrade = Grade minimum pour acheter l'article.
                {item = 'radio', label = 'Radio', price = 500, minGrade = 0},
                {item = 'police_bulletproof', label = 'Gilet Pare-Balles', price = 500, minGrade = 0},
                {item = 'weapon_flashlight', label = 'Lampe Torche', price = 10, minGrade = 0},
                {item = 'weapon_nightstick', label = 'Matraque', price = 10, minGrade = 0},
                {item = 'weapon_stungun', label = 'Taser', price = 500, minGrade = 0},
                {item = 'weapon_pistol', label = 'Pistolet', price = 500, minGrade = 1},
                {item = 'weapon_smg', label = 'SMG', price = 500, minGrade = 2},
                {item = 'weapon_carbinerifle', label = 'Fusil d\'Assaut', price = 500, minGrade = 2},
                {item = 'weapon_pumpshotgun', label = 'Fusil à Pompe', price = 500, minGrade = 3},

                -- Articles ESX de base --
                {item = 'ammo-9', label = 'Munitions 9mm', price = 10, minGrade = 1},
                {item = 'ammo-shotgun', label = 'Munitions Fusil à Pompe', price = 20, minGrade = 3},
                {item = 'ammo-rifle', label = 'Munitions Fusil', price = 20, minGrade = 2},

                -- Articles QB de base --
                --{item = 'pistol_ammo', label = 'Munitions Pistolet', price = 10, minGrade = 1},
                --{item = 'smg_ammo', label = 'Munitions SMG', price = 15, minGrade = 2},
                --{item = 'rifle_ammo', label = 'Munitions Fusil', price = 20, minGrade = 2},
                --{item = 'shotgun_ammo', label = 'Munitions Fusil à Pompe', price = 20, minGrade = 3},
            },
        },

        -----------------------------------------------------------
        -----------------| Bureau du Shérif |----------------------
        -----------------------------------------------------------

        ['Bureau du Shérif'] = {
            Job = 'sheriff', -- Nom du métier
            MenuColors = {'rgb(235, 164, 52)', 'rgb(181, 116, 13)'}, -- Couleur du panneau

            Blip = {color = 22, sprite = 60, size = 0.6}, -- Blip du métier
            Marker = {use = true, marker = 20, rgb = {15, 100, 210}, bobUpAndDown = true, rotate = false},

            Duty = vector3(1832.1400, 3680.3828, 34.3261), -- Coordonnées prise/fin de service
            DutyBlips = true, -- Les shérifs peuvent voir les autres shérifs sur la carte.

            Cloakrooms = {
                vector3(1839.0199, 3678.2297, 38.9293),
                -- Vous pouvez en ajouter...
            },

            Armorys = {
                vector3(1837.1051, 3682.4912, 38.9293),
                -- Vous pouvez en ajouter...
            },

            BossMenu = {
                grades = {5},
                coords = {
                    vector3(1844.0592, 3683.2266, 38.9293),
                    -- Vous pouvez en ajouter...
                }
            },

            Garages = {
                {
                    Label = 'Garage I.', -- Nom du garage
                    menu = vector3(1826.3181, 3671.2700, 34.1864), -- Coordonnées du menu garage
                    spawn = vector4(1822.9139, 3671.4678, 34.1864, 23.3853), -- Coordonnées de spawn véhicule
                    deposit = vector3(1822.9139, 3671.4678, 34.1864), -- Zone de dépôt véhicule

                    vehicles = {
                        --['MODELE'] = {
                        --    Label = 'NOM-VEHICULE',
                        --    minRank = GRADE-MINIMUM
                        --},

                        ['bcsobison'] = {
                            Label = 'Shérif Pick-Up',
                            minRank = 1
                        },

                        ['bcsocara'] = {
                            Label = 'Shérif Cara',
                            minRank = 1
                        },

						['bcsofugitive'] = {
                            Label = 'Shérif Fugitive',
                            minRank = 5
                        },

						['bcsogranger'] = {
                            Label = 'Shérif Ranger',
                            minRank = 1
                        },

						['bcsogranger2'] = {
                            Label = 'Shérif Ranger 2',
                            minRank = 1
                        },

						['bcsogranger3'] = {
                            Label = 'Shérif Ranger 3',
                            minRank = 1
                        },

						['bcsosandking'] = {
                            Label = 'Shérif Sandking',
                            minRank = 3
                        },

						['bcsoscout'] = {
                            Label = 'Shérif Scout',
                            minRank = 5
                        },

						['bcsostanier'] = {
                            Label = 'Shérif Stanier',
                            minRank = 1
                        },

						['bcsostanier2'] = {
                            Label = 'Shérif Scout 2',
                            minRank = 5
                        },
                    }
                },

                {
                    Label = 'Héliport',
                    menu = vector3(1835.6865, 3675.9082, 38.9306),
                    spawn = vector4(1833.8574, 3669.7117, 38.9306, 2.2002),
                    deposit = vector3(1833.8574, 3669.7117, 38.9306),

                    vehicles = {
                        ['polmav'] = {
                            Label = 'Hélicoptère Shérif',
                            minRank = 3
                        },
                    }
                },

                -- Vous pouvez en ajouter...
            },

            Shop = {
                -- minGrade = Grade minimum pour acheter l'article.
                {item = 'radio', label = 'Radio', price = 500, minGrade = 0},
                {item = 'sheriff_bulletproof', label = 'Gilet Pare-Balles', price = 500, minGrade = 0},
                {item = 'weapon_flashlight', label = 'Lampe Torche', price = 10, minGrade = 0},
                {item = 'weapon_nightstick', label = 'Matraque', price = 10, minGrade = 0},
                {item = 'weapon_stungun', label = 'Taser', price = 500, minGrade = 0},
                {item = 'weapon_pistol', label = 'Pistolet', price = 500, minGrade = 1},
                {item = 'weapon_smg', label = 'SMG', price = 500, minGrade = 2},
                {item = 'weapon_carbinerifle', label = 'Fusil d\'Assaut', price = 500, minGrade = 2},
                {item = 'weapon_pumpshotgun', label = 'Fusil à Pompe', price = 500, minGrade = 3},

                -- Articles ESX de base --
                {item = 'ammo-9', label = 'Munitions 9mm', price = 10, minGrade = 1},
                {item = 'ammo-shotgun', label = 'Munitions Fusil à Pompe', price = 20, minGrade = 3},
                {item = 'ammo-rifle', label = 'Munitions Fusil', price = 20, minGrade = 2},

                -- Articles QB de base --
                --{item = 'pistol_ammo', label = 'Munitions Pistolet', price = 10, minGrade = 1},
                --{item = 'smg_ammo', label = 'Munitions SMG', price = 15, minGrade = 2},
                --{item = 'rifle_ammo', label = 'Munitions Fusil', price = 20, minGrade = 2},
                --{item = 'shotgun_ammo', label = 'Munitions Fusil à Pompe', price = 20, minGrade = 3},
            },
        },
    },

    Commands = {
        -- Pour les policiers

        JobMenu = {
            Command = 'jobmenu',
            Control = 'F6',  -- Liste des touches: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
            Suggestion = 'Ouvrir le menu métier'
        },

        MDT = {
            Command = 'mdt',
            Suggestion = 'Ouvrir le MDT'
        },

        VehiclePanel = {
            Command = 'vehiclepanel',
            Suggestion = 'Modifier la position du panneau véhicule'
        },

        PlateReader = {
            WhitelistedVehicles = {'police', 'police2', 'police3', 'police4', 'fbi', 'fbi2', 'sheriff', 'sheriff2', 'dexbuff18', 'polstanierr', 'polstalkerr', 'polscoutr', 'polfugitiver', 'policeslick', 'polbuffalor', 'polalamor', 'polspeedo', 'poltorencer', 'pscoutnew'}, -- false = non utilisé
            Command = 'platereader',
            Control = 'F4',  -- Liste des touches: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
            Suggestion = 'Lecteur de plaques'
        },

        AreaLock = {
            Command = 'arealock',
            Suggestion = 'Menu de blocage de zone'
        },

        CameraRepair = {
            Command = 'camera_repair',
            Suggestion = 'Réparer la caméra'
        },

        Drag = {
            Command = 'drag',
            Suggestion = 'Traîner un suspect'
        },

        RemoveObjects = {
            Command = 'removeobjects',
            Suggestion = 'Retirer les objets'
        },

        -- Pour les civils

        CitizenCall = {
            Command = 'appel',
            Suggestion = 'Appeler la police'
        },
    },

    HandCuff = {
        Freeze = false, -- Geler le joueur quand il est menotté ? true / false
        CuffObject = true, -- Afficher les menottes sur les mains ? true / false
        -- Plus de touches: https://docs.fivem.net/docs/game-references/controls/
        DisableControls = {24,257,25,263,32,34,31,30,45,22,44,37,23,288,289,170,167,73,199,59,71,72,36,47,264,257,140,141,142,143,75}, -- Touches désactivées quand menotté.

        HandcuffKeyItem = 'handcuff_key', -- Objet utilisable pour ouvrir les menottes.
        DragBlacklistedVehicles = {'bf400', 'sanchez'}
    },

    BulletProofs = {
        Use = true, -- true / false
        Items = {
            -- Job = qui peut utiliser, onlyjob = Seulement ce métier ? true / false, item = OBJET
            {job = 'police', onlyjob = true, item = 'police_bulletproof'},
            {job = 'sheriff', onlyjob = true, item = 'sheriff_bulletproof'},
        }
    },

    SpeedCameras = {
        Use = true, -- true / false
        Blips = {sprite = 184, color = 82, size = 0.5}, -- Blips des radars
        OtherWhitelistedJobs = {'ambulance', 'sheriff', ''}, -- Autres métiers autorisés
        Positions = {
            -- Coords, job = quel métier reçoit l'argent, limit = limite de vitesse, price = prix (amende proportionnelle), radius = rayon, blip = true / false
            {coords = vector3(2076.3738, 2718.7109, 47.6280), job = 'police', limit = 50, price = 250, radius = 5.0, blip = true},
            {coords = vector3(1320.0201, 610.4359, 80.1452), job = 'police', limit = 130, price = 500, radius = 15.0, blip = true},
            {coords = vector3(-2686.5913, 2442.6104, 16.6781), job = 'police', limit = 130, price = 500, radius = 15.0, blip = true},
            {coords = vector3(-1057.4922, -607.0911, 17.9110), job = 'police', limit = 110, price = 2000, radius = 25.0, blip = true},
            {coords = vector3(229.3872, -662.6493, 38.2247), job = 'police', limit = 50, price = 250, radius = 15.0, blip = true},
            {coords = vector3(120.5341, -1378.1332, 28.8197), job = 'police', limit = 50, price = 250, radius = 25.0, blip = true},
        }
    },

    Prison = {
        ClearInventory = true, -- true / false
        SaveFrequency = 5,
        Blip = {label = 'Prison', color = 3, sprite = 188, size = 1.25},
        Coords = vector3(1765.2253, 2560.2373, 45.5651),
        SendPlayerToJail = vector3(1840.3468, 2579.6252, 46.0143),
        FinishCoords = vector4(1847.0192, 2585.8787, 45.6726, 267.4373),

        Hospital = {
            Blip = {label = 'Infirmerie Prison', coords = vector3(1767.7861, 2570.3118, 45.7299), color = 2, sprite = 61, size = 0.6},
            ReviveTime = 15, -- en secondes
            ClearInventory = true, -- true / false
            Beds = {
                {coords = vector3(1772.00, 2597.9272, 45.6585), heading = 90.0, prop = 'v_med_bed2'},
                {coords = vector3(1772.00, 2594.9656, 45.6586), heading = 90.0, prop = 'v_med_bed2'},
                {coords = vector3(1772.00, 2591.8428, 45.6586), heading = 90.0, prop = 'v_med_bed2'},
            },
        },

        Escape = {
            CanEscape = false, -- Autoriser l'évasion de prison ? true / false
            EscapeDistance = 500.0, -- Distance d'évasion

            EscapeByTunnel = {
                Use = false, -- Si true, nécessite ce MLO: https://ed-johnsonscripts.tebex.io/package/5303552
                Price = 5000, -- Prix pour utiliser
                TimeToEscape = 30000, -- Temps d'évasion

                Model = 's_m_y_prismuscl_01',
                Coords = vector4(1628.2682, 2584.9957, 44.5652, 1.0618),
                DoorCoords = vector4(1628.185, 2584.76, 45.5583, 1.0618),
                WalkCoords = vector4(1626.5833, 2585.4402, 45.5648, 2.9932),
                DoorObject = -904036698,
            },
        },

        Shop = {
            Blip = {label = 'Boutique Prison', color = 69, sprite = 59, size = 0.6},
            Coords = vector3(1779.9288, 2559.0132, 45.6731),
            Items = {
                -- Pour ESX
                {item = 'burger', label = 'Burger', price = 1},
                {item = 'water', label = 'Eau', price = 1},

                -- Pour QB
                --{item = 'sandwich', label = 'Sandwich', price = 1},
                --{item = 'water_bottle', label = 'Eau', price = 1},
            }
        },

        Jobs = {
            Use = true,
            Blip = {label = 'Travail Prison', color = 17, sprite = 66, size = 0.6},
            StartJob = vector3(1616.6893, 2576.9800, 45.8556),

            Works = {
                -- Soudure
                {
                    Time = 10, -- Temps en secondes
                    Money = {min = 100, max = 200}, -- Montant min/max aléatoire
                    Blip = {label = 'Point de travail', color = 26, sprite = 354, size = 0.8},
                    Animation = 'WORLD_HUMAN_WELDING',
                    RemoveProp = 'prop_weld_torch',
                    Positions = {
                        {Coords = vector3(1624.7623, 2575.7261, 45.5649), Heading = 270.0},
                        {Coords = vector3(1610.1010, 2568.1750, 45.5649), Heading = 45.0},
                    },
                },

                -- Martelage
                {
                    Time = 10,
                    Money = {min = 100, max = 200},
                    Blip = {label = 'Point de travail', color = 26, sprite = 402, size = 0.6},
                    Animation = 'WORLD_HUMAN_HAMMERING',
                    RemoveProp = 'prop_tool_hammer',
                    Positions = {
                        {Coords = vector3(1630.2081, 2527.3784, 45.5649), Heading = 235.0},
                        {Coords = vector3(1624.8821, 2513.2861, 45.5648), Heading = 100.0},
                    },
                },

                -- Jardinage
                {
                    Time = 10,
                    Money = {min = 100, max = 200},
                    Blip = {label = 'Point de travail', color = 2, sprite = 1, size = 0.6},
                    Animation = 'WORLD_HUMAN_GARDENER_PLANT',
                    RemoveProp = 'prop_cs_trowel',
                    Positions = {
                        {Coords = vector3(1771.3270, 2546.0410, 45.5871), Heading = 275.0},
                        {Coords = vector3(1757.6355, 2550.0220, 45.5651), Heading = 130.0},
                        {Coords = vector3(1700.1659, 2536.5183, 45.5595), Heading = 150.0},
                    },
                },

                -- Nettoyage
                {
                    Time = 10,
                    Money = {min = 100, max = 200},
                    Blip = {label = 'Point de travail', color = 5, sprite = 1, size = 0.6},
                    Animation = 'WORLD_HUMAN_MAID_CLEAN',
                    RemoveProp = 'prop_rag_01',
                    Positions = {
                        {Coords = vector3(1781.9982, 2558.9646, 45.6732), Heading = 0.0},
                        {Coords = vector3(1784.3669, 2563.7920, 45.6731), Heading = 0.0},
                        {Coords = vector3(1784.2422, 2552.7314, 45.6731), Heading = 0.0},
                    },
                },

                -- Vous pouvez en ajouter...
            },
        },

        PrisonGuards = {
            {Model = 'mp_m_securoguard_01', Coords = vector4(1759.9581, 2413.7534, 45.3684, 28.3456), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1820.5490, 2477.2603, 45.3775, 58.4353), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1659.2534, 2398.5969, 45.4038, 1.3208), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1544.2542, 2470.9983, 45.3487, 291.0606), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1538.5869, 2585.3689, 45.3398, 276.2064), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1572.9132, 2678.1006, 45.3943, 241.9367), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1650.8765, 2754.4700, 45.4991, 204.2366), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1772.0437, 2758.9846, 45.5022, 158.1188), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1844.9613, 2699.1370, 45.5318, 91.8540), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1819.9763, 2621.6011, 45.5227, 84.6645), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1796.1647, 2620.0349, 45.5651, 357.4224), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1797.2832, 2590.6509, 45.6206, 190.7684), Distance = 10.0},
            {Model = 'mp_m_securoguard_01', Coords = vector4(1822.2632, 2608.7876, 45.5931, 92.6341), Distance = 20.0},
        },
    },

    SecurityCameras = {
        hack = {
            enable = true, -- Piratage de caméra | true / false
            time = 30, -- Temps de piratage
            removeItem = false, -- Retirer l'objet ? | true / false
            item = 'cam_hacking', -- Objet de piratage
            distance = 15.0 -- Distance maximale de la caméra
        },

        cameras = {
            [1] = {label = "Prison CAM#1", coords = vector3(1768.84, 2530.96, 50.06), r = {x = -15.0, y = 0.0, z = 42.78}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123279267539730493/1.png'},
            [2] = {label = "Prison CAM#2", coords = vector3(1616.35, 2522.01, 50.12), r = {x = -15.0, y = 0.0, z = 300.78}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123279278671417486/2.png'},
            [3] = {label = "Prison CAM#3", coords = vector3(1694.99, 2529.18, 59.00), r = {x = -15.0, y = 0.0, z = 300.78}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123279288834195577/3.png'},
            [4] = {label = "Banque Pacific CAM#1", coords = vector3(235.35, 227.76, 113.83), r = {x = -35.0, y = 0.0, z = 220.05}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123279610604425327/4.png'},
            [5] = {label = "Banque Pacific CAM#2", coords = vector3(232.64, 221.82, 108.47), r = {x = -25.0, y = 0.0, z = -140.91}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123279622096818266/5.png'},
            [6] = {label = "Banque Pacific CAM#3", coords = vector3(251.83, 225.38, 104.50), r = {x = -35.0, y = 0.0, z = -74.87}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123279633509535854/6.png'},
            [7] = {label = "Bijouterie CAM#1", coords = vector3(-620.28, -224.15, 40.32), r = {x = -25.0, y = 0.0, z = 165.78}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123280883814764574/7.png'},
            [8] = {label = "Bijouterie CAM#2", coords = vector3(-627.47, -239.98, 40.30), r = {x = -25.0, y = 0.0, z = -10.78}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123281525883031552/8.png'},
            [9] = {label = "Banque Paleto #1", coords = vector3(-115.40, 6472.91, 33.00), r = {x = -25.0, y = 0.0, z = 200.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123289550551261344/11.png'},
            [10] = {label = "Banque Paleto #2", coords = vector3(-108.02, 6462.61, 33.40), r = {x = -25.0, y = 0.0, z = 360.00}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123289558289760396/12.png'},
            [11] = {label = "Banque Paleto #3", coords = vector3(-104.62, 6479.42, 33.38), r = {x = -25.0, y = 0.0, z = 182.00}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123289568263807019/13.png'},
            [12] = {label = "Banque Paleto #4", coords = vector3(-107.89, 6468.54, 33.90), r = {x = -25.0, y = 0.0, z = 216.00}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123289575872286790/14.png'},
            [13] = {label = "Banque Fleeca #1", coords = vector3(146.52, -1038.20, 30.72), r = {x = -25.0, y = 0.0, z = 250.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283944394211389/9.png'},
            [14] = {label = "Banque Fleeca #1", coords = vector3(150.01, -1051.31, 31.10), r = {x = -25.0, y = 0.0, z = 25.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283959363682304/10.png'},
            [15] = {label = "Banque Fleeca #2", coords = vector3(1179.08, 2705.60, 39.40), r = {x = -25.0, y = 0.0, z = 90.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283944394211389/9.png'},
            [16] = {label = "Banque Fleeca #2", coords = vector3(1171.28, 2716.70, 39.82), r = {x = -25.0, y = 0.0, z = 225.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283959363682304/10.png'},
            [17] = {label = "Banque Fleeca #3", coords = vector3(-1216.80, -331.46, 39.0), r = {x = -25.0, y = 0.0, z = 290.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283944394211389/9.png'},
            [18] = {label = "Banque Fleeca #3", coords = vector3(-1204.83, -337.83, 39.51), r = {x = -25.0, y = 0.0, z = 80.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283959363682304/10.png'},
            [19] = {label = "Banque Fleeca #4", coords = vector3(-2963.95, 478.96, 17.06), r = {x = -25.0, y = 0.0, z = 350.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283944394211389/9.png'},
            [20] = {label = "Banque Fleeca #4", coords = vector3(-2952.67, 486.13, 17.47), r = {x = -25.0, y = 0.0, z = 140.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283959363682304/10.png'},
            [21] = {label = "Banque Fleeca #5", coords = vector3(310.85, -276.56, 55.47), r = {x = -25.0, y = 0.0, z = 250.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283944394211389/9.png'},
            [22] = {label = "Banque Fleeca #5", coords = vector3(314.34, -289.67, 56.23), r = {x = -25.0, y = 0.0, z = 25.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283959363682304/10.png'},
            [23] = {label = "Banque Fleeca #6", coords = vector3(-354.35, -47.43, 50.69), r = {x = -25.0, y = 0.0, z = 250.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283944394211389/9.png'},
            [24] = {label = "Banque Fleeca #6", coords = vector3(-350.62, -60.48, 50.76), r = {x = -25.0, y = 0.0, z = 25.1595}, img = 'https://cdn.discordapp.com/attachments/907358524907081798/1123283959363682304/10.png'},
        },
    },

    -----------------------------------------------------------
    -----------------------| TRADUCTION |----------------------
    -----------------------------------------------------------

    MoneyForm = '€', -- Symbole monétaire

    -- Labels des permis
    Licences = {
        ['weapon'] = 'Permis d\'arme',
        ['dmv'] = 'Code de la route',
        ['drive'] = 'Permis de conduire',
        ['driver'] = 'Permis de conduire',
        ['bike'] = 'Permis moto',
        ['hunting'] = 'Permis de chasse',
        ['business'] = 'Licence commerciale',
    },

    Locales = {
        CameraLabel = 'Gauche ~INPUT_CELLPHONE_LEFT~ Droite ~INPUT_CELLPHONE_RIGHT~\nHaut ~INPUT_CELLPHONE_UP~ Bas ~INPUT_CELLPHONE_DOWN~\n~r~Annuler ~INPUT_CELLPHONE_CANCEL~',
        ObjectLabel = 'Tourner l\'objet ~INPUT_CELLPHONE_LEFT~ & ~INPUT_CELLPHONE_RIGHT~\n~b~Placer l\'objet~w~ ~INPUT_FRONTEND_RDOWN~',
        Male = 'Homme',
        Female = 'Femme',
        SpeedCameraFine = 'Radar - Vitesse:',
        SpeedCameraBlipLabel = 'Radar',
        None = 'Aucun',
        Jail = 'Prison',
        Reason = 'Motif',
        Time = 'Temps',

        -- Menu métier

        CitizenInteractions = 'Interactions Citoyen',
        Search = 'Fouiller',
        Cuff = 'Menotter',
        Uncuff = 'Démenotter',
        Drag = 'Traîner',
        InOutOfVehicle = 'Faire monter/descendre du véhicule',

        VehicleInteractions = 'Interactions Véhicule',
        Lockpick = 'Crocheter',
        WheelClamp = 'Sabot',
        Impound = 'Mettre en fourrière',
        VehicleSearch = 'Fouiller',

        Objects = 'Objets',
        Cone = 'Cône',
        Barrier = 'Barrière',
        Spikestrips = 'Herse',
        Tent = 'Tente',
        Light = 'Éclairage',

        MDT = 'MDT'
    },

    Texts = {
        [1] = {'[E] - Ouvrir le vestiaire', 38},
        [2] = {'[E] - Ouvrir l\'armurerie', 38},
        [3] = {'[E] - Ouvrir le garage', 38},
        [4] = {'[E] - Déposer le véhicule', 38},
        [5] = {'[E] - Prendre son service', '[E] - Finir son service', 38},
        [6] = {'[E] - Fouiller le coffre', 38},
        [7] = {'[E] - Fouiller la boîte à gants', 38},
        [8] = {'[E] - Retirer l\'objet', 38},
        [9] = {'[E] - Commencer le travail', 38},
        [10] = {'[E] - Terminer le travail', 38},
        [11] = {'[E] - Travailler', 38},
        [12] = {'[E] - S\'évader par le tunnel', 38},
        [13] = {'[E] - Boutique', 38},
        [14] = {'[E] - Envoyer en prison', 38},
        [15] = {'[E] - Menu patron', 38},
    },

    -- Fonction Notify modifiable >> cl_utils.lua
    Notify = {
        [1] = {"POLICE", "Aucun véhicule disponible pour votre grade.", 5000, "error"},
        [2] = {"POLICE", "Vous ne pouvez pas déposer ce véhicule.", 5000, "error"},
        [3] = {"POLICE", "Service: <b>EN COURS</b>", 5000, "info"},
        [4] = {"POLICE", "Service: <b>TERMINÉ</b>", 5000, "info"},
        [5] = {"POLICE", "Quelque chose bloque le passage!", 5000, "error"},
        [6] = {"POLICE", "Il n'y a pas de place dans le véhicule!", 5000, "error"},
        [7] = {"POLICE", "Vous avez reçu:", 5000, "info"},
        [8] = {"POLICE", "<br>Vous avez dépensé:<b>", 5000, "info"},
        [9] = {"POLICE", "Vous ne pouvez pas utiliser ceci.", 5000, "error"},
        [10] = {"POLICE", "Vous n'avez pas assez d'argent!", 5000, "error"},
        [11] = {"POLICE", "<b>Travail commencé!</b> Rendez-vous au point marqué sur la carte. Vous serez payé à la fin.", 10000, "info"},
        [12] = {"POLICE", "Allez au prochain point sur la carte!", 5000, "info"},
        [13] = {"POLICE", "Le gardien vous a ramené!", 5000, "info"},
        [14] = {"POLICE", "Vous n'avez pas assez d'argent liquide:", 5000, "error"},
        [15] = {"POLICE", "La porte s'ouvre, évadez-vous!", 5000, "success"},
        [16] = {"POLICE", "Arrêtez de spammer!", 8000, "error"},
        [17] = {"POLICE", "Vous n'êtes pas près d'une caméra!", 5000, "error"},
        [18] = {"POLICE", "Piratage ÉCHOUÉ!", 5000, "error"},
        [19] = {"POLICE", "Piratage RÉUSSI! La caméra est désactivée.", 5000, "success"},
        [20] = {"POLICE", "Vous avez réparé la caméra avec succès!", 6000, "success"},
        [21] = {"POLICE", "Envoyé avec succès!", 6000, "success"},
        [22] = {"POLICE", "Amende créée avec succès!", 6000, "success"},
        [23] = {"POLICE", "Il n'y a personne près de vous!", 6000, "error"},
        [24] = {"POLICE", "Peine de prison terminée!", 6000, "success"},
        [25] = {"POLICE", "Vous vous êtes évadé avec succès!", 6000, "success"},
        [26] = {"POLICE", "Vous ne pouvez pas vous évader!", 6000, "error"},
        [27] = {"POLICE", "Appel citoyen <br>Rue: ", 6000, "info"},
        [28] = {"POLICE", "Personne à proximité à traîner!", 6000, "error"},
        [29] = {"POLICE", "Quelqu'un est dans le véhicule!", 6000, "error"},
        [30] = {"POLICE", "Vous devez d'abord mettre un sabot sur la roue.", 6000, "error"},
    },

    Progressbar = {
        DutyOFF = 'Fin de service...',
        DutyON = 'Prise de service...',
        Working = 'En cours...',
        WheelClampPlacing = 'Installation du sabot...',
        Impound = 'Mise en fourrière...'
    },

    Webhooks = {
        Use = true, -- Utiliser les webhooks ? true / false
        Locale = {
            ['ItemBought'] = 'Objet acheté',
            ['CitizenCallOpen'] = 'Appel citoyen - Ouvert',
            ['CitizenCallClose'] = 'Appel citoyen - Fermé',
            ['FineCreated'] = 'Amende créée',
            ['Jail'] = 'Emprisonnement',
            ['Unjail'] = 'Libération',

            ['PlayerName'] = 'Nom du joueur',
            ['Identifier'] = 'Identifiant',
            ['Items'] = 'Objets',
            ['Text'] = 'Texte',
            ['Callid'] = 'ID Appel',
            ['Coords'] = 'Coordonnées',
            ['Assistant'] = 'Agent',
            ['CloseReason'] = 'Raison de fermeture',
            ['Receiver'] = 'Destinataire',
            ['Amount'] = 'Montant',
            ['Job'] = 'Métier',
            ['Reason'] = 'Motif',

            ['Time'] = 'Heure'
        },

        -- Pour changer la couleur d'un webhook, utilisez la valeur décimale - https://www.mathsisfun.com/hexadecimal-decimal-colors.html
        Colors = {
            ['SubAccountCreated'] = 3145631,
            ['SubAccountDeleted'] = 16711680,
            ['PermissionTableRefreshed'] = 10155240
        }
    },

    -----------------------------------------------------------
    -----------------------| UNIFORMES |-----------------------
    -----------------------------------------------------------

    CitizenWear = {label = "Tenue civile"},

    Uniforms = {
        {
            label = 'Uniforme Police', -- Nom de l'uniforme
            jobs = {
                -- Job = nom du métier, grades = grades autorisés
                {job = 'police', grades = {0,1,2,3}},
                -- Autres métiers possibles
            },
            male = {
                ['t-shirt'] = {item = 58, texture = 0},
                ['torso2'] = {item = 55, texture = 0},
                ['arms'] = {item = 41, texture = 0},
                ['pants'] = {item = 25, texture = 0},
                ['shoes'] = {item = 25, texture = 0},
                ['hat'] = {item = -1, texture = 0},
                ['accessory'] = {item = 0, texture = 0},
                ['ear'] = {item = 2, texture = 0},
                ['decals'] = {item = 0, texture = 0},
                ['mask'] = {item = 0, texture = 0}
            },
            female = {
                ['t-shirt'] = {item = 35, texture = 0},
                ['torso2'] = {item = 48, texture = 0},
                ['arms'] = {item = 44, texture = 0},
                ['pants'] = {item = 34, texture = 0},
                ['shoes'] = {item = 27, texture = 0},
                ['hat'] = {item = -1, texture = 0},
                ['accessory'] = {item = 0, texture = 0},
                ['ear'] = {item = 2, texture = 0},
                ['decals'] = {item = 0, texture = 0},
                ['mask'] = {item = 0, texture = 0}
            },
        },
        {
            label = 'Gilet Haute Visibilité',
            jobs = {
                {job = 'police', grades = {0,1,2,3,4}},
            },
            male = {
                ['t-shirt'] = {item = 59, texture = 1},
            },
            female = {
                ['t-shirt'] = {item = 36, texture = 1},
            }
        },
        {
            label = 'Uniforme Chef',
            jobs = {
                {job = 'police', grades = {4}},
            },
            male = {
                ['t-shirt'] = {item = 58, texture = 0},
                ['torso2'] = {item = 55, texture = 0},
                ['arms'] = {item = 41, texture = 0},
                ['pants'] = {item = 25, texture = 0},
                ['shoes'] = {item = 25, texture = 0},
                ['hat'] = {item = -1, texture = 0},
                ['accessory'] = {item = 0, texture = 0},
                ['ear'] = {item = 2, texture = 0},
                ['decals'] = {item = 8, texture = 3},
                ['mask'] = {item = 0, texture = 0}
            },
            female = {
                ['t-shirt'] = {item = 35, texture = 0},
                ['torso2'] = {item = 48, texture = 0},
                ['arms'] = {item = 44, texture = 0},
                ['pants'] = {item = 34, texture = 0},
                ['shoes'] = {item = 27, texture = 0},
                ['hat'] = {item = -1, texture = 0},
                ['accessory'] = {item = 0, texture = 0},
                ['ear'] = {item = 2, texture = 0},
                ['decals'] = {item = 7, texture = 3},
                ['mask'] = {item = 0, texture = 0}
            }
        },
    },

    PrisonUniform = {
        male = {
            ['t-shirt'] = {item = 15, texture = 0},
            ['torso2'] = {item = 146, texture = 0},
            ['arms'] = {item = 0, texture = 0},
            ['pants'] = {item = 3, texture = 7},
            ['shoes'] = {item = 12, texture = 12},
            ['hat'] = {item = -1, texture = 0},
            ['accessory'] = {item = 0, texture = 0},
            ['ear'] = {item = -1, texture = 0},
            ['decals'] = {item = 0, texture = 0},
            ['mask'] = {item = 0, texture = 0}
        },
        female = {
            ['t-shirt'] = {item = 3, texture = 0},
            ['torso2'] = {item = 38, texture = 3},
            ['arms'] = {item = 2, texture = 0},
            ['pants'] = {item = 3, texture = 15},
            ['shoes'] = {item = 66, texture = 5},
            ['hat'] = {item = -1, texture = 0},
            ['accessory'] = {item = 0, texture = 0},
            ['ear'] = {item = -1, texture = 0},
            ['decals'] = {item = 0, texture = 0},
            ['mask'] = {item = 0, texture = 0}
        }
    },
}
