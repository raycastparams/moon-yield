-- this is the infinite yield delta mod restored from 2024 lol

if not IY_LOADED or not _G.IY_DEBUG ~= true then
    pcall(function()
        getgenv().IY_LOADED = true
    end)

    COREGUI = game:GetService('CoreGui')

    if not game:IsLoaded() then
        local _Message = Instance.new('Message')

        _Message.Parent = COREGUI
        _Message.Text = 'Infinite Yield is waiting for the game to load'

        game.Loaded:Wait()
        _Message:Destroy()
    end

    currentVersion = 'Delta Mobile'
    Players = game:GetService('Players')
    Holder = Instance.new('Frame')
    Title = Instance.new('TextLabel')
    Dark = Instance.new('Frame')
    Cmdbar = Instance.new('TextBox')
    CMDsF = Instance.new('ScrollingFrame')
    cmdListLayout = Instance.new('UIListLayout')
    SettingsButton = Instance.new('ImageButton')
    ColorsButton = Instance.new('ImageButton')
    Settings = Instance.new('Frame')
    Prefix = Instance.new('TextLabel')
    PrefixBox = Instance.new('TextBox')
    Keybinds = Instance.new('TextLabel')
    StayOpen = Instance.new('TextLabel')
    Button = Instance.new('Frame')
    On = Instance.new('TextButton')
    Positions = Instance.new('TextLabel')
    EventBind = Instance.new('TextLabel')
    Plugins = Instance.new('TextLabel')
    Example = Instance.new('TextButton')
    Notification = Instance.new('Frame')
    Title_2 = Instance.new('TextLabel')
    Text_2 = Instance.new('TextLabel')
    CloseButton = Instance.new('TextButton')
    CloseImage = Instance.new('ImageLabel')
    PinButton = Instance.new('TextButton')
    PinImage = Instance.new('ImageLabel')
    Tooltip = Instance.new('Frame')
    Title_3 = Instance.new('TextLabel')
    Description = Instance.new('TextLabel')
    IntroBackground = Instance.new('Frame')
    Logo = Instance.new('ImageLabel')
    Credits = Instance.new('TextBox')
    KeybindsFrame = Instance.new('Frame')
    Close = Instance.new('TextButton')
    Add = Instance.new('TextButton')
    Delete = Instance.new('TextButton')
    Holder_2 = Instance.new('ScrollingFrame')
    Example_2 = Instance.new('Frame')
    Text_3 = Instance.new('TextLabel')
    Delete_2 = Instance.new('TextButton')
    KeybindEditor = Instance.new('Frame')
    background_2 = Instance.new('Frame')
    Dark_3 = Instance.new('Frame')
    Directions = Instance.new('TextLabel')
    BindTo = Instance.new('TextButton')
    TriggerLabel = Instance.new('TextLabel')
    BindTriggerSelect = Instance.new('TextButton')
    Add_2 = Instance.new('TextButton')
    Toggles = Instance.new('ScrollingFrame')
    ClickTP = Instance.new('TextLabel')
    Select = Instance.new('TextButton')
    ClickDelete = Instance.new('TextLabel')
    Select_2 = Instance.new('TextButton')
    Cmdbar_2 = Instance.new('TextBox')
    Cmdbar_3 = Instance.new('TextBox')
    CreateToggle = Instance.new('TextLabel')
    Button_2 = Instance.new('Frame')
    On_2 = Instance.new('TextButton')
    shadow_2 = Instance.new('Frame')
    PopupText_2 = Instance.new('TextLabel')
    Exit_2 = Instance.new('TextButton')
    ExitImage_2 = Instance.new('ImageLabel')
    PositionsFrame = Instance.new('Frame')
    Close_3 = Instance.new('TextButton')
    Delete_5 = Instance.new('TextButton')
    Part = Instance.new('TextButton')
    Holder_4 = Instance.new('ScrollingFrame')
    Example_4 = Instance.new('Frame')
    Text_5 = Instance.new('TextLabel')
    Delete_6 = Instance.new('TextButton')
    TP = Instance.new('TextButton')
    AliasesFrame = Instance.new('Frame')
    Close_2 = Instance.new('TextButton')
    Delete_3 = Instance.new('TextButton')
    Holder_3 = Instance.new('ScrollingFrame')
    Example_3 = Instance.new('Frame')
    Text_4 = Instance.new('TextLabel')
    Delete_4 = Instance.new('TextButton')
    Aliases = Instance.new('TextLabel')
    PluginsFrame = Instance.new('Frame')
    Close_4 = Instance.new('TextButton')
    Add_3 = Instance.new('TextButton')
    Holder_5 = Instance.new('ScrollingFrame')
    Example_5 = Instance.new('Frame')
    Text_6 = Instance.new('TextLabel')
    Delete_7 = Instance.new('TextButton')
    PluginEditor = Instance.new('Frame')
    background_3 = Instance.new('Frame')
    Dark_2 = Instance.new('Frame')
    Img = Instance.new('ImageButton')
    AddPlugin = Instance.new('TextButton')
    FileName = Instance.new('TextBox')
    About = Instance.new('TextLabel')
    Directions_2 = Instance.new('TextLabel')
    shadow_3 = Instance.new('Frame')
    PopupText_3 = Instance.new('TextLabel')
    Exit_3 = Instance.new('TextButton')
    ExitImage_3 = Instance.new('ImageLabel')
    AliasHint = Instance.new('TextLabel')
    PluginsHint = Instance.new('TextLabel')
    PositionsHint = Instance.new('TextLabel')
    ToPartFrame = Instance.new('Frame')
    background_4 = Instance.new('Frame')
    ChoosePart = Instance.new('TextButton')
    CopyPath = Instance.new('TextButton')
    Directions_3 = Instance.new('TextLabel')
    Path = Instance.new('TextLabel')
    shadow_4 = Instance.new('Frame')
    PopupText_5 = Instance.new('TextLabel')
    Exit_4 = Instance.new('TextButton')
    ExitImage_5 = Instance.new('ImageLabel')
    logs = Instance.new('Frame')
    shadow = Instance.new('Frame')
    Hide = Instance.new('TextButton')
    ImageLabel = Instance.new('ImageLabel')
    PopupText = Instance.new('TextLabel')
    Exit = Instance.new('TextButton')
    ImageLabel_2 = Instance.new('ImageLabel')
    background = Instance.new('Frame')
    chat = Instance.new('Frame')
    Clear = Instance.new('TextButton')
    SaveChatlogs = Instance.new('TextButton')
    Toggle = Instance.new('TextButton')
    scroll_2 = Instance.new('ScrollingFrame')
    join = Instance.new('Frame')
    Toggle_2 = Instance.new('TextButton')
    Clear_2 = Instance.new('TextButton')
    scroll_3 = Instance.new('ScrollingFrame')
    listlayout = Instance.new('UIListLayout', scroll_3)
    selectChat = Instance.new('TextButton')
    selectJoin = Instance.new('TextButton')

    function randomString()
        local v2 = {}

        for v3 = 1, math.random(10, 20)do
            v2[v3] = string.char(math.random(32, 126))
        end

        return table.concat(v2)
    end

    PARENT = nil

    if get_hidden_gui or gethui then
        local v4 = get_hidden_gui or gethui

        Main = Instance.new('ScreenGui')
        Main.Name = randomString()
        Main.Parent = v4()
        PARENT = Main
    elseif is_sirhurt_closure or not (syn and syn.protect_gui) then
        if COREGUI:FindFirstChild('RobloxGui') then
            PARENT = COREGUI.RobloxGui
        else
            Main = Instance.new('ScreenGui')
            Main.Name = randomString()
            Main.Parent = COREGUI
            PARENT = Main
        end
    else
        Main = Instance.new('ScreenGui')
        Main.Name = randomString()

        syn.protect_gui(Main)

        Main.Parent = COREGUI
        PARENT = Main
    end

    local v5 = {
        Ui = Instance.new('ScreenGui', gethui()),
    }

    v5.Ui.Name = 'infiniteyieldIcon'
    v5.DaIcon = Instance.new('ImageButton', v5.Ui)
    v5.DaIcon.Size = UDim2.new(0, 45, 0, 45)
    v5.DaIcon.Position = UDim2.new(0.001, 0, 0.5, 0)
    v5.DaIcon.Draggable = true
    v5.DaIcon.Image = 'rbxassetid://1352543873'
    v5.DaIcon.BackgroundColor3 = Color3.fromRGB(17, 36, 66)

    v5.DaIcon.MouseButton1Click:Connect(function()
        Main.Enabled = not Main.Enabled
    end)

    v5.das = Instance.new('UICorner', v5.DaIcon)
    v5.das.CornerRadius = UDim.new(0.20000000298023224, 0)
    shade1 = {}
    shade2 = {}
    shade3 = {}
    text1 = {}
    text2 = {}
    scroll = {}
    Holder.Name = randomString()
    Holder.Parent = PARENT
    Holder.Active = true
    Holder.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Holder.BorderSizePixel = 0
    Holder.Position = UDim2.new(1, -250, 1, -220)
    Holder.Size = UDim2.new(0, 250, 0, 220)
    Holder.ZIndex = 10

    table.insert(shade2, Holder)

    Title.Name = 'Title'
    Title.Parent = Holder
    Title.Active = true
    Title.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(0, 250, 0, 20)
    Title.Font = Enum.Font.SourceSans
    Title.TextSize = 18
    Title.Text = 'Infinite Yield ' .. currentVersion

    local v13 = ({
        ['01 01'] = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}',
        [(function(p6)
            local v7 = math.floor(p6 / 100)
            local v8 = (15 - math.floor((13 + 8 * v7) / 25) + v7 - math.floor(v7 / 4)) % 30
            local v9 = (4 + v7 - math.floor(v7 / 4)) % 7
            local v10 = (19 * (p6 % 19) + v8) % 30
            local v11 = (2 * (p6 % 4) + 4 * (p6 % 7) + 6 * v10 + v9) % 7
            local v12 = 22 + v10 + v11

            if v10 == 29 and v11 == 6 then
                return '04 19'
            elseif v10 == 28 and v11 == 6 then
                return '04 18'
            elseif v12 > 31 then
                return ('04 %02d'):format(v12 - 31)
            else
                return ('03 %02d'):format(v12)
            end
        end)(tonumber(os.date('%Y')))] = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}',
        ['10 31'] = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}',
        ['12 25'] = '\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}\u{fffd}',
    })[os.date('%m %d')]

    if v13 then
        Title.Text = ('%s %s %s'):format(v13, Title.Text, v13)
    end

    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.ZIndex = 10

    table.insert(shade1, Title)
    table.insert(text1, Title)

    Dark.Name = 'Dark'
    Dark.Parent = Holder
    Dark.Active = true
    Dark.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    Dark.BorderSizePixel = 0
    Dark.Position = UDim2.new(0, 0, 0, 45)
    Dark.Size = UDim2.new(0, 250, 0, 175)
    Dark.ZIndex = 10

    table.insert(shade1, Dark)

    Cmdbar.Name = 'Cmdbar'
    Cmdbar.Parent = Holder
    Cmdbar.BackgroundTransparency = 1
    Cmdbar.BorderSizePixel = 0
    Cmdbar.Position = UDim2.new(0, 5, 0, 20)
    Cmdbar.Size = UDim2.new(0, 240, 0, 25)
    Cmdbar.Font = Enum.Font.SourceSans
    Cmdbar.TextSize = 18
    Cmdbar.TextXAlignment = Enum.TextXAlignment.Left
    Cmdbar.TextColor3 = Color3.new(1, 1, 1)
    Cmdbar.Text = ''
    Cmdbar.ZIndex = 10
    Cmdbar.PlaceholderText = 'Command Bar'
    CMDsF.Name = 'CMDs'
    CMDsF.Parent = Holder
    CMDsF.BackgroundTransparency = 1
    CMDsF.BorderSizePixel = 0
    CMDsF.Position = UDim2.new(0, 5, 0, 45)
    CMDsF.Size = UDim2.new(0, 245, 0, 175)
    CMDsF.ScrollBarImageColor3 = Color3.fromRGB(78, 78, 79)
    CMDsF.BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    CMDsF.CanvasSize = UDim2.new(0, 0, 0, 0)
    CMDsF.MidImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    CMDsF.ScrollBarThickness = 8
    CMDsF.TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    CMDsF.VerticalScrollBarInset = 'Always'
    CMDsF.ZIndex = 10

    table.insert(scroll, CMDsF)

    cmdListLayout.Parent = CMDsF
    SettingsButton.Name = 'SettingsButton'
    SettingsButton.Parent = Holder
    SettingsButton.BackgroundTransparency = 1
    SettingsButton.Position = UDim2.new(0, 230, 0, 0)
    SettingsButton.Size = UDim2.new(0, 20, 0, 20)
    SettingsButton.Image = 'rbxassetid://1204397029'
    SettingsButton.ZIndex = 10
    ReferenceButton = Instance.new('ImageButton')
    ReferenceButton.Name = 'ReferenceButton'
    ReferenceButton.Parent = Holder
    ReferenceButton.BackgroundTransparency = 1
    ReferenceButton.Position = UDim2.new(0, 212, 0, 2)
    ReferenceButton.Size = UDim2.new(0, 16, 0, 16)
    ReferenceButton.Image = 'rbxassetid://3523243755'
    ReferenceButton.ZIndex = 10
    Settings.Name = 'Settings'
    Settings.Parent = Holder
    Settings.Active = true
    Settings.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    Settings.BorderSizePixel = 0
    Settings.Position = UDim2.new(0, 0, 0, 220)
    Settings.Size = UDim2.new(0, 250, 0, 175)
    Settings.ZIndex = 10

    table.insert(shade1, Settings)

    SettingsHolder = Instance.new('ScrollingFrame')
    SettingsHolder.Name = 'Holder'
    SettingsHolder.Parent = Settings
    SettingsHolder.BackgroundTransparency = 1
    SettingsHolder.BorderSizePixel = 0
    SettingsHolder.Size = UDim2.new(1, 0, 1, 0)
    SettingsHolder.ScrollBarImageColor3 = Color3.fromRGB(78, 78, 79)
    SettingsHolder.BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    SettingsHolder.CanvasSize = UDim2.new(0, 0, 0, 235)
    SettingsHolder.MidImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    SettingsHolder.ScrollBarThickness = 8
    SettingsHolder.TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    SettingsHolder.VerticalScrollBarInset = 'Always'
    SettingsHolder.ZIndex = 10

    table.insert(scroll, SettingsHolder)

    Prefix.Name = 'Prefix'
    Prefix.Parent = SettingsHolder
    Prefix.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Prefix.BorderSizePixel = 0
    Prefix.BackgroundTransparency = 1
    Prefix.Position = UDim2.new(0, 5, 0, 5)
    Prefix.Size = UDim2.new(1, -10, 0, 20)
    Prefix.Font = Enum.Font.SourceSans
    Prefix.TextSize = 14
    Prefix.Text = 'Prefix'
    Prefix.TextColor3 = Color3.new(1, 1, 1)
    Prefix.TextXAlignment = Enum.TextXAlignment.Left
    Prefix.ZIndex = 10

    table.insert(shade2, Prefix)
    table.insert(text1, Prefix)

    PrefixBox.Name = 'PrefixBox'
    PrefixBox.Parent = Prefix
    PrefixBox.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
    PrefixBox.BorderSizePixel = 0
    PrefixBox.Position = UDim2.new(1, -20, 0, 0)
    PrefixBox.Size = UDim2.new(0, 20, 0, 20)
    PrefixBox.Font = Enum.Font.SourceSansBold
    PrefixBox.TextSize = 14
    PrefixBox.Text = ''
    PrefixBox.TextColor3 = Color3.new(0, 0, 0)
    PrefixBox.ZIndex = 10

    table.insert(shade3, PrefixBox)
    table.insert(text2, PrefixBox)

    function makeSettingsButton(p14, p15, p16)
        local _TextButton = Instance.new('TextButton')

        _TextButton.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
        _TextButton.BorderSizePixel = 0
        _TextButton.Position = UDim2.new(0, 0, 0, 0)
        _TextButton.Size = UDim2.new(1, 0, 0, 25)
        _TextButton.Text = ''
        _TextButton.ZIndex = 10

        local _ImageLabel = Instance.new('ImageLabel')

        _ImageLabel.Name = 'Icon'
        _ImageLabel.Parent = _TextButton
        _ImageLabel.Position = UDim2.new(0, 5, 0, 5)
        _ImageLabel.Size = UDim2.new(0, 16, 0, 16)
        _ImageLabel.BackgroundTransparency = 1
        _ImageLabel.Image = p15
        _ImageLabel.ZIndex = 10

        if p16 then
            _ImageLabel.ScaleType = Enum.ScaleType.Crop
            _ImageLabel.ImageRectSize = Vector2.new(16, 16)
            _ImageLabel.ImageRectOffset = Vector2.new(p16, 0)
        end

        local _TextLabel = Instance.new('TextLabel')

        _TextLabel.Name = 'ButtonLabel'
        _TextLabel.Parent = _TextButton
        _TextLabel.BackgroundTransparency = 1
        _TextLabel.Text = p14
        _TextLabel.Position = UDim2.new(0, 28, 0, 0)
        _TextLabel.Size = UDim2.new(1, -28, 1, 0)
        _TextLabel.Font = Enum.Font.SourceSans
        _TextLabel.TextColor3 = Color3.new(1, 1, 1)
        _TextLabel.TextSize = 14
        _TextLabel.ZIndex = 10
        _TextLabel.TextXAlignment = Enum.TextXAlignment.Left

        table.insert(shade2, _TextButton)
        table.insert(text1, _TextLabel)

        return _TextButton
    end

    ColorsButton = makeSettingsButton('Edit Theme', 'rbxassetid://4911962991')
    ColorsButton.Position = UDim2.new(0, 5, 0, 55)
    ColorsButton.Size = UDim2.new(1, -10, 0, 25)
    ColorsButton.Name = 'Colors'
    ColorsButton.Parent = SettingsHolder
    Keybinds = makeSettingsButton('Edit Keybinds', 'rbxassetid://129697930')
    Keybinds.Position = UDim2.new(0, 5, 0, 85)
    Keybinds.Size = UDim2.new(1, -10, 0, 25)
    Keybinds.Name = 'Keybinds'
    Keybinds.Parent = SettingsHolder
    Aliases = makeSettingsButton('Edit Aliases', 'rbxassetid://5147488658')
    Aliases.Position = UDim2.new(0, 5, 0, 115)
    Aliases.Size = UDim2.new(1, -10, 0, 25)
    Aliases.Name = 'Aliases'
    Aliases.Parent = SettingsHolder
    StayOpen.Name = 'StayOpen'
    StayOpen.Parent = SettingsHolder
    StayOpen.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    StayOpen.BorderSizePixel = 0
    StayOpen.BackgroundTransparency = 1
    StayOpen.Position = UDim2.new(0, 5, 0, 30)
    StayOpen.Size = UDim2.new(1, -10, 0, 20)
    StayOpen.Font = Enum.Font.SourceSans
    StayOpen.TextSize = 14
    StayOpen.Text = 'Keep Menu Open'
    StayOpen.TextColor3 = Color3.new(1, 1, 1)
    StayOpen.TextXAlignment = Enum.TextXAlignment.Left
    StayOpen.ZIndex = 10

    table.insert(shade2, StayOpen)
    table.insert(text1, StayOpen)

    Button.Name = 'Button'
    Button.Parent = StayOpen
    Button.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
    Button.BorderSizePixel = 0
    Button.Position = UDim2.new(1, -20, 0, 0)
    Button.Size = UDim2.new(0, 20, 0, 20)
    Button.ZIndex = 10

    table.insert(shade3, Button)

    On.Name = 'On'
    On.Parent = Button
    On.BackgroundColor3 = Color3.fromRGB(150, 150, 151)
    On.BackgroundTransparency = 1
    On.BorderSizePixel = 0
    On.Position = UDim2.new(0, 2, 0, 2)
    On.Size = UDim2.new(0, 16, 0, 16)
    On.Font = Enum.Font.SourceSans
    On.FontSize = Enum.FontSize.Size14
    On.Text = ''
    On.TextColor3 = Color3.new(0, 0, 0)
    On.ZIndex = 10
    Positions = makeSettingsButton('Edit/Goto Waypoints', 'rbxassetid://5147488592')
    Positions.Position = UDim2.new(0, 5, 0, 145)
    Positions.Size = UDim2.new(1, -10, 0, 25)
    Positions.Name = 'Waypoints'
    Positions.Parent = SettingsHolder
    EventBind = makeSettingsButton('Edit Event Binds', 'rbxassetid://5147695474', 759)
    EventBind.Position = UDim2.new(0, 5, 0, 205)
    EventBind.Size = UDim2.new(1, -10, 0, 25)
    EventBind.Name = 'EventBinds'
    EventBind.Parent = SettingsHolder
    Plugins = makeSettingsButton('Manage Plugins', 'rbxassetid://5147695474', 743)
    Plugins.Position = UDim2.new(0, 5, 0, 175)
    Plugins.Size = UDim2.new(1, -10, 0, 25)
    Plugins.Name = 'Plugins'
    Plugins.Parent = SettingsHolder
    Example.Name = 'Example'
    Example.Parent = Holder
    Example.BackgroundTransparency = 1
    Example.BorderSizePixel = 0
    Example.Size = UDim2.new(0, 190, 0, 20)
    Example.Visible = false
    Example.Font = Enum.Font.SourceSans
    Example.TextSize = 18
    Example.Text = 'Example'
    Example.TextColor3 = Color3.new(1, 1, 1)
    Example.TextXAlignment = Enum.TextXAlignment.Left
    Example.ZIndex = 10

    table.insert(text1, Example)

    Notification.Name = randomString()
    Notification.Parent = PARENT
    Notification.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    Notification.BorderSizePixel = 0
    Notification.Position = UDim2.new(1, -500, 1, 20)
    Notification.Size = UDim2.new(0, 250, 0, 100)
    Notification.ZIndex = 10

    table.insert(shade1, Notification)

    Title_2.Name = 'Title'
    Title_2.Parent = Notification
    Title_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Title_2.BorderSizePixel = 0
    Title_2.Size = UDim2.new(0, 250, 0, 20)
    Title_2.Font = Enum.Font.SourceSans
    Title_2.TextSize = 14
    Title_2.Text = 'Notification Title'
    Title_2.TextColor3 = Color3.new(1, 1, 1)
    Title_2.ZIndex = 10

    table.insert(shade2, Title_2)
    table.insert(text1, Title_2)

    Text_2.Name = 'Text'
    Text_2.Parent = Notification
    Text_2.BackgroundTransparency = 1
    Text_2.BorderSizePixel = 0
    Text_2.Position = UDim2.new(0, 5, 0, 25)
    Text_2.Size = UDim2.new(0, 240, 0, 75)
    Text_2.Font = Enum.Font.SourceSans
    Text_2.TextSize = 16
    Text_2.Text = 'Notification Text'
    Text_2.TextColor3 = Color3.new(1, 1, 1)
    Text_2.TextWrapped = true
    Text_2.ZIndex = 10

    table.insert(text1, Text_2)

    CloseButton.Name = 'CloseButton'
    CloseButton.Parent = Notification
    CloseButton.BackgroundTransparency = 1
    CloseButton.Position = UDim2.new(1, -20, 0, 0)
    CloseButton.Size = UDim2.new(0, 20, 0, 20)
    CloseButton.Text = ''
    CloseButton.ZIndex = 10
    CloseImage.Parent = CloseButton
    CloseImage.BackgroundColor3 = Color3.new(1, 1, 1)
    CloseImage.BackgroundTransparency = 1
    CloseImage.Position = UDim2.new(0, 5, 0, 5)
    CloseImage.Size = UDim2.new(0, 10, 0, 10)
    CloseImage.Image = 'rbxassetid://5054663650'
    CloseImage.ZIndex = 10
    PinButton.Name = 'PinButton'
    PinButton.Parent = Notification
    PinButton.BackgroundTransparency = 1
    PinButton.Size = UDim2.new(0, 20, 0, 20)
    PinButton.ZIndex = 10
    PinButton.Text = ''
    PinImage.Parent = PinButton
    PinImage.BackgroundColor3 = Color3.new(1, 1, 1)
    PinImage.BackgroundTransparency = 1
    PinImage.Position = UDim2.new(0, 3, 0, 3)
    PinImage.Size = UDim2.new(0, 14, 0, 14)
    PinImage.ZIndex = 10
    PinImage.Image = 'rbxassetid://6234691350'
    Tooltip.Name = randomString()
    Tooltip.Parent = PARENT
    Tooltip.Active = true
    Tooltip.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    Tooltip.BackgroundTransparency = 0.1
    Tooltip.BorderSizePixel = 0
    Tooltip.Size = UDim2.new(0, 200, 0, 96)
    Tooltip.Visible = false
    Tooltip.ZIndex = 10

    table.insert(shade1, Tooltip)

    Title_3.Name = 'Title'
    Title_3.Parent = Tooltip
    Title_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Title_3.BackgroundTransparency = 0.1
    Title_3.BorderSizePixel = 0
    Title_3.Size = UDim2.new(0, 200, 0, 20)
    Title_3.Font = Enum.Font.SourceSans
    Title_3.TextSize = 14
    Title_3.Text = ''
    Title_3.TextColor3 = Color3.new(1, 1, 1)
    Title_3.TextTransparency = 0.1
    Title_3.ZIndex = 10

    table.insert(shade2, Title_3)
    table.insert(text1, Title_3)

    Description.Name = 'Description'
    Description.Parent = Tooltip
    Description.BackgroundTransparency = 1
    Description.BorderSizePixel = 0
    Description.Size = UDim2.new(0, 180, 0, 72)
    Description.Position = UDim2.new(0, 10, 0, 18)
    Description.Font = Enum.Font.SourceSans
    Description.TextSize = 16
    Description.Text = ''
    Description.TextColor3 = Color3.new(1, 1, 1)
    Description.TextTransparency = 0.1
    Description.TextWrapped = true
    Description.ZIndex = 10

    table.insert(text1, Description)

    IntroBackground.Name = 'IntroBackground'
    IntroBackground.Parent = Holder
    IntroBackground.Active = true
    IntroBackground.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    IntroBackground.BorderSizePixel = 0
    IntroBackground.Position = UDim2.new(0, 0, 0, 45)
    IntroBackground.Size = UDim2.new(0, 250, 0, 175)
    IntroBackground.ZIndex = 10
    Logo.Name = 'Logo'
    Logo.Parent = Holder
    Logo.BackgroundTransparency = 1
    Logo.BorderSizePixel = 0
    Logo.Position = UDim2.new(0, 125, 0, 127)
    Logo.Size = UDim2.new(0, 10, 0, 10)
    Logo.Image = 'rbxassetid://1352543873'
    Logo.ImageTransparency = 0
    Logo.ZIndex = 10
    Credits.Name = 'Credits'
    Credits.Parent = Holder
    Credits.BackgroundTransparency = 1
    Credits.BorderSizePixel = 0
    Credits.Position = UDim2.new(0, 0, 0.9, 30)
    Credits.Size = UDim2.new(0, 250, 0, 20)
    Credits.Font = Enum.Font.SourceSansLight
    Credits.FontSize = Enum.FontSize.Size18
    Credits.Text = 'Remake by pkplaysrblx'
    Credits.TextColor3 = Color3.new(1, 1, 1)
    Credits.ZIndex = 10
    KeybindsFrame.Name = 'KeybindsFrame'
    KeybindsFrame.Parent = Settings
    KeybindsFrame.Active = true
    KeybindsFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    KeybindsFrame.BorderSizePixel = 0
    KeybindsFrame.Position = UDim2.new(0, 0, 0, 175)
    KeybindsFrame.Size = UDim2.new(0, 250, 0, 175)
    KeybindsFrame.ZIndex = 10

    table.insert(shade1, KeybindsFrame)

    Close.Name = 'Close'
    Close.Parent = KeybindsFrame
    Close.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Close.BorderSizePixel = 0
    Close.Position = UDim2.new(0, 205, 0, 150)
    Close.Size = UDim2.new(0, 40, 0, 20)
    Close.Font = Enum.Font.SourceSans
    Close.TextSize = 14
    Close.Text = 'Close'
    Close.TextColor3 = Color3.new(1, 1, 1)
    Close.ZIndex = 10

    table.insert(shade2, Close)
    table.insert(text1, Close)

    Add.Name = 'Add'
    Add.Parent = KeybindsFrame
    Add.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Add.BorderSizePixel = 0
    Add.Position = UDim2.new(0, 5, 0, 150)
    Add.Size = UDim2.new(0, 40, 0, 20)
    Add.Font = Enum.Font.SourceSans
    Add.TextSize = 14
    Add.Text = 'Add'
    Add.TextColor3 = Color3.new(1, 1, 1)
    Add.ZIndex = 10

    table.insert(shade2, Add)
    table.insert(text1, Add)

    Delete.Name = 'Delete'
    Delete.Parent = KeybindsFrame
    Delete.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Delete.BorderSizePixel = 0
    Delete.Position = UDim2.new(0, 50, 0, 150)
    Delete.Size = UDim2.new(0, 40, 0, 20)
    Delete.Font = Enum.Font.SourceSans
    Delete.TextSize = 14
    Delete.Text = 'Clear'
    Delete.TextColor3 = Color3.new(1, 1, 1)
    Delete.ZIndex = 10

    table.insert(shade2, Delete)
    table.insert(text1, Delete)

    Holder_2.Name = 'Holder'
    Holder_2.Parent = KeybindsFrame
    Holder_2.BackgroundTransparency = 1
    Holder_2.BorderSizePixel = 0
    Holder_2.Position = UDim2.new(0, 0, 0, 0)
    Holder_2.Size = UDim2.new(0, 250, 0, 145)
    Holder_2.ScrollBarImageColor3 = Color3.fromRGB(78, 78, 79)
    Holder_2.BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_2.CanvasSize = UDim2.new(0, 0, 0, 0)
    Holder_2.MidImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_2.ScrollBarThickness = 0
    Holder_2.TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_2.VerticalScrollBarInset = 'Always'
    Holder_2.ZIndex = 10
    Example_2.Name = 'Example'
    Example_2.Parent = KeybindsFrame
    Example_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Example_2.BorderSizePixel = 0
    Example_2.Size = UDim2.new(0, 10, 0, 20)
    Example_2.Visible = false
    Example_2.ZIndex = 10

    table.insert(shade2, Example_2)

    Text_3.Name = 'Text'
    Text_3.Parent = Example_2
    Text_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Text_3.BorderSizePixel = 0
    Text_3.Position = UDim2.new(0, 10, 0, 0)
    Text_3.Size = UDim2.new(0, 240, 0, 20)
    Text_3.Font = Enum.Font.SourceSans
    Text_3.TextSize = 14
    Text_3.Text = 'nom'
    Text_3.TextColor3 = Color3.new(1, 1, 1)
    Text_3.TextXAlignment = Enum.TextXAlignment.Left
    Text_3.ZIndex = 10

    table.insert(shade2, Text_3)
    table.insert(text1, Text_3)

    Delete_2.Name = 'Delete'
    Delete_2.Parent = Text_3
    Delete_2.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
    Delete_2.BorderSizePixel = 0
    Delete_2.Position = UDim2.new(0, 200, 0, 0)
    Delete_2.Size = UDim2.new(0, 40, 0, 20)
    Delete_2.Font = Enum.Font.SourceSans
    Delete_2.TextSize = 14
    Delete_2.Text = 'Delete'
    Delete_2.TextColor3 = Color3.new(0, 0, 0)
    Delete_2.ZIndex = 10

    table.insert(shade3, Delete_2)
    table.insert(text2, Delete_2)

    KeybindEditor.Name = randomString()
    KeybindEditor.Parent = PARENT
    KeybindEditor.Active = true
    KeybindEditor.BackgroundTransparency = 1
    KeybindEditor.Position = UDim2.new(0.5, -180, 0, -500)
    KeybindEditor.Size = UDim2.new(0, 360, 0, 20)
    KeybindEditor.ZIndex = 10
    background_2.Name = 'background'
    background_2.Parent = KeybindEditor
    background_2.Active = true
    background_2.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    background_2.BorderSizePixel = 0
    background_2.Position = UDim2.new(0, 0, 0, 20)
    background_2.Size = UDim2.new(0, 360, 0, 185)
    background_2.ZIndex = 10

    table.insert(shade1, background_2)

    Dark_3.Name = 'Dark'
    Dark_3.Parent = background_2
    Dark_3.Active = true
    Dark_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Dark_3.BorderSizePixel = 0
    Dark_3.Position = UDim2.new(0, 135, 0, 0)
    Dark_3.Size = UDim2.new(0, 2, 0, 185)
    Dark_3.ZIndex = 10

    table.insert(shade2, Dark_3)

    Directions.Name = 'Directions'
    Directions.Parent = background_2
    Directions.BackgroundTransparency = 1
    Directions.BorderSizePixel = 0
    Directions.Position = UDim2.new(0, 10, 0, 15)
    Directions.Size = UDim2.new(0, 115, 0, 90)
    Directions.ZIndex = 10
    Directions.Font = Enum.Font.SourceSans
    Directions.Text = 'Click the button below and press a key/mouse button. Then select what you want to bind it to.'
    Directions.TextColor3 = Color3.fromRGB(255, 255, 255)
    Directions.TextSize = 14
    Directions.TextWrapped = true
    Directions.TextYAlignment = Enum.TextYAlignment.Top

    table.insert(text1, Directions)

    BindTo.Name = 'BindTo'
    BindTo.Parent = background_2
    BindTo.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    BindTo.BorderSizePixel = 0
    BindTo.Position = UDim2.new(0, 10, 0, 95)
    BindTo.Size = UDim2.new(0, 115, 0, 50)
    BindTo.ZIndex = 10
    BindTo.Font = Enum.Font.SourceSans
    BindTo.Text = 'Click to bind'
    BindTo.TextColor3 = Color3.fromRGB(255, 255, 255)
    BindTo.TextSize = 16

    table.insert(shade2, BindTo)
    table.insert(text1, BindTo)

    TriggerLabel.Name = 'TriggerLabel'
    TriggerLabel.Parent = background_2
    TriggerLabel.BackgroundTransparency = 1
    TriggerLabel.Position = UDim2.new(0, 10, 0, 155)
    TriggerLabel.Size = UDim2.new(0, 45, 0, 20)
    TriggerLabel.ZIndex = 10
    TriggerLabel.Font = Enum.Font.SourceSans
    TriggerLabel.Text = 'Trigger:'
    TriggerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TriggerLabel.TextSize = 14
    TriggerLabel.TextXAlignment = Enum.TextXAlignment.Left

    table.insert(text1, TriggerLabel)

    BindTriggerSelect.Name = 'BindTo'
    BindTriggerSelect.Parent = background_2
    BindTriggerSelect.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    BindTriggerSelect.BorderSizePixel = 0
    BindTriggerSelect.Position = UDim2.new(0, 60, 0, 155)
    BindTriggerSelect.Size = UDim2.new(0, 65, 0, 20)
    BindTriggerSelect.ZIndex = 10
    BindTriggerSelect.Font = Enum.Font.SourceSans
    BindTriggerSelect.Text = 'KeyDown'
    BindTriggerSelect.TextColor3 = Color3.fromRGB(255, 255, 255)
    BindTriggerSelect.TextSize = 16

    table.insert(shade2, BindTriggerSelect)
    table.insert(text1, BindTriggerSelect)

    Add_2.Name = 'Add'
    Add_2.Parent = background_2
    Add_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Add_2.BorderSizePixel = 0
    Add_2.Position = UDim2.new(0, 310, 0, 35)
    Add_2.Size = UDim2.new(0, 40, 0, 20)
    Add_2.ZIndex = 10
    Add_2.Font = Enum.Font.SourceSans
    Add_2.Text = 'Add'
    Add_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Add_2.TextSize = 14

    table.insert(shade2, Add_2)
    table.insert(text1, Add_2)

    Toggles.Name = 'Toggles'
    Toggles.Parent = background_2
    Toggles.BackgroundTransparency = 1
    Toggles.BorderSizePixel = 0
    Toggles.Position = UDim2.new(0, 150, 0, 125)
    Toggles.Size = UDim2.new(0, 200, 0, 50)
    Toggles.ZIndex = 10
    Toggles.BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Toggles.CanvasSize = UDim2.new(0, 0, 0, 50)
    Toggles.ScrollBarThickness = 8
    Toggles.TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Toggles.VerticalScrollBarInset = Enum.ScrollBarInset.Always

    table.insert(scroll, Toggles)

    ClickTP.Name = 'Click TP (Hold Key & Click)'
    ClickTP.Parent = Toggles
    ClickTP.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    ClickTP.BorderSizePixel = 0
    ClickTP.Size = UDim2.new(0, 200, 0, 20)
    ClickTP.ZIndex = 10
    ClickTP.Font = Enum.Font.SourceSans
    ClickTP.Text = '    Click TP (Hold Key & Click)'
    ClickTP.TextColor3 = Color3.fromRGB(255, 255, 255)
    ClickTP.TextSize = 14
    ClickTP.TextXAlignment = Enum.TextXAlignment.Left

    table.insert(shade2, ClickTP)
    table.insert(text1, ClickTP)

    Select.Name = 'Select'
    Select.Parent = ClickTP
    Select.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
    Select.BorderSizePixel = 0
    Select.Position = UDim2.new(0, 160, 0, 0)
    Select.Size = UDim2.new(0, 40, 0, 20)
    Select.ZIndex = 10
    Select.Font = Enum.Font.SourceSans
    Select.Text = 'Add'
    Select.TextColor3 = Color3.fromRGB(0, 0, 0)
    Select.TextSize = 14

    table.insert(shade3, Select)
    table.insert(text2, Select)

    ClickDelete.Name = 'Click Delete (Hold Key & Click)'
    ClickDelete.Parent = Toggles
    ClickDelete.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    ClickDelete.BorderSizePixel = 0
    ClickDelete.Position = UDim2.new(0, 0, 0, 25)
    ClickDelete.Size = UDim2.new(0, 200, 0, 20)
    ClickDelete.ZIndex = 10
    ClickDelete.Font = Enum.Font.SourceSans
    ClickDelete.Text = '    Click Delete (Hold Key & Click)'
    ClickDelete.TextColor3 = Color3.fromRGB(255, 255, 255)
    ClickDelete.TextSize = 14
    ClickDelete.TextXAlignment = Enum.TextXAlignment.Left

    table.insert(shade2, ClickDelete)
    table.insert(text1, ClickDelete)

    Select_2.Name = 'Select'
    Select_2.Parent = ClickDelete
    Select_2.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
    Select_2.BorderSizePixel = 0
    Select_2.Position = UDim2.new(0, 160, 0, 0)
    Select_2.Size = UDim2.new(0, 40, 0, 20)
    Select_2.ZIndex = 10
    Select_2.Font = Enum.Font.SourceSans
    Select_2.Text = 'Add'
    Select_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    Select_2.TextSize = 14

    table.insert(shade3, Select_2)
    table.insert(text2, Select_2)

    Cmdbar_2.Name = 'Cmdbar_2'
    Cmdbar_2.Parent = background_2
    Cmdbar_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Cmdbar_2.BorderSizePixel = 0
    Cmdbar_2.Position = UDim2.new(0, 150, 0, 35)
    Cmdbar_2.Size = UDim2.new(0, 150, 0, 20)
    Cmdbar_2.ZIndex = 10
    Cmdbar_2.Font = Enum.Font.SourceSans
    Cmdbar_2.PlaceholderText = 'Command'
    Cmdbar_2.Text = ''
    Cmdbar_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Cmdbar_2.TextSize = 14
    Cmdbar_2.TextXAlignment = Enum.TextXAlignment.Left
    Cmdbar_3.Name = 'Cmdbar_3'
    Cmdbar_3.Parent = background_2
    Cmdbar_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Cmdbar_3.BorderSizePixel = 0
    Cmdbar_3.Position = UDim2.new(0, 150, 0, 60)
    Cmdbar_3.Size = UDim2.new(0, 150, 0, 20)
    Cmdbar_3.ZIndex = 10
    Cmdbar_3.Font = Enum.Font.SourceSans
    Cmdbar_3.PlaceholderText = 'Command 2'
    Cmdbar_3.Text = ''
    Cmdbar_3.TextColor3 = Color3.fromRGB(255, 255, 255)
    Cmdbar_3.TextSize = 14
    Cmdbar_3.TextXAlignment = Enum.TextXAlignment.Left
    CreateToggle.Name = 'CreateToggle'
    CreateToggle.Parent = background_2
    CreateToggle.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    CreateToggle.BackgroundTransparency = 1
    CreateToggle.BorderSizePixel = 0
    CreateToggle.Position = UDim2.new(0, 152, 0, 10)
    CreateToggle.Size = UDim2.new(0, 198, 0, 20)
    CreateToggle.ZIndex = 10
    CreateToggle.Font = Enum.Font.SourceSans
    CreateToggle.Text = 'Create Toggle'
    CreateToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    CreateToggle.TextSize = 14
    CreateToggle.TextXAlignment = Enum.TextXAlignment.Left

    table.insert(text1, CreateToggle)

    Button_2.Name = 'Button'
    Button_2.Parent = CreateToggle
    Button_2.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
    Button_2.BorderSizePixel = 0
    Button_2.Position = UDim2.new(1, -20, 0, 0)
    Button_2.Size = UDim2.new(0, 20, 0, 20)
    Button_2.ZIndex = 10

    table.insert(shade3, Button_2)

    On_2.Name = 'On'
    On_2.Parent = Button_2
    On_2.BackgroundColor3 = Color3.fromRGB(150, 150, 151)
    On_2.BackgroundTransparency = 1
    On_2.BorderSizePixel = 0
    On_2.Position = UDim2.new(0, 2, 0, 2)
    On_2.Size = UDim2.new(0, 16, 0, 16)
    On_2.ZIndex = 10
    On_2.Font = Enum.Font.SourceSans
    On_2.Text = ''
    On_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    On_2.TextSize = 14
    shadow_2.Name = 'shadow'
    shadow_2.Parent = KeybindEditor
    shadow_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    shadow_2.BorderSizePixel = 0
    shadow_2.Size = UDim2.new(0, 360, 0, 20)
    shadow_2.ZIndex = 10

    table.insert(shade2, shadow_2)

    PopupText_2.Name = 'PopupText_2'
    PopupText_2.Parent = shadow_2
    PopupText_2.BackgroundTransparency = 1
    PopupText_2.Size = UDim2.new(1, 0, 0.949999988, 0)
    PopupText_2.ZIndex = 10
    PopupText_2.Font = Enum.Font.SourceSans
    PopupText_2.Text = 'Set Keybinds'
    PopupText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    PopupText_2.TextSize = 14
    PopupText_2.TextWrapped = true

    table.insert(text1, PopupText_2)

    Exit_2.Name = 'Exit_2'
    Exit_2.Parent = shadow_2
    Exit_2.BackgroundTransparency = 1
    Exit_2.Position = UDim2.new(1, -20, 0, 0)
    Exit_2.Size = UDim2.new(0, 20, 0, 20)
    Exit_2.ZIndex = 10
    Exit_2.Text = ''
    ExitImage_2.Parent = Exit_2
    ExitImage_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ExitImage_2.BackgroundTransparency = 1
    ExitImage_2.Position = UDim2.new(0, 5, 0, 5)
    ExitImage_2.Size = UDim2.new(0, 10, 0, 10)
    ExitImage_2.ZIndex = 10
    ExitImage_2.Image = 'rbxassetid://5054663650'
    PositionsFrame.Name = 'PositionsFrame'
    PositionsFrame.Parent = Settings
    PositionsFrame.Active = true
    PositionsFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    PositionsFrame.BorderSizePixel = 0
    PositionsFrame.Size = UDim2.new(0, 250, 0, 175)
    PositionsFrame.Position = UDim2.new(0, 0, 0, 175)
    PositionsFrame.ZIndex = 10

    table.insert(shade1, PositionsFrame)

    Close_3.Name = 'Close'
    Close_3.Parent = PositionsFrame
    Close_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Close_3.BorderSizePixel = 0
    Close_3.Position = UDim2.new(0, 205, 0, 150)
    Close_3.Size = UDim2.new(0, 40, 0, 20)
    Close_3.Font = Enum.Font.SourceSans
    Close_3.TextSize = 14
    Close_3.Text = 'Close'
    Close_3.TextColor3 = Color3.new(1, 1, 1)
    Close_3.ZIndex = 10

    table.insert(shade2, Close_3)
    table.insert(text1, Close_3)

    Delete_5.Name = 'Delete'
    Delete_5.Parent = PositionsFrame
    Delete_5.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Delete_5.BorderSizePixel = 0
    Delete_5.Position = UDim2.new(0, 50, 0, 150)
    Delete_5.Size = UDim2.new(0, 40, 0, 20)
    Delete_5.Font = Enum.Font.SourceSans
    Delete_5.TextSize = 14
    Delete_5.Text = 'Clear'
    Delete_5.TextColor3 = Color3.new(1, 1, 1)
    Delete_5.ZIndex = 10

    table.insert(shade2, Delete_5)
    table.insert(text1, Delete_5)

    Part.Name = 'PartGoto'
    Part.Parent = PositionsFrame
    Part.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Part.BorderSizePixel = 0
    Part.Position = UDim2.new(0, 5, 0, 150)
    Part.Size = UDim2.new(0, 40, 0, 20)
    Part.Font = Enum.Font.SourceSans
    Part.TextSize = 14
    Part.Text = 'Part'
    Part.TextColor3 = Color3.new(1, 1, 1)
    Part.ZIndex = 10

    table.insert(shade2, Part)
    table.insert(text1, Part)

    Holder_4.Name = 'Holder'
    Holder_4.Parent = PositionsFrame
    Holder_4.BackgroundTransparency = 1
    Holder_4.BorderSizePixel = 0
    Holder_4.Position = UDim2.new(0, 0, 0, 0)
    Holder_4.Selectable = false
    Holder_4.Size = UDim2.new(0, 250, 0, 145)
    Holder_4.ScrollBarImageColor3 = Color3.fromRGB(78, 78, 79)
    Holder_4.BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_4.CanvasSize = UDim2.new(0, 0, 0, 0)
    Holder_4.MidImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_4.ScrollBarThickness = 0
    Holder_4.TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_4.VerticalScrollBarInset = 'Always'
    Holder_4.ZIndex = 10
    Example_4.Name = 'Example'
    Example_4.Parent = PositionsFrame
    Example_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Example_4.BorderSizePixel = 0
    Example_4.Size = UDim2.new(0, 10, 0, 20)
    Example_4.Visible = false
    Example_4.Position = UDim2.new(0, 0, 0, -5)
    Example_4.ZIndex = 10

    table.insert(shade2, Example_4)

    Text_5.Name = 'Text'
    Text_5.Parent = Example_4
    Text_5.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Text_5.BorderSizePixel = 0
    Text_5.Position = UDim2.new(0, 10, 0, 0)
    Text_5.Size = UDim2.new(0, 240, 0, 20)
    Text_5.Font = Enum.Font.SourceSans
    Text_5.TextSize = 14
    Text_5.Text = 'Position'
    Text_5.TextColor3 = Color3.new(1, 1, 1)
    Text_5.TextXAlignment = Enum.TextXAlignment.Left
    Text_5.ZIndex = 10

    table.insert(shade2, Text_5)
    table.insert(text1, Text_5)

    Delete_6.Name = 'Delete'
    Delete_6.Parent = Text_5
    Delete_6.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
    Delete_6.BorderSizePixel = 0
    Delete_6.Position = UDim2.new(0, 200, 0, 0)
    Delete_6.Size = UDim2.new(0, 40, 0, 20)
    Delete_6.Font = Enum.Font.SourceSans
    Delete_6.TextSize = 14
    Delete_6.Text = 'Delete'
    Delete_6.TextColor3 = Color3.new(0, 0, 0)
    Delete_6.ZIndex = 10

    table.insert(shade3, Delete_6)
    table.insert(text2, Delete_6)

    TP.Name = 'TP'
    TP.Parent = Text_5
    TP.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
    TP.BorderSizePixel = 0
    TP.Position = UDim2.new(0, 155, 0, 0)
    TP.Size = UDim2.new(0, 40, 0, 20)
    TP.Font = Enum.Font.SourceSans
    TP.TextSize = 14
    TP.Text = 'Goto'
    TP.TextColor3 = Color3.new(0, 0, 0)
    TP.ZIndex = 10

    table.insert(shade3, TP)
    table.insert(text2, TP)

    AliasesFrame.Name = 'AliasesFrame'
    AliasesFrame.Parent = Settings
    AliasesFrame.Active = true
    AliasesFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    AliasesFrame.BorderSizePixel = 0
    AliasesFrame.Position = UDim2.new(0, 0, 0, 175)
    AliasesFrame.Size = UDim2.new(0, 250, 0, 175)
    AliasesFrame.ZIndex = 10

    table.insert(shade1, AliasesFrame)

    Close_2.Name = 'Close'
    Close_2.Parent = AliasesFrame
    Close_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Close_2.BorderSizePixel = 0
    Close_2.Position = UDim2.new(0, 205, 0, 150)
    Close_2.Size = UDim2.new(0, 40, 0, 20)
    Close_2.Font = Enum.Font.SourceSans
    Close_2.TextSize = 14
    Close_2.Text = 'Close'
    Close_2.TextColor3 = Color3.new(1, 1, 1)
    Close_2.ZIndex = 10

    table.insert(shade2, Close_2)
    table.insert(text1, Close_2)

    Delete_3.Name = 'Delete'
    Delete_3.Parent = AliasesFrame
    Delete_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Delete_3.BorderSizePixel = 0
    Delete_3.Position = UDim2.new(0, 5, 0, 150)
    Delete_3.Size = UDim2.new(0, 40, 0, 20)
    Delete_3.Font = Enum.Font.SourceSans
    Delete_3.TextSize = 14
    Delete_3.Text = 'Clear'
    Delete_3.TextColor3 = Color3.new(1, 1, 1)
    Delete_3.ZIndex = 10

    table.insert(shade2, Delete_3)
    table.insert(text1, Delete_3)

    Holder_3.Name = 'Holder'
    Holder_3.Parent = AliasesFrame
    Holder_3.BackgroundTransparency = 1
    Holder_3.BorderSizePixel = 0
    Holder_3.Position = UDim2.new(0, 0, 0, 0)
    Holder_3.Size = UDim2.new(0, 250, 0, 145)
    Holder_3.ScrollBarImageColor3 = Color3.fromRGB(78, 78, 79)
    Holder_3.BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_3.CanvasSize = UDim2.new(0, 0, 0, 0)
    Holder_3.MidImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_3.ScrollBarThickness = 0
    Holder_3.TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_3.VerticalScrollBarInset = 'Always'
    Holder_3.ZIndex = 10
    Example_3.Name = 'Example'
    Example_3.Parent = AliasesFrame
    Example_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Example_3.BorderSizePixel = 0
    Example_3.Size = UDim2.new(0, 10, 0, 20)
    Example_3.Visible = false
    Example_3.ZIndex = 10

    table.insert(shade2, Example_3)

    Text_4.Name = 'Text'
    Text_4.Parent = Example_3
    Text_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Text_4.BorderSizePixel = 0
    Text_4.Position = UDim2.new(0, 10, 0, 0)
    Text_4.Size = UDim2.new(0, 240, 0, 20)
    Text_4.Font = Enum.Font.SourceSans
    Text_4.TextSize = 14
    Text_4.Text = 'honk'
    Text_4.TextColor3 = Color3.new(1, 1, 1)
    Text_4.TextXAlignment = Enum.TextXAlignment.Left
    Text_4.ZIndex = 10

    table.insert(shade2, Text_4)
    table.insert(text1, Text_4)

    Delete_4.Name = 'Delete'
    Delete_4.Parent = Text_4
    Delete_4.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
    Delete_4.BorderSizePixel = 0
    Delete_4.Position = UDim2.new(0, 200, 0, 0)
    Delete_4.Size = UDim2.new(0, 40, 0, 20)
    Delete_4.Font = Enum.Font.SourceSans
    Delete_4.TextSize = 14
    Delete_4.Text = 'Delete'
    Delete_4.TextColor3 = Color3.new(0, 0, 0)
    Delete_4.ZIndex = 10

    table.insert(shade3, Delete_4)
    table.insert(text2, Delete_4)

    PluginsFrame.Name = 'PluginsFrame'
    PluginsFrame.Parent = Settings
    PluginsFrame.Active = true
    PluginsFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    PluginsFrame.BorderSizePixel = 0
    PluginsFrame.Position = UDim2.new(0, 0, 0, 175)
    PluginsFrame.Size = UDim2.new(0, 250, 0, 175)
    PluginsFrame.ZIndex = 10

    table.insert(shade1, PluginsFrame)

    Close_4.Name = 'Close'
    Close_4.Parent = PluginsFrame
    Close_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Close_4.BorderSizePixel = 0
    Close_4.Position = UDim2.new(0, 205, 0, 150)
    Close_4.Size = UDim2.new(0, 40, 0, 20)
    Close_4.Font = Enum.Font.SourceSans
    Close_4.TextSize = 14
    Close_4.Text = 'Close'
    Close_4.TextColor3 = Color3.new(1, 1, 1)
    Close_4.ZIndex = 10

    table.insert(shade2, Close_4)
    table.insert(text1, Close_4)

    Add_3.Name = 'Add'
    Add_3.Parent = PluginsFrame
    Add_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Add_3.BorderSizePixel = 0
    Add_3.Position = UDim2.new(0, 5, 0, 150)
    Add_3.Size = UDim2.new(0, 40, 0, 20)
    Add_3.Font = Enum.Font.SourceSans
    Add_3.TextSize = 14
    Add_3.Text = 'Add'
    Add_3.TextColor3 = Color3.new(1, 1, 1)
    Add_3.ZIndex = 10

    table.insert(shade2, Add_3)
    table.insert(text1, Add_3)

    Holder_5.Name = 'Holder'
    Holder_5.Parent = PluginsFrame
    Holder_5.BackgroundTransparency = 1
    Holder_5.BorderSizePixel = 0
    Holder_5.Position = UDim2.new(0, 0, 0, 0)
    Holder_5.Selectable = false
    Holder_5.Size = UDim2.new(0, 250, 0, 145)
    Holder_5.ScrollBarImageColor3 = Color3.fromRGB(78, 78, 79)
    Holder_5.BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_5.CanvasSize = UDim2.new(0, 0, 0, 0)
    Holder_5.MidImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_5.ScrollBarThickness = 0
    Holder_5.TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    Holder_5.VerticalScrollBarInset = 'Always'
    Holder_5.ZIndex = 10
    Example_5.Name = 'Example'
    Example_5.Parent = PluginsFrame
    Example_5.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Example_5.BorderSizePixel = 0
    Example_5.Size = UDim2.new(0, 10, 0, 20)
    Example_5.Visible = false
    Example_5.ZIndex = 10

    table.insert(shade2, Example_5)

    Text_6.Name = 'Text'
    Text_6.Parent = Example_5
    Text_6.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Text_6.BorderSizePixel = 0
    Text_6.Position = UDim2.new(0, 10, 0, 0)
    Text_6.Size = UDim2.new(0, 240, 0, 20)
    Text_6.Font = Enum.Font.SourceSans
    Text_6.TextSize = 14
    Text_6.Text = 'F4 > Toggle Fly'
    Text_6.TextColor3 = Color3.new(1, 1, 1)
    Text_6.TextXAlignment = Enum.TextXAlignment.Left
    Text_6.ZIndex = 10

    table.insert(shade2, Text_6)
    table.insert(text1, Text_6)

    Delete_7.Name = 'Delete'
    Delete_7.Parent = Text_6
    Delete_7.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
    Delete_7.BorderSizePixel = 0
    Delete_7.Position = UDim2.new(0, 200, 0, 0)
    Delete_7.Size = UDim2.new(0, 40, 0, 20)
    Delete_7.Font = Enum.Font.SourceSans
    Delete_7.TextSize = 14
    Delete_7.Text = 'Delete'
    Delete_7.TextColor3 = Color3.new(0, 0, 0)
    Delete_7.ZIndex = 10

    table.insert(shade3, Delete_7)
    table.insert(text2, Delete_7)

    PluginEditor.Name = randomString()
    PluginEditor.Parent = PARENT
    PluginEditor.BorderSizePixel = 0
    PluginEditor.Active = true
    PluginEditor.BackgroundTransparency = 1
    PluginEditor.Position = UDim2.new(0.5, -180, 0, -500)
    PluginEditor.Size = UDim2.new(0, 360, 0, 20)
    PluginEditor.ZIndex = 10
    background_3.Name = 'background'
    background_3.Parent = PluginEditor
    background_3.Active = true
    background_3.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    background_3.BorderSizePixel = 0
    background_3.Position = UDim2.new(0, 0, 0, 20)
    background_3.Size = UDim2.new(0, 360, 0, 160)
    background_3.ZIndex = 10

    table.insert(shade1, background_3)

    Dark_2.Name = 'Dark'
    Dark_2.Parent = background_3
    Dark_2.Active = true
    Dark_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    Dark_2.BorderSizePixel = 0
    Dark_2.Position = UDim2.new(0, 222, 0, 0)
    Dark_2.Size = UDim2.new(0, 2, 0, 160)
    Dark_2.ZIndex = 10

    table.insert(shade2, Dark_2)

    Img.Name = 'Img'
    Img.Parent = background_3
    Img.BackgroundTransparency = 1
    Img.Position = UDim2.new(0, 242, 0, 3)
    Img.Size = UDim2.new(0, 100, 0, 95)
    Img.Image = 'rbxassetid://4113050383'
    Img.ZIndex = 10
    AddPlugin.Name = 'AddPlugin'
    AddPlugin.Parent = background_3
    AddPlugin.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    AddPlugin.BorderSizePixel = 0
    AddPlugin.Position = UDim2.new(0, 235, 0, 100)
    AddPlugin.Size = UDim2.new(0, 115, 0, 50)
    AddPlugin.Font = Enum.Font.SourceSans
    AddPlugin.TextSize = 14
    AddPlugin.Text = 'Add Plugin'
    AddPlugin.TextColor3 = Color3.new(1, 1, 1)
    AddPlugin.ZIndex = 10

    table.insert(shade2, AddPlugin)
    table.insert(text1, AddPlugin)

    FileName.Name = 'FileName'
    FileName.Parent = background_3
    FileName.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    FileName.BorderSizePixel = 0
    FileName.Position = UDim2.new(0.028, 0, 0.625, 0)
    FileName.Size = UDim2.new(0, 200, 0, 50)
    FileName.Font = Enum.Font.SourceSans
    FileName.TextSize = 14
    FileName.Text = 'Plugin File Name'
    FileName.TextColor3 = Color3.new(1, 1, 1)
    FileName.ZIndex = 10

    table.insert(shade2, FileName)
    table.insert(text1, FileName)

    About.Name = 'About'
    About.Parent = background_3
    About.BackgroundTransparency = 1
    About.BorderSizePixel = 0
    About.Position = UDim2.new(0, 17, 0, 10)
    About.Size = UDim2.new(0, 187, 0, 49)
    About.Font = Enum.Font.SourceSans
    About.TextSize = 14
    About.Text = "Plugins are .iy files and should be located in the 'workspace' folder of your exploit."
    About.TextColor3 = Color3.fromRGB(255, 255, 255)
    About.TextWrapped = true
    About.TextYAlignment = Enum.TextYAlignment.Top
    About.ZIndex = 10

    table.insert(text1, About)

    Directions_2.Name = 'Directions'
    Directions_2.Parent = background_3
    Directions_2.BackgroundTransparency = 1
    Directions_2.BorderSizePixel = 0
    Directions_2.Position = UDim2.new(0, 17, 0, 60)
    Directions_2.Size = UDim2.new(0, 187, 0, 49)
    Directions_2.Font = Enum.Font.SourceSans
    Directions_2.TextSize = 14
    Directions_2.Text = 'Type the name of the plugin file you want to add below.'
    Directions_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Directions_2.TextWrapped = true
    Directions_2.TextYAlignment = Enum.TextYAlignment.Top
    Directions_2.ZIndex = 10

    table.insert(text1, Directions_2)

    shadow_3.Name = 'shadow'
    shadow_3.Parent = PluginEditor
    shadow_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    shadow_3.BorderSizePixel = 0
    shadow_3.Size = UDim2.new(0, 360, 0, 20)
    shadow_3.ZIndex = 10

    table.insert(shade2, shadow_3)

    PopupText_3.Name = 'PopupText'
    PopupText_3.Parent = shadow_3
    PopupText_3.BackgroundTransparency = 1
    PopupText_3.Size = UDim2.new(1, 0, 0.95, 0)
    PopupText_3.ZIndex = 10
    PopupText_3.Font = Enum.Font.SourceSans
    PopupText_3.TextSize = 14
    PopupText_3.Text = 'Add Plugins'
    PopupText_3.TextColor3 = Color3.new(1, 1, 1)
    PopupText_3.TextWrapped = true

    table.insert(text1, PopupText_3)

    Exit_3.Name = 'Exit'
    Exit_3.Parent = shadow_3
    Exit_3.BackgroundTransparency = 1
    Exit_3.Position = UDim2.new(1, -20, 0, 0)
    Exit_3.Size = UDim2.new(0, 20, 0, 20)
    Exit_3.Text = ''
    Exit_3.ZIndex = 10
    ExitImage_3.Parent = Exit_3
    ExitImage_3.BackgroundColor3 = Color3.new(1, 1, 1)
    ExitImage_3.BackgroundTransparency = 1
    ExitImage_3.Position = UDim2.new(0, 5, 0, 5)
    ExitImage_3.Size = UDim2.new(0, 10, 0, 10)
    ExitImage_3.Image = 'rbxassetid://5054663650'
    ExitImage_3.ZIndex = 10
    AliasHint.Name = 'AliasHint'
    AliasHint.Parent = AliasesFrame
    AliasHint.BackgroundTransparency = 1
    AliasHint.BorderSizePixel = 0
    AliasHint.Position = UDim2.new(0, 25, 0, 40)
    AliasHint.Size = UDim2.new(0, 200, 0, 50)
    AliasHint.Font = Enum.Font.SourceSansItalic
    AliasHint.TextSize = 16
    AliasHint.Text = "Add aliases by using the 'addalias' command"
    AliasHint.TextColor3 = Color3.new(1, 1, 1)
    AliasHint.TextStrokeColor3 = Color3.new(1, 1, 1)
    AliasHint.TextWrapped = true
    AliasHint.ZIndex = 10

    table.insert(text1, AliasHint)

    PluginsHint.Name = 'PluginsHint'
    PluginsHint.Parent = PluginsFrame
    PluginsHint.BackgroundTransparency = 1
    PluginsHint.BorderSizePixel = 0
    PluginsHint.Position = UDim2.new(0, 25, 0, 40)
    PluginsHint.Size = UDim2.new(0, 200, 0, 50)
    PluginsHint.Font = Enum.Font.SourceSansItalic
    PluginsHint.TextSize = 16
    PluginsHint.Text = 'Download plugins from the IY Discord (discord.io/infiniteyield)'
    PluginsHint.TextColor3 = Color3.new(1, 1, 1)
    PluginsHint.TextStrokeColor3 = Color3.new(1, 1, 1)
    PluginsHint.TextWrapped = true
    PluginsHint.ZIndex = 10

    table.insert(text1, PluginsHint)

    PositionsHint.Name = 'PositionsHint'
    PositionsHint.Parent = PositionsFrame
    PositionsHint.BackgroundTransparency = 1
    PositionsHint.BorderSizePixel = 0
    PositionsHint.Position = UDim2.new(0, 25, 0, 40)
    PositionsHint.Size = UDim2.new(0, 200, 0, 70)
    PositionsHint.Font = Enum.Font.SourceSansItalic
    PositionsHint.TextSize = 16
    PositionsHint.Text = "Use the 'swp' or 'setwaypoint' command to add a position using your character (NOTE: Part teleports will not save)"
    PositionsHint.TextColor3 = Color3.new(1, 1, 1)
    PositionsHint.TextStrokeColor3 = Color3.new(1, 1, 1)
    PositionsHint.TextWrapped = true
    PositionsHint.ZIndex = 10

    table.insert(text1, PositionsHint)

    ToPartFrame.Name = randomString()
    ToPartFrame.Parent = PARENT
    ToPartFrame.Active = true
    ToPartFrame.BackgroundTransparency = 1
    ToPartFrame.Position = UDim2.new(0.5, -180, 0, -500)
    ToPartFrame.Size = UDim2.new(0, 360, 0, 20)
    ToPartFrame.ZIndex = 10
    background_4.Name = 'background'
    background_4.Parent = ToPartFrame
    background_4.Active = true
    background_4.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
    background_4.BorderSizePixel = 0
    background_4.Position = UDim2.new(0, 0, 0, 20)
    background_4.Size = UDim2.new(0, 360, 0, 117)
    background_4.ZIndex = 10

    table.insert(shade1, background_4)

    ChoosePart.Name = 'ChoosePart'
    ChoosePart.Parent = background_4
    ChoosePart.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    ChoosePart.BorderSizePixel = 0
    ChoosePart.Position = UDim2.new(0, 100, 0, 55)
    ChoosePart.Size = UDim2.new(0, 75, 0, 30)
    ChoosePart.Font = Enum.Font.SourceSans
    ChoosePart.TextSize = 14
    ChoosePart.Text = 'Select Part'
    ChoosePart.TextColor3 = Color3.new(1, 1, 1)
    ChoosePart.ZIndex = 10

    table.insert(shade2, ChoosePart)
    table.insert(text1, ChoosePart)

    CopyPath.Name = 'CopyPath'
    CopyPath.Parent = background_4
    CopyPath.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    CopyPath.BorderSizePixel = 0
    CopyPath.Position = UDim2.new(0, 185, 0, 55)
    CopyPath.Size = UDim2.new(0, 75, 0, 30)
    CopyPath.Font = Enum.Font.SourceSans
    CopyPath.TextSize = 14
    CopyPath.Text = 'Copy Path'
    CopyPath.TextColor3 = Color3.new(1, 1, 1)
    CopyPath.ZIndex = 10

    table.insert(shade2, CopyPath)
    table.insert(text1, CopyPath)

    Directions_3.Name = 'Directions'
    Directions_3.Parent = background_4
    Directions_3.BackgroundTransparency = 1
    Directions_3.BorderSizePixel = 0
    Directions_3.Position = UDim2.new(0, 51, 0, 17)
    Directions_3.Size = UDim2.new(0, 257, 0, 32)
    Directions_3.Font = Enum.Font.SourceSans
    Directions_3.TextSize = 14
    Directions_3.Text = 'Click on a part and then click the "Select Part" button below to set it as a teleport location'
    Directions_3.TextColor3 = Color3.new(1, 1, 1)
    Directions_3.TextWrapped = true
    Directions_3.TextYAlignment = Enum.TextYAlignment.Top
    Directions_3.ZIndex = 10

    table.insert(text1, Directions_3)

    Path.Name = 'Path'
    Path.Parent = background_4
    Path.BackgroundTransparency = 1
    Path.BorderSizePixel = 0
    Path.Position = UDim2.new(0, 0, 0, 94)
    Path.Size = UDim2.new(0, 360, 0, 16)
    Path.Font = Enum.Font.SourceSansItalic
    Path.TextSize = 14
    Path.Text = ''
    Path.TextColor3 = Color3.new(1, 1, 1)
    Path.TextScaled = true
    Path.TextWrapped = true
    Path.TextYAlignment = Enum.TextYAlignment.Top
    Path.ZIndex = 10

    table.insert(text1, Path)

    shadow_4.Name = 'shadow'
    shadow_4.Parent = ToPartFrame
    shadow_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
    shadow_4.BorderSizePixel = 0
    shadow_4.Size = UDim2.new(0, 360, 0, 20)
    shadow_4.ZIndex = 10

    table.insert(shade2, shadow_4)

    PopupText_5.Name = 'PopupText'
    PopupText_5.Parent = shadow_4
    PopupText_5.BackgroundTransparency = 1
    PopupText_5.Size = UDim2.new(1, 0, 0.95, 0)
    PopupText_5.ZIndex = 10
    PopupText_5.Font = Enum.Font.SourceSans
    PopupText_5.TextSize = 14
    PopupText_5.Text = 'Teleport to Part'
    PopupText_5.TextColor3 = Color3.new(1, 1, 1)
    PopupText_5.TextWrapped = true

    table.insert(text1, PopupText_5)

    Exit_4.Name = 'Exit'
    Exit_4.Parent = shadow_4
    Exit_4.BackgroundTransparency = 1
    Exit_4.Position = UDim2.new(1, -20, 0, 0)
    Exit_4.Size = UDim2.new(0, 20, 0, 20)
    Exit_4.Text = ''
    Exit_4.ZIndex = 10
    ExitImage_5.Parent = Exit_4
    ExitImage_5.BackgroundColor3 = Color3.new(1, 1, 1)
    ExitImage_5.BackgroundTransparency = 1
    ExitImage_5.Position = UDim2.new(0, 5, 0, 5)
    ExitImage_5.Size = UDim2.new(0, 10, 0, 10)
    ExitImage_5.Image = 'rbxassetid://5054663650'
    ExitImage_5.ZIndex = 10
    logs.Name = randomString()
    logs.Parent = PARENT
    logs.Active = true
    logs.BackgroundTransparency = 1
    logs.Position = UDim2.new(0, 0, 1, 10)
    logs.Size = UDim2.new(0, 338, 0, 20)
    logs.ZIndex = 10
    shadow.Name = 'shadow'
    shadow.Parent = logs
    shadow.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
    shadow.BorderSizePixel = 0
    shadow.Position = UDim2.new(0, 0, 0.00999999978, 0)
    shadow.Size = UDim2.new(0, 338, 0, 20)
    shadow.ZIndex = 10

    table.insert(shade2, shadow)

    Hide.Name = 'Hide'
    Hide.Parent = shadow
    Hide.BackgroundTransparency = 1
    Hide.Position = UDim2.new(1, -40, 0, 0)
    Hide.Size = UDim2.new(0, 20, 0, 20)
    Hide.ZIndex = 10
    Hide.Text = ''
    ImageLabel.Parent = Hide
    ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.Position = UDim2.new(0, 3, 0, 3)
    ImageLabel.Size = UDim2.new(0, 14, 0, 14)
    ImageLabel.Image = 'rbxassetid://2406617031'
    ImageLabel.ZIndex = 10
    PopupText.Name = 'PopupText'
    PopupText.Parent = shadow
    PopupText.BackgroundTransparency = 1
    PopupText.Size = UDim2.new(1, 0, 0.949999988, 0)
    PopupText.ZIndex = 10
    PopupText.Font = Enum.Font.SourceSans
    PopupText.FontSize = Enum.FontSize.Size14
    PopupText.Text = 'Logs'
    PopupText.TextColor3 = Color3.new(1, 1, 1)
    PopupText.TextWrapped = true

    table.insert(text1, PopupText)

    Exit.Name = 'Exit'
    Exit.Parent = shadow
    Exit.BackgroundTransparency = 1
    Exit.Position = UDim2.new(1, -20, 0, 0)
    Exit.Size = UDim2.new(0, 20, 0, 20)
    Exit.ZIndex = 10
    Exit.Text = ''
    ImageLabel_2.Parent = Exit
    ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
    ImageLabel_2.BackgroundTransparency = 1
    ImageLabel_2.Position = UDim2.new(0, 5, 0, 5)
    ImageLabel_2.Size = UDim2.new(0, 10, 0, 10)
    ImageLabel_2.Image = 'rbxassetid://5054663650'
    ImageLabel_2.ZIndex = 10
    background.Name = 'background'
    background.Parent = logs
    background.Active = true
    background.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.145098)
    background.BorderSizePixel = 0
    background.ClipsDescendants = true
    background.Position = UDim2.new(0, 0, 1, 0)
    background.Size = UDim2.new(0, 338, 0, 245)
    background.ZIndex = 10
    chat.Name = 'chat'
    chat.Parent = background
    chat.Active = true
    chat.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.145098)
    chat.BorderSizePixel = 0
    chat.ClipsDescendants = true
    chat.Size = UDim2.new(0, 338, 0, 245)
    chat.ZIndex = 10

    table.insert(shade1, chat)

    Clear.Name = 'Clear'
    Clear.Parent = chat
    Clear.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
    Clear.BorderSizePixel = 0
    Clear.Position = UDim2.new(0, 5, 0, 220)
    Clear.Size = UDim2.new(0, 50, 0, 20)
    Clear.ZIndex = 10
    Clear.Font = Enum.Font.SourceSans
    Clear.FontSize = Enum.FontSize.Size14
    Clear.Text = 'Clear'
    Clear.TextColor3 = Color3.new(1, 1, 1)

    table.insert(shade2, Clear)
    table.insert(text1, Clear)

    SaveChatlogs.Name = 'SaveChatlogs'
    SaveChatlogs.Parent = chat
    SaveChatlogs.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
    SaveChatlogs.BorderSizePixel = 0
    SaveChatlogs.Position = UDim2.new(0, 258, 0, 220)
    SaveChatlogs.Size = UDim2.new(0, 75, 0, 20)
    SaveChatlogs.ZIndex = 10
    SaveChatlogs.Font = Enum.Font.SourceSans
    SaveChatlogs.FontSize = Enum.FontSize.Size14
    SaveChatlogs.Text = 'Save To .txt'
    SaveChatlogs.TextColor3 = Color3.new(1, 1, 1)

    table.insert(shade2, SaveChatlogs)
    table.insert(text1, SaveChatlogs)

    Toggle.Name = 'Toggle'
    Toggle.Parent = chat
    Toggle.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
    Toggle.BorderSizePixel = 0
    Toggle.Position = UDim2.new(0, 60, 0, 220)
    Toggle.Size = UDim2.new(0, 66, 0, 20)
    Toggle.ZIndex = 10
    Toggle.Font = Enum.Font.SourceSans
    Toggle.FontSize = Enum.FontSize.Size14
    Toggle.Text = 'Disabled'
    Toggle.TextColor3 = Color3.new(1, 1, 1)

    table.insert(shade2, Toggle)
    table.insert(text1, Toggle)

    scroll_2.Name = 'scroll'
    scroll_2.Parent = chat
    scroll_2.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
    scroll_2.BorderSizePixel = 0
    scroll_2.Position = UDim2.new(0, 5, 0, 25)
    scroll_2.Size = UDim2.new(0, 328, 0, 190)
    scroll_2.ZIndex = 10
    scroll_2.BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    scroll_2.CanvasSize = UDim2.new(0, 0, 0, 10)
    scroll_2.ScrollBarThickness = 8
    scroll_2.TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'

    table.insert(scroll, scroll_2)
    table.insert(shade2, scroll_2)

    join.Name = 'join'
    join.Parent = background
    join.Active = true
    join.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.145098)
    join.BorderSizePixel = 0
    join.ClipsDescendants = true
    join.Size = UDim2.new(0, 338, 0, 245)
    join.Visible = false
    join.ZIndex = 10

    table.insert(shade1, join)

    Toggle_2.Name = 'Toggle'
    Toggle_2.Parent = join
    Toggle_2.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
    Toggle_2.BorderSizePixel = 0
    Toggle_2.Position = UDim2.new(0, 60, 0, 220)
    Toggle_2.Size = UDim2.new(0, 66, 0, 20)
    Toggle_2.ZIndex = 10
    Toggle_2.Font = Enum.Font.SourceSans
    Toggle_2.FontSize = Enum.FontSize.Size14
    Toggle_2.Text = 'Disabled'
    Toggle_2.TextColor3 = Color3.new(1, 1, 1)

    table.insert(shade2, Toggle_2)
    table.insert(text1, Toggle_2)

    Clear_2.Name = 'Clear'
    Clear_2.Parent = join
    Clear_2.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
    Clear_2.BorderSizePixel = 0
    Clear_2.Position = UDim2.new(0, 5, 0, 220)
    Clear_2.Size = UDim2.new(0, 50, 0, 20)
    Clear_2.ZIndex = 10
    Clear_2.Font = Enum.Font.SourceSans
    Clear_2.FontSize = Enum.FontSize.Size14
    Clear_2.Text = 'Clear'
    Clear_2.TextColor3 = Color3.new(1, 1, 1)

    table.insert(shade2, Clear_2)
    table.insert(text1, Clear_2)

    scroll_3.Name = 'scroll'
    scroll_3.Parent = join
    scroll_3.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
    scroll_3.BorderSizePixel = 0
    scroll_3.Position = UDim2.new(0, 5, 0, 25)
    scroll_3.Size = UDim2.new(0, 328, 0, 190)
    scroll_3.ZIndex = 10
    scroll_3.BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'
    scroll_3.CanvasSize = UDim2.new(0, 0, 0, 10)
    scroll_3.ScrollBarThickness = 8
    scroll_3.TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png'

    table.insert(scroll, scroll_3)
    table.insert(shade2, scroll_3)

    selectChat.Name = 'selectChat'
    selectChat.Parent = background
    selectChat.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
    selectChat.BorderSizePixel = 0
    selectChat.Position = UDim2.new(0, 5, 0, 5)
    selectChat.Size = UDim2.new(0, 164, 0, 20)
    selectChat.ZIndex = 10
    selectChat.Font = Enum.Font.SourceSans
    selectChat.FontSize = Enum.FontSize.Size14
    selectChat.Text = 'Chat Logs'
    selectChat.TextColor3 = Color3.new(1, 1, 1)

    table.insert(shade2, selectChat)
    table.insert(text1, selectChat)

    selectJoin.Name = 'selectJoin'
    selectJoin.Parent = background
    selectJoin.BackgroundColor3 = Color3.new(0.305882, 0.305882, 0.309804)
    selectJoin.BorderSizePixel = 0
    selectJoin.Position = UDim2.new(0, 169, 0, 5)
    selectJoin.Size = UDim2.new(0, 164, 0, 20)
    selectJoin.ZIndex = 10
    selectJoin.Font = Enum.Font.SourceSans
    selectJoin.FontSize = Enum.FontSize.Size14
    selectJoin.Text = 'Join Logs'
    selectJoin.TextColor3 = Color3.new(1, 1, 1)

    table.insert(shade3, selectJoin)
    table.insert(text1, selectJoin)

    function create(p20)
        local v21, v22, v23 = pairs(p20)
        local v24 = {}

        while true do
            local v25

            v23, v25 = v21(v22, v23)

            if v23 == nil then
                break
            end

            v24[v25[1] ] = Instance.new(v25[2])
        end

        local v26, v27, v28 = pairs(p20)

        while true do
            local v29

            v28, v29 = v26(v27, v28)

            if v28 == nil then
                break
            end

            local v30, v31, v32 = pairs(v29[3])

            while true do
                local v33

                v32, v33 = v30(v31, v32)

                if v32 == nil then
                    break
                end
                if type(v33) ~= 'table' then
                    v24[v29[1] ][v32] = v33
                else
                    v24[v29[1] ][v32] = v24[v33[1] ]
                end
            end
        end

        return v24[1]
    end

    local _TextService = game:GetService('TextService')

    ViewportTextBox = (function()
        local u44 = {
            __index = {
                Update = function(p35)
                    local _CursorPosition = p35.TextBox.CursorPosition
                    local _Text = p35.TextBox.Text

                    if _Text == '' then
                        p35.TextBox.Position = UDim2.new(0, 2, 0, 0)

                        return
                    elseif _CursorPosition ~= -1 then
                        local v38 = _Text:sub(1, _CursorPosition - 1)
                        local v39 = nil
                        local v40 = -p35.TextBox.Position.X.Offset
                        local v41 = v40 + p35.View.AbsoluteSize.X
                        local _X = _TextService:GetTextSize(_Text, p35.TextBox.TextSize, p35.TextBox.Font, Vector2.new(999999999, 100)).X
                        local _X2 = _TextService:GetTextSize(v38, p35.TextBox.TextSize, p35.TextBox.Font, Vector2.new(999999999, 100)).X

                        if v41 < _X2 then
                            v39 = math.max(-2, _X2 - p35.View.AbsoluteSize.X + 2)
                        elseif _X2 < v40 then
                            v39 = math.max(-2, _X2 - 2)
                        elseif _X < v41 then
                            v39 = math.max(-2, _X - p35.View.AbsoluteSize.X + 2)
                        end
                        if v39 then
                            p35.TextBox.Position = UDim2.new(0, -v39, 0, 0)
                            p35.TextBox.Size = UDim2.new(1, v39, 1, 0)
                        end
                    end
                end,
            },
        }

        return {
            convert = function(p45)
                local u46 = setmetatable({
                    OffsetX = 0,
                    TextBox = p45,
                }, u44)
                local _Frame = Instance.new('Frame')

                _Frame.BackgroundTransparency = p45.BackgroundTransparency
                _Frame.BackgroundColor3 = p45.BackgroundColor3
                _Frame.BorderSizePixel = p45.BorderSizePixel
                _Frame.BorderColor3 = p45.BorderColor3
                _Frame.Position = p45.Position
                _Frame.Size = p45.Size
                _Frame.ClipsDescendants = true
                _Frame.Name = p45.Name
                _Frame.ZIndex = 10
                p45.BackgroundTransparency = 1
                p45.Position = UDim2.new(0, 4, 0, 0)
                p45.Size = UDim2.new(1, -8, 1, 0)
                p45.TextXAlignment = Enum.TextXAlignment.Left
                p45.Name = 'Input'

                table.insert(text1, p45)
                table.insert(shade2, _Frame)

                u46.View = _Frame

                p45.Changed:Connect(function(p48)
                    if p48 == 'Text' or (p48 == 'CursorPosition' or p48 == 'AbsoluteSize') then
                        u46:Update()
                    end
                end)

                local v49 = u46

                u46.Update(v49)

                _Frame.Parent = p45.Parent
                p45.Parent = _Frame

                return u46
            end,
        }
    end)()
    ViewportTextBox.convert(Cmdbar).View.ZIndex = 10
    ViewportTextBox.convert(Cmdbar_2).View.ZIndex = 10
    ViewportTextBox.convert(Cmdbar_3).View.ZIndex = 10
    IYMouse = Players.LocalPlayer:GetMouse()
    UserInputService = game:GetService('UserInputService')
    TweenService = game:GetService('TweenService')
    HttpService = game:GetService('HttpService')
    MarketplaceService = game:GetService('MarketplaceService')
    RunService = game:GetService('RunService')
    TeleportService = game:GetService('TeleportService')
    StarterGui = game:GetService('StarterGui')
    GuiService = game:GetService('GuiService')
    Lighting = game:GetService('Lighting')
    ContextActionService = game:GetService('ContextActionService')
    NetworkClient = game:GetService('NetworkClient')
    ReplicatedStorage = game:GetService('ReplicatedStorage')
    GroupService = game:GetService('GroupService')
    PathService = game:GetService('PathfindingService')
    SoundService = game:GetService('SoundService')
    Teams = game:GetService('Teams')
    StarterPlayer = game:GetService('StarterPlayer')
    InsertService = game:GetService('InsertService')
    ChatService = game:GetService('Chat')
    ProximityPromptService = game:GetService('ProximityPromptService')
    StatsService = game:GetService('Stats')
    MaterialService = game:GetService('MaterialService')
    sethidden = sethiddenproperty or (set_hidden_property or set_hidden_prop)
    gethidden = gethiddenproperty or (get_hidden_property or get_hidden_prop)

    local v50 = not (syn and syn.queue_on_teleport) and (not queue_on_teleport and fluxus)

    if v50 then
        v50 = fluxus.queue_on_teleport
    end

    queueteleport = v50
    httprequest = syn and syn.request or http and http.request or (http_request or fluxus and fluxus.request or request)

    local _PlaceId = game.PlaceId

    JobId = game.JobId
    PlaceId = _PlaceId

    function writefileExploit()
        if writefile then
            return true
        end
    end
    function isNumber(p52)
        if tonumber(p52) ~= nil or p52 == 'inf' then
            return true
        end
    end
    function getRoot(p53)
        return p53:FindFirstChild('HumanoidRootPart') or (p53:FindFirstChild('Torso') or p53:FindFirstChild('UpperTorso'))
    end
    function tools(p54)
        if p54:FindFirstChildOfClass('Backpack'):FindFirstChildOfClass('Tool') or p54.Character:FindFirstChildOfClass('Tool') then
            return true
        end
    end
    function r15(p55)
        if p55.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
            return true
        end
    end
    function toClipboard(p56)
        local v57 = not (setclipboard or toclipboard) and (not set_clipboard and Clipboard)

        if v57 then
            v57 = Clipboard.set
        end
        if v57 then
            v57(p56)
            notify('Clipboard', 'Copied to clipboard')
        else
            notify('Clipboard', "Your exploit doesn't have the ability to use the clipboard")
        end
    end
    function getHierarchy(p58)
        local v59, v60

        if string.find(p58.Name, ' ') then
            v59 = '["' .. p58.Name .. '"]'
            v60 = false
        else
            v59 = p58.Name
            v60 = true
        end

        local v61, v62

        if p58.Parent == game then
            v61 = p58
            v62 = ''
        else
            v61 = p58

            repeat
                p58 = p58.Parent
                v62 = p58.ClassName
            until p58.Parent == game
        end
        if v61.Parent ~= p58 then
            v61 = v61.Parent

            if string.find(tostring(v61), ' ') then
                if v60 then
                    v59 = '["' .. v61.Name .. '"].' .. v59
                else
                    v59 = '["' .. v61.Name .. '"]' .. v59
                end

                v60 = false
            else
                if v60 then
                    v59 = v61.Name .. '.' .. v59
                else
                    v59 = v61.Name .. '' .. v59
                end

                v60 = true
            end
            if v61.Parent == p58 then
            end
        end
        if string.find(tostring(v61), ' ') then
            v59 = '["' .. v61.Name .. '"]'
            v60 = false
        end
        if v60 then
            return 'game:GetService("' .. v62 .. '").' .. v59
        else
            return 'game:GetService("' .. v62 .. '")' .. v59
        end
    end

    AllWaypoints = {}

    local u63 = false

    function writefileCooldown(p64, p65)
        task.spawn(function()
            if u63 then
                repeat
                    wait()
                until u63 == false

                writefileCooldown(p64, p65)
            else
                u63 = true

                writefile(p64, p65)
            end

            wait(3)

            u63 = false
        end)
    end
    function dragGUI(p66)
        task.spawn(function()
            local u67 = nil
            local u68 = nil
            local u69 = Vector3.new(0, 0, 0)
            local u70 = nil

            local function u74(p71)
                local v72 = p71.Position - u69
                local v73 = UDim2.new(u70.X.Scale, u70.X.Offset + v72.X, u70.Y.Scale, u70.Y.Offset + v72.Y)

                TweenService:Create(p66, TweenInfo.new(0.2), {Position = v73}):Play()
            end

            p66.InputBegan:Connect(function(p75)
                if p75.UserInputType == Enum.UserInputType.MouseButton1 or p75.UserInputType == Enum.UserInputType.Touch then
                    u67 = true
                    u69 = p75.Position
                    u70 = p66.Position

                    p75.Changed:Connect(function()
                        if p75.UserInputState == Enum.UserInputState.End then
                            u67 = false
                        end
                    end)
                end
            end)
            p66.InputChanged:Connect(function(p76)
                if p76.UserInputType == Enum.UserInputType.MouseMovement or p76.UserInputType == Enum.UserInputType.Touch then
                    u68 = p76
                end
            end)
            UserInputService.InputChanged:Connect(function(p77)
                if p77 == u68 and u67 then
                    u74(p77)
                end
            end)
        end)
    end

    dragGUI(logs)
    dragGUI(KeybindEditor)
    dragGUI(PluginEditor)
    dragGUI(ToPartFrame)

    eventEditor = (function()
        local u78 = {}

        local function v81(p79, p80)
            u78[p79] = {
                commands = {},
                sets = p80 or {},
            }
        end

        local u82 = nil

        local function v103(p83, ...)
            local u84 = {...}
            local v85 = u78[p83]

            if v85 then
                local v86, v87, v88 = pairs(v85.commands)

                while true do
                    local u89

                    v88, u89 = v86(v87, v88)

                    if v88 == nil then
                        break
                    end

                    local v90, v91, v92 = pairs(v85.sets)
                    local v93 = true

                    while true do
                        local v94

                        v92, v94 = v90(v91, v92)

                        if v92 == nil then
                            break
                        end

                        local v95 = u84[v92]
                        local v96 = u89[2][v92]
                        local _Type = v94.Type

                        if _Type == 'Player' then
                            if v96 == 0 then
                                if v93 then
                                    v93 = tostring(Players.LocalPlayer) == v95
                                end
                            elseif v96 ~= 1 then
                                if v93 then
                                    v93 = table.find(getPlayer(v96, Players.LocalPlayer), v95)
                                end
                            end
                        elseif _Type == 'String' then
                            if v96 ~= 0 then
                                if v93 then
                                    v93 = string.find(v95:lower(), v96:lower())
                                end
                            end
                        elseif _Type == 'Number' and (v96 ~= 0 and v93) then
                            v93 = tonumber(v95) <= tonumber(v96)
                        end
                        if not v93 then
                            break
                        end
                    end

                    if v93 then
                        pcall(task.spawn(function()
                            local v98 = u89[1]
                            local v99, v100, v101 = pairs(u84)

                            while true do
                                local v102

                                v101, v102 = v99(v100, v101)

                                if v101 == nil then
                                    break
                                end

                                v98 = v98:gsub('%$' .. v101, v102)
                            end

                            wait(u89[3] or 0)
                            execCmd(v98)
                        end))
                    end
                end
            end
        end

        local v104 = create
        local v105 = {
            {
                1,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14509804546833),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'EventEditor',
                    Position = UDim2.new(0.5, -175, 0, -500),
                    Size = UDim2.new(0, 350, 0, 20),
                    ZIndex = 10,
                },
            },
            {
                2,
                'Frame',
                {
                    BackgroundColor3 = currentShade2,
                    BorderSizePixel = 0,
                    Name = 'TopBar',
                    Parent = {1},
                    Size = UDim2.new(1, 0, 0, 20),
                    ZIndex = 10,
                },
            },
            {
                3,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Title',
                    Parent = {2},
                    Position = UDim2.new(0, 0, 0, 0),
                    Size = UDim2.new(1, 0, 0.95, 0),
                    Text = 'Event Editor',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextXAlignment = Enum.TextXAlignment.Center,
                    ZIndex = 10,
                },
            },
            {
                4,
                'TextButton',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Close',
                    Parent = {2},
                    Position = UDim2.new(1, -20, 0, 0),
                    Size = UDim2.new(0, 20, 0, 20),
                    Text = '',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                5,
                'ImageLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Image = 'rbxassetid://5054663650',
                    Parent = {4},
                    Position = UDim2.new(0, 5, 0, 5),
                    Size = UDim2.new(0, 10, 0, 10),
                    ZIndex = 10,
                },
            },
            {
                6,
                'Frame',
                {
                    BackgroundColor3 = currentShade1,
                    BorderSizePixel = 0,
                    Name = 'Content',
                    Parent = {1},
                    Position = UDim2.new(0, 0, 0, 20),
                    Size = UDim2.new(1, 0, 0, 202),
                    ZIndex = 10,
                },
            },
            {
                7,
                'ScrollingFrame',
                {
                    BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14509804546833),
                    BackgroundTransparency = 1,
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    BorderSizePixel = 0,
                    BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',
                    CanvasSize = UDim2.new(0, 0, 0, 100),
                    Name = 'List',
                    Parent = {6},
                    Position = UDim2.new(0, 5, 0, 5),
                    ScrollBarImageColor3 = Color3.new(0.30588236451149, 0.30588236451149, 0.3098039329052),
                    ScrollBarThickness = 8,
                    Size = UDim2.new(1, -10, 1, -10),
                    TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',
                    ZIndex = 10,
                },
            },
            {
                8,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Name = 'Holder',
                    Parent = {7},
                    Size = UDim2.new(1, 0, 1, 0),
                    ZIndex = 10,
                },
            },
            {
                9,
                'UIListLayout',
                {
                    Parent = {8},
                    SortOrder = 2,
                },
            },
            {
                10,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14509804546833),
                    BackgroundTransparency = 1,
                    BorderColor3 = Color3.new(0.3137255012989, 0.3137255012989, 0.3137255012989),
                    BorderSizePixel = 0,
                    ClipsDescendants = true,
                    Name = 'Settings',
                    Parent = {6},
                    Position = UDim2.new(1, 0, 0, 0),
                    Size = UDim2.new(0, 150, 1, 0),
                    ZIndex = 10,
                },
            },
            {
                11,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14509804546833),
                    Name = 'Slider',
                    Parent = {10},
                    Position = UDim2.new(0, -150, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    ZIndex = 10,
                },
            },
            {
                12,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.23529413342476, 0.23529413342476, 0.23529413342476),
                    BorderColor3 = Color3.new(0.3137255012989, 0.3137255012989, 0.3137255012989),
                    BorderSizePixel = 0,
                    Name = 'Line',
                    Parent = {11},
                    Size = UDim2.new(0, 1, 1, 0),
                    ZIndex = 10,
                },
            },
            {
                13,
                'ScrollingFrame',
                {
                    BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14509804546833),
                    BackgroundTransparency = 1,
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    BorderSizePixel = 0,
                    BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',
                    CanvasSize = UDim2.new(0, 0, 0, 100),
                    Name = 'List',
                    Parent = {11},
                    Position = UDim2.new(0, 0, 0, 25),
                    ScrollBarImageColor3 = Color3.new(0.30588236451149, 0.30588236451149, 0.3098039329052),
                    ScrollBarThickness = 8,
                    Size = UDim2.new(1, 0, 1, -25),
                    TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',
                    ZIndex = 10,
                },
            },
            {
                14,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Name = 'Holder',
                    Parent = {13},
                    Size = UDim2.new(1, 0, 1, 0),
                    ZIndex = 10,
                },
            },
            {
                15,
                'UIListLayout',
                {
                    Parent = {14},
                    SortOrder = 2,
                },
            },
            {
                16,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Title',
                    Parent = {11},
                    Size = UDim2.new(1, 0, 0, 20),
                    Text = 'Event Settings',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                17,
                'TextButton',
                {
                    BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14509804546833),
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    Font = 3,
                    Name = 'Close',
                    BorderSizePixel = 0,
                    Parent = {11},
                    Position = UDim2.new(1, -20, 0, 0),
                    Size = UDim2.new(0, 20, 0, 20),
                    Text = '<',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 18,
                    ZIndex = 10,
                },
            },
            {
                18,
                'Folder',
                {
                    Name = 'Templates',
                    Parent = {10},
                },
            },
            {
                19,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.19607844948769, 0.19607844948769, 0.19607844948769),
                    BackgroundTransparency = 1,
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    Name = 'Players',
                    Parent = {18},
                    Position = UDim2.new(0, 0, 0, 25),
                    Size = UDim2.new(1, 0, 0, 86),
                    Visible = false,
                    ZIndex = 10,
                },
            },
            {
                20,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Title',
                    Parent = {19},
                    Size = UDim2.new(1, 0, 0, 20),
                    Text = 'Choose Players',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                21,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'Any',
                    Parent = {19},
                    Position = UDim2.new(0, 5, 0, 42),
                    Size = UDim2.new(1, -10, 0, 20),
                    Text = 'Any Player',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                22,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.30588236451149, 0.30588236451149, 0.3098039329052),
                    BorderSizePixel = 0,
                    Name = 'Button',
                    Parent = {21},
                    Position = UDim2.new(1, -20, 0, 0),
                    Size = UDim2.new(0, 20, 0, 20),
                    ZIndex = 10,
                },
            },
            {
                23,
                'TextButton',
                {
                    BackgroundColor3 = Color3.new(0.58823531866074, 0.58823531866074, 0.59215688705444),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'On',
                    Parent = {22},
                    Position = UDim2.new(0, 2, 0, 2),
                    Size = UDim2.new(0, 16, 0, 16),
                    Text = '',
                    TextColor3 = Color3.new(0, 0, 0),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                24,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'Me',
                    Parent = {19},
                    Position = UDim2.new(0, 5, 0, 20),
                    Size = UDim2.new(1, -10, 0, 20),
                    Text = 'Me Only',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                25,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.30588236451149, 0.30588236451149, 0.3098039329052),
                    BorderSizePixel = 0,
                    Name = 'Button',
                    Parent = {24},
                    Position = UDim2.new(1, -20, 0, 0),
                    Size = UDim2.new(0, 20, 0, 20),
                    ZIndex = 10,
                },
            },
            {
                26,
                'TextButton',
                {
                    BackgroundColor3 = Color3.new(0.58823531866074, 0.58823531866074, 0.59215688705444),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'On',
                    Parent = {25},
                    Position = UDim2.new(0, 2, 0, 2),
                    Size = UDim2.new(0, 16, 0, 16),
                    Text = '',
                    TextColor3 = Color3.new(0, 0, 0),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                27,
                'TextBox',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    BorderSizePixel = 0,
                    ClearTextOnFocus = false,
                    Font = 3,
                    Name = 'Custom',
                    Parent = {19},
                    PlaceholderColor3 = Color3.new(0.47058826684952, 0.47058826684952, 0.47058826684952),
                    PlaceholderText = 'Custom Player Set',
                    Position = UDim2.new(0, 5, 0, 64),
                    Size = UDim2.new(1, -35, 0, 20),
                    Text = '',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                28,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.30588236451149, 0.30588236451149, 0.3098039329052),
                    BorderSizePixel = 0,
                    Name = 'CustomButton',
                    Parent = {19},
                    Position = UDim2.new(1, -25, 0, 64),
                    Size = UDim2.new(0, 20, 0, 20),
                    ZIndex = 10,
                },
            },
            {
                29,
                'TextButton',
                {
                    BackgroundColor3 = Color3.new(0.58823531866074, 0.58823531866074, 0.59215688705444),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'On',
                    Parent = {28},
                    Position = UDim2.new(0, 2, 0, 2),
                    Size = UDim2.new(0, 16, 0, 16),
                    Text = '',
                    TextColor3 = Color3.new(0, 0, 0),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                30,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.19607844948769, 0.19607844948769, 0.19607844948769),
                    BackgroundTransparency = 1,
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    Name = 'Strings',
                    Parent = {18},
                    Position = UDim2.new(0, 0, 0, 25),
                    Size = UDim2.new(1, 0, 0, 64),
                    Visible = false,
                    ZIndex = 10,
                },
            },
            {
                31,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Title',
                    Parent = {30},
                    Size = UDim2.new(1, 0, 0, 20),
                    Text = 'Choose String',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                32,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'Any',
                    Parent = {30},
                    Position = UDim2.new(0, 5, 0, 20),
                    Size = UDim2.new(1, -10, 0, 20),
                    Text = 'Any String',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                33,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.30588236451149, 0.30588236451149, 0.3098039329052),
                    BorderSizePixel = 0,
                    Name = 'Button',
                    Parent = {32},
                    Position = UDim2.new(1, -20, 0, 0),
                    Size = UDim2.new(0, 20, 0, 20),
                    ZIndex = 10,
                },
            },
            {
                34,
                'TextButton',
                {
                    BackgroundColor3 = Color3.new(0.58823531866074, 0.58823531866074, 0.59215688705444),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'On',
                    Parent = {33},
                    Position = UDim2.new(0, 2, 0, 2),
                    Size = UDim2.new(0, 16, 0, 16),
                    Text = '',
                    TextColor3 = Color3.new(0, 0, 0),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                54,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.19607844948769, 0.19607844948769, 0.19607844948769),
                    BackgroundTransparency = 1,
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    Name = 'Numbers',
                    Parent = {18},
                    Position = UDim2.new(0, 0, 0, 25),
                    Size = UDim2.new(1, 0, 0, 64),
                    Visible = false,
                    ZIndex = 10,
                },
            },
            {
                55,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Title',
                    Parent = {54},
                    Size = UDim2.new(1, 0, 0, 20),
                    Text = 'Choose String',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                56,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'Any',
                    Parent = {54},
                    Position = UDim2.new(0, 5, 0, 20),
                    Size = UDim2.new(1, -10, 0, 20),
                    Text = 'Any Number',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                57,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.30588236451149, 0.30588236451149, 0.3098039329052),
                    BorderSizePixel = 0,
                    Name = 'Button',
                    Parent = {56},
                    Position = UDim2.new(1, -20, 0, 0),
                    Size = UDim2.new(0, 20, 0, 20),
                    ZIndex = 10,
                },
            },
            {
                58,
                'TextButton',
                {
                    BackgroundColor3 = Color3.new(0.58823531866074, 0.58823531866074, 0.59215688705444),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'On',
                    Parent = {57},
                    Position = UDim2.new(0, 2, 0, 2),
                    Size = UDim2.new(0, 16, 0, 16),
                    Text = '',
                    TextColor3 = Color3.new(0, 0, 0),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                59,
                'TextBox',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    BorderSizePixel = 0,
                    ClearTextOnFocus = false,
                    Font = 3,
                    Name = 'Custom',
                    Parent = {54},
                    PlaceholderColor3 = Color3.new(0.47058826684952, 0.47058826684952, 0.47058826684952),
                    PlaceholderText = 'Number',
                    Position = UDim2.new(0, 5, 0, 42),
                    Size = UDim2.new(1, -35, 0, 20),
                    Text = '',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                60,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.30588236451149, 0.30588236451149, 0.3098039329052),
                    BorderSizePixel = 0,
                    Name = 'CustomButton',
                    Parent = {54},
                    Position = UDim2.new(1, -25, 0, 42),
                    Size = UDim2.new(0, 20, 0, 20),
                    ZIndex = 10,
                },
            },
            {
                61,
                'TextButton',
                {
                    BackgroundColor3 = Color3.new(0.58823531866074, 0.58823531866074, 0.59215688705444),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'On',
                    Parent = {60},
                    Position = UDim2.new(0, 2, 0, 2),
                    Size = UDim2.new(0, 16, 0, 16),
                    Text = '',
                    TextColor3 = Color3.new(0, 0, 0),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                35,
                'TextBox',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    BorderSizePixel = 0,
                    ClearTextOnFocus = false,
                    Font = 3,
                    Name = 'Custom',
                    Parent = {30},
                    PlaceholderColor3 = Color3.new(0.47058826684952, 0.47058826684952, 0.47058826684952),
                    PlaceholderText = 'Match String',
                    Position = UDim2.new(0, 5, 0, 42),
                    Size = UDim2.new(1, -35, 0, 20),
                    Text = '',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                36,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.30588236451149, 0.30588236451149, 0.3098039329052),
                    BorderSizePixel = 0,
                    Name = 'CustomButton',
                    Parent = {30},
                    Position = UDim2.new(1, -25, 0, 42),
                    Size = UDim2.new(0, 20, 0, 20),
                    ZIndex = 10,
                },
            },
            {
                37,
                'TextButton',
                {
                    BackgroundColor3 = Color3.new(0.58823531866074, 0.58823531866074, 0.59215688705444),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'On',
                    Parent = {36},
                    Position = UDim2.new(0, 2, 0, 2),
                    Size = UDim2.new(0, 16, 0, 16),
                    Text = '',
                    TextColor3 = Color3.new(0, 0, 0),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                38,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.19607844948769, 0.19607844948769, 0.19607844948769),
                    BackgroundTransparency = 1,
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    Name = 'DelayEditor',
                    Parent = {18},
                    Position = UDim2.new(0, 0, 0, 25),
                    Size = UDim2.new(1, 0, 0, 24),
                    Visible = false,
                    ZIndex = 10,
                },
            },
            {
                39,
                'TextBox',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'Secs',
                    Parent = {38},
                    PlaceholderColor3 = Color3.new(0.47058826684952, 0.47058826684952, 0.47058826684952),
                    Position = UDim2.new(0, 60, 0, 2),
                    Size = UDim2.new(1, -65, 0, 20),
                    Text = '',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                40,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'Label',
                    Parent = {39},
                    Position = UDim2.new(0, -55, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'Delay (s):',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                41,
                'Frame',
                {
                    BackgroundColor3 = currentShade1,
                    BorderSizePixel = 0,
                    ClipsDescendants = true,
                    Name = 'EventTemplate',
                    Parent = {6},
                    Size = UDim2.new(1, 0, 0, 20),
                    Visible = false,
                    ZIndex = 10,
                },
            },
            {
                42,
                'TextButton',
                {
                    BackgroundColor3 = currentText1,
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Expand',
                    Parent = {41},
                    Size = UDim2.new(0, 20, 0, 20),
                    Text = '>',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 18,
                    ZIndex = 10,
                },
            },
        }
        local v106 = {
            43,
            'TextLabel',
            {
                BackgroundColor3 = currentText1,
                BackgroundTransparency = 1,
                Font = 3,
                Name = 'EventName',
                Parent = {41},
                Position = UDim2.new(0, 25, 0, 0),
                Size = UDim2.new(1, -25, 0, 20),
                Text = 'OnSpawn',
                TextColor3 = Color3.new(1, 1, 1),
                TextSize = 14,
                TextXAlignment = 0,
                ZIndex = 10,
            },
        }
        local v107 = {
            44,
            'Frame',
            {
                BackgroundColor3 = Color3.new(0.19607844948769, 0.19607844948769, 0.19607844948769),
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                ClipsDescendants = true,
                Name = 'Cmds',
                Parent = {41},
                Position = UDim2.new(0, 0, 0, 20),
                Size = UDim2.new(1, 0, 1, -20),
                ZIndex = 10,
            },
        }
        local v108 = {
            45,
            'Frame',
            {
                BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14509804546833),
                BorderColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                Name = 'Add',
                Parent = {44},
                Position = UDim2.new(0, 0, 1, -20),
                Size = UDim2.new(1, 0, 0, 20),
                ZIndex = 10,
            },
        }
        local v109 = {
            46,
            'TextBox',
            {
                BackgroundColor3 = Color3.new(1, 1, 1),
                BackgroundTransparency = 1,
                ClearTextOnFocus = false,
                Font = 3,
                Parent = {45},
                PlaceholderColor3 = Color3.new(0.7843137383461, 0.7843137383461, 0.7843137383461),
                PlaceholderText = 'Add new command',
                Position = UDim2.new(0, 5, 0, 0),
                Size = UDim2.new(1, -10, 1, 0),
                Text = '',
                TextColor3 = Color3.new(1, 1, 1),
                TextSize = 14,
                TextXAlignment = 0,
                ZIndex = 10,
            },
        }
        local v110 = {
            47,
            'Frame',
            {
                BackgroundColor3 = Color3.new(1, 1, 1),
                BackgroundTransparency = 1,
                Name = 'Holder',
                Parent = {44},
                Size = UDim2.new(1, 0, 1, -20),
                ZIndex = 10,
            },
        }
        local v111 = {}
        local v112 = {}
        local v113 = currentShade1

        v112.BorderSizePixel = 0
        v112.ClipsDescendants = true
        v112.Name = 'CmdTemplate'
        v112.Parent = {6}
        v112.Size = UDim2.new(1, 0, 0, 20)
        v112.Visible = false
        v112.ZIndex = 10

        __set_list(v112, 1, {v113})
        __set_list(v111, 1, {
            49,
            'Frame',
            v112,
        })
        __set_list(v105, 51, {
            v106,
            v107,
            v108,
            v109,
            v110,
            {
                48,
                'UIListLayout',
                {
                    Parent = {47},
                    SortOrder = 2,
                },
            },
            v111,
            {
                50,
                'TextBox',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    ClearTextOnFocus = false,
                    Font = 3,
                    Parent = {49},
                    PlaceholderColor3 = Color3.new(1, 1, 1),
                    Position = UDim2.new(0, 5, 0, 0),
                    Size = UDim2.new(1, -45, 0, 20),
                    Text = 'a\\b\\c\\d',
                    TextColor3 = currentText1,
                    TextSize = 14,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                51,
                'TextButton',
                {
                    BackgroundColor3 = currentShade1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'Delete',
                    Parent = {49},
                    Position = UDim2.new(1, -20, 0, 0),
                    Size = UDim2.new(0, 20, 0, 20),
                    Text = 'X',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 18,
                    ZIndex = 10,
                },
            },
            {
                52,
                'TextButton',
                {
                    BackgroundColor3 = currentShade1,
                    BorderSizePixel = 0,
                    Font = 3,
                    Name = 'Settings',
                    Parent = {49},
                    Position = UDim2.new(1, -40, 0, 0),
                    Size = UDim2.new(0, 20, 0, 20),
                    Text = '',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 18,
                    ZIndex = 10,
                },
            },
            {
                53,
                'ImageLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Image = 'rbxassetid://1204397029',
                    Parent = {52},
                    Position = UDim2.new(0, 2, 0, 2),
                    Size = UDim2.new(0, 16, 0, 16),
                    ZIndex = 10,
                },
            },
        })

        local u114 = v104(v105)

        u114.Name = randomString()

        local v115 = u114
        local v116 = u114.WaitForChild(v115, 'Content')
        local _List = v116:WaitForChild('List')
        local v118 = _List
        local u119 = _List.WaitForChild(v118, 'Holder')
        local _CmdTemplate = v116:WaitForChild('CmdTemplate')
        local _EventTemplate = v116:WaitForChild('EventTemplate')
        local _Slider = v116:WaitForChild('Settings'):WaitForChild('Slider')
        local _Templates = v116.Settings:WaitForChild('Templates')
        local v124 = _Slider
        local _Holder = _Slider.WaitForChild(v124, 'List'):WaitForChild('Holder')

        table.insert(shade2, u114.TopBar)
        table.insert(shade1, v116)
        table.insert(shade2, _EventTemplate)
        table.insert(text1, _EventTemplate.EventName)
        table.insert(shade1, _EventTemplate.Cmds.Add)
        table.insert(shade1, _CmdTemplate)
        table.insert(text1, _CmdTemplate.TextBox)
        table.insert(shade2, _CmdTemplate.Delete)
        table.insert(shade2, _CmdTemplate.Settings)
        table.insert(scroll, v116.List)
        table.insert(shade1, _Slider)
        table.insert(shade2, _Slider.Line)
        table.insert(shade2, _Slider.Close)
        table.insert(scroll, _Slider.List)
        table.insert(shade2, _Templates.DelayEditor.Secs)
        table.insert(text1, _Templates.DelayEditor.Secs)
        table.insert(text1, _Templates.DelayEditor.Secs.Label)
        table.insert(text1, _Templates.Players.Title)
        table.insert(shade3, _Templates.Players.CustomButton)
        table.insert(shade2, _Templates.Players.Custom)
        table.insert(text1, _Templates.Players.Custom)
        table.insert(shade3, _Templates.Players.Any.Button)
        table.insert(shade3, _Templates.Players.Me.Button)
        table.insert(text1, _Templates.Players.Any)
        table.insert(text1, _Templates.Players.Me)
        table.insert(text1, _Templates.Strings.Title)
        table.insert(text1, _Templates.Strings.Any)
        table.insert(shade3, _Templates.Strings.Any.Button)
        table.insert(shade3, _Templates.Strings.CustomButton)
        table.insert(text1, _Templates.Strings.Custom)
        table.insert(shade2, _Templates.Strings.Custom)
        table.insert(text1, _Templates.Players.Me)
        table.insert(text1, _Templates.Numbers.Title)
        table.insert(text1, _Templates.Numbers.Any)
        table.insert(shade3, _Templates.Numbers.Any.Button)
        table.insert(shade3, _Templates.Numbers.CustomButton)
        table.insert(text1, _Templates.Numbers.Custom)
        table.insert(shade2, _Templates.Numbers.Custom)

        local u126 = TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
        local u127 = nil
        local v128 = _Slider

        _Slider.WaitForChild(v128, 'Close').MouseButton1Click:Connect(function()
            _Slider:TweenPosition(UDim2.new(0, -150, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25, true)
        end)

        local function u135()
            local v129 = u119
            local v130, v131, v132 = pairs(v129:GetChildren())
            local v133 = 0

            while true do
                local v134

                v132, v134 = v130(v131, v132)

                if v132 == nil then
                    break
                end
                if v134.Name == 'EventTemplate' then
                    v133 = v133 + 20

                    if v134.Expand.Rotation == 90 then
                        v133 = v133 + 20 * (1 + (#u78[v134.EventName:GetAttribute('RawName')].commands or 0))
                    end
                end
            end

            TweenService:Create(_List, u126, {
                CanvasSize = UDim2.new(0, 0, 0, v133),
            }):Play()

            if _List.AbsoluteSize.Y >= v133 then
                u119.Size = UDim2.new(1, 0, 1, 0)
            else
                u119.Size = UDim2.new(1, -8, 1, 0)
            end
        end
        local function u142()
            local v136 = _Holder
            local v137, v138, v139 = pairs(v136:GetChildren())
            local v140 = 0

            while true do
                local v141

                v139, v141 = v137(v138, v139)

                if v139 == nil then
                    break
                end
                if v141:IsA('Frame') then
                    v140 = v140 + v141.AbsoluteSize.Y
                end
            end

            _Holder.Parent.CanvasSize = UDim2.new(0, 0, 0, v140)

            if _Holder.Parent.AbsoluteSize.Y >= v140 then
                _Holder.Size = UDim2.new(1, 0, 1, 0)
            else
                _Holder.Size = UDim2.new(1, -8, 1, 0)
            end
        end
        local function u150(p143, p144)
            local u145 = p143.On.BackgroundTransparency == 0

            local function u146()
                p143.On.BackgroundTransparency = u145 and 0 or 1
            end

            p143.On.MouseButton1Click:Connect(function()
                u145 = not u145

                u146()

                if p144 then
                    p144(u145)
                end
            end)

            return {
                Toggle = function(p147)
                    u145 = not u145

                    u146()

                    if not p147 and p144 then
                        p144(u145)
                    end
                end,
                Enable = function(p148)
                    if not u145 then
                        u145 = true

                        u146()

                        if not p148 and p144 then
                            p144(u145)
                        end
                    end
                end,
                Disable = function(p149)
                    if u145 then
                        u145 = false

                        u146()

                        if not p149 and p144 then
                            p144(u145)
                        end
                    end
                end,
                IsEnabled = function()
                    return u145
                end,
            }
        end
        local function u194(p151, p152)
            u127 = p152

            local v153 = _Holder
            local v154, v155, v156 = pairs(v153:GetChildren())

            while true do
                local v157

                v156, v157 = v154(v155, v156)

                if v156 == nil then
                    break
                end
                if v157:IsA('Frame') then
                    v157:Destroy()
                end
            end

            local u158 = _Templates.DelayEditor:Clone()

            u158.Secs.FocusLost:Connect(function()
                p152[3] = tonumber(u158.Secs.Text) or 0
                u158.Secs.Text = p152[3]

                if u82 then
                    u82()
                end
            end)

            u158.Secs.Text = p152[3]
            u158.Visible = true

            table.insert(shade2, u158.Secs)
            table.insert(text1, u158.Secs)
            table.insert(text1, u158.Secs.Label)

            u158.Parent = _Holder

            local v159, v160, v161 = pairs(p151.sets)

            while true do
                local u162, v163 = v159(v160, v161)

                if u162 == nil then
                    break
                end

                v161 = u162

                if v163.Type ~= 'Player' then
                    if v163.Type ~= 'String' then
                        if v163.Type == 'Number' then
                            local v164 = _Templates.Numbers:Clone()

                            v164.Title.Text = v163.Name or 'Number'

                            local u165 = nil
                            local u167 = u150(v164.Any.Button, function(p166)
                                if p166 then
                                    u165.Disable()

                                    p152[2][u162] = 0

                                    if u82 then
                                        u82()
                                    end
                                end
                            end)
                            local _Custom = v164.Custom

                            u165 = u150(v164.CustomButton, function(p169)
                                if p169 then
                                    u167.Disable()

                                    p152[2][u162] = _Custom.Text

                                    if u82 then
                                        u82()
                                    end
                                end
                            end)

                            ViewportTextBox.convert(_Custom)
                            _Custom.FocusLost:Connect(function()
                                p152[2][u162] = tonumber(_Custom.Text) or 0
                                _Custom.Text = p152[2][u162]

                                if u165:IsEnabled() and u82 then
                                    u82()
                                end
                            end)

                            local v170 = p152[2][u162]

                            if v170 == 0 then
                                local v171 = u167

                                u167.Enable(v171)
                            else
                                local v172 = u165

                                u165.Enable(v172)

                                _Custom.Text = v170
                            end

                            v164.Visible = true

                            table.insert(text1, v164.Title)
                            table.insert(text1, v164.Any)
                            table.insert(shade3, v164.Any.Button)
                            table.insert(shade3, v164.CustomButton)

                            v164.Parent = _Holder
                        end
                    else
                        local v173 = _Templates.Strings:Clone()

                        v173.Title.Text = v163.Name or 'String'

                        local u174 = nil
                        local u176 = u150(v173.Any.Button, function(p175)
                            if p175 then
                                u174.Disable()

                                p152[2][u162] = 0

                                if u82 then
                                    u82()
                                end
                            end
                        end)
                        local _Custom2 = v173.Custom

                        u174 = u150(v173.CustomButton, function(p178)
                            if p178 then
                                u176.Disable()

                                p152[2][u162] = _Custom2.Text

                                if u82 then
                                    u82()
                                end
                            end
                        end)

                        ViewportTextBox.convert(_Custom2)
                        _Custom2.FocusLost:Connect(function()
                            if u174:IsEnabled() then
                                p152[2][u162] = _Custom2.Text

                                if u82 then
                                    u82()
                                end
                            end
                        end)

                        local v179 = p152[2][u162]

                        if v179 == 0 then
                            local v180 = u176

                            u176.Enable(v180)
                        else
                            local v181 = u174

                            u174.Enable(v181)

                            _Custom2.Text = v179
                        end

                        v173.Visible = true

                        table.insert(text1, v173.Title)
                        table.insert(text1, v173.Any)
                        table.insert(shade3, v173.Any.Button)
                        table.insert(shade3, v173.CustomButton)

                        v173.Parent = _Holder
                    end
                else
                    local v182 = _Templates.Players:Clone()

                    v182.Title.Text = v163.Name or 'Player'

                    local u183 = nil
                    local u184 = nil
                    local u186 = u150(v182.Me.Button, function(p185)
                        if p185 then
                            u183.Disable()
                            u184.Disable()

                            p152[2][u162] = 0

                            if u82 then
                                u82()
                            end
                        end
                    end)

                    u183 = u150(v182.Any.Button, function(p187)
                        if p187 then
                            u186.Disable()
                            u184.Disable()

                            p152[2][u162] = 1

                            if u82 then
                                u82()
                            end
                        end
                    end)

                    local _Custom3 = v182.Custom

                    u184 = u150(v182.CustomButton, function(p189)
                        if p189 then
                            u186.Disable()
                            u183.Disable()

                            p152[2][u162] = _Custom3.Text

                            if u82 then
                                u82()
                            end
                        end
                    end)

                    ViewportTextBox.convert(_Custom3)
                    _Custom3.FocusLost:Connect(function()
                        if u184:IsEnabled() then
                            p152[2][u162] = _Custom3.Text

                            if u82 then
                                u82()
                            end
                        end
                    end)

                    local v190 = p152[2][u162]

                    if v190 == 0 then
                        local v191 = u186

                        u186.Enable(v191)
                    elseif v190 == 1 then
                        local v192 = u183

                        u183.Enable(v192)
                    else
                        local v193 = u184

                        u184.Enable(v193)

                        _Custom3.Text = v190
                    end

                    v182.Visible = true

                    table.insert(text1, v182.Title)
                    table.insert(shade3, v182.CustomButton)
                    table.insert(shade3, v182.Any.Button)
                    table.insert(shade3, v182.Me.Button)
                    table.insert(text1, v182.Any)
                    table.insert(text1, v182.Me)

                    v182.Parent = _Holder
                end
            end

            u142()
            _Slider:TweenPosition(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25, true)
        end
        local function u201(p195)
            local v196, v197, v198 = pairs(p195.sets)
            local v199 = {}

            while true do
                local v200

                v198, v200 = v196(v197, v198)

                if v198 == nil then
                    break
                end
                if v200.Type ~= 'Player' then
                    if v200.Type ~= 'String' then
                        if v200.Type == 'Number' then
                            v199[#v199 + 1] = v200.Default or 0
                        end
                    else
                        v199[#v199 + 1] = v200.Default or 0
                    end
                else
                    v199[#v199 + 1] = v200.Default or 0
                end
            end

            return v199
        end
        local function v230()
            local v202 = u119
            local v203, v204, v205 = pairs(v202:GetChildren())

            while true do
                local v206, v207 = v203(v204, v205)

                if v206 == nil then
                    break
                end

                v205 = v206

                if v207:IsA('Frame') then
                    v207:Destroy()
                end
            end

            local v208, v209, v210 = pairs(u78)

            while true do
                local u211, u212 = v208(v209, v210)

                if u211 == nil then
                    break
                end

                v210 = u211

                local u213 = _EventTemplate:Clone()

                u213.EventName.Text = u211
                u213.Visible = true

                u213.EventName:SetAttribute('RawName', u211)
                table.insert(shade2, u213)
                table.insert(text1, u213.EventName)
                table.insert(shade1, u213.Cmds.Add)

                local u214 = false

                u213.Expand.MouseButton1Down:Connect(function()
                    u214 = not u214

                    u213:TweenSize(UDim2.new(1, 0, 0, 20 + (u214 and (20 * #u213.Cmds.Holder:GetChildren() or 0) or 0)), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25, true)

                    u213.Expand.Rotation = u214 and 90 or 0

                    u135()
                end)

                local function u227()
                    local v215, v216, v217 = pairs(u213.Cmds.Holder:GetChildren())

                    while true do
                        local v218, v219 = v215(v216, v217)

                        if v218 == nil then
                            break
                        end

                        v217 = v218

                        if v219.Name == 'CmdTemplate' then
                            v219:Destroy()
                        end
                    end

                    u213.EventName.Text = u211 .. (#u212.commands > 0 and ' (' .. #u212.commands .. ')' or '')

                    local v220, v221, v222 = pairs(u212.commands)

                    while true do
                        local u223, u224 = v220(v221, v222)

                        if u223 == nil then
                            break
                        end

                        v222 = u223

                        local v225 = _CmdTemplate:Clone()
                        local _TextBox = v225.TextBox

                        ViewportTextBox.convert(_TextBox)

                        _TextBox.Text = u224[1]
                        v225.Visible = true

                        table.insert(shade1, v225)
                        table.insert(shade2, v225.Delete)
                        table.insert(shade2, v225.Settings)
                        _TextBox.FocusLost:Connect(function()
                            u212.commands[u223] = {
                                _TextBox.Text,
                                u224[2],
                                u224[3],
                            }

                            if u82 then
                                u82()
                            end
                        end)
                        v225.Settings.MouseButton1Click:Connect(function()
                            u194(u212, u224)
                        end)
                        v225.Delete.MouseButton1Click:Connect(function()
                            table.remove(u212.commands, u223)
                            u227()
                            u135()

                            if u127 == u224 then
                                _Slider:TweenPosition(UDim2.new(0, -150, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25, true)
                            end
                            if u82 then
                                u82()
                            end
                        end)

                        v225.Parent = u213.Cmds.Holder
                    end

                    u213:TweenSize(UDim2.new(1, 0, 0, 20 + (u214 and (20 * #u213.Cmds.Holder:GetChildren() or 0) or 0)), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25, true)
                end

                local _TextBox2 = u213.Cmds.Add.TextBox

                ViewportTextBox.convert(_TextBox2)
                _TextBox2.FocusLost:Connect(function(p229)
                    if p229 then
                        u212.commands[#u212.commands + 1] = {
                            _TextBox2.Text,
                            u201(u212),
                            0,
                        }
                        _TextBox2.Text = ''

                        u227()
                        u135()

                        if u82 then
                            u82()
                        end
                    end
                end)

                u213.Parent = u119

                u227()
            end

            u135()
        end
        local function v236()
            local v231, v232, v233 = pairs(u78)
            local v234 = {}

            while true do
                local v235

                v233, v235 = v231(v232, v233)

                if v233 == nil then
                    break
                end

                v234[v233] = v235.commands
            end

            return HttpService:JSONEncode(v234)
        end
        local function v243(p237)
            local v238 = HttpService:JSONDecode(p237)
            local v239, v240, v241 = pairs(v238)

            while true do
                local v242

                v241, v242 = v239(v240, v241)

                if v241 == nil then
                    break
                end
                if u78[v241] then
                    u78[v241].commands = v242
                end
            end
        end
        local function v246(p244, p245)
            table.insert(u78[p244].commands, p245)
        end
        local function v248(p247)
            if type(p247) == 'function' then
                u82 = p247
            end
        end

        u114.TopBar.Close.MouseButton1Click:Connect(function()
            u114:TweenPosition(UDim2.new(0.5, -175, 0, -500), 'InOut', 'Quart', 0.5, true, nil)
        end)
        dragGUI(u114)

        u114.Parent = PARENT

        return {
            RegisterEvent = v81,
            FireEvent = v103,
            Refresh = v230,
            SaveData = v236,
            LoadData = v243,
            AddCmd = v246,
            Frame = u114,
            SetOnEdited = v248,
        }
    end)()
    reference = (function()
        local u249 = create({
            {
                1,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14509804546833),
                    BackgroundTransparency = 1,
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    BorderSizePixel = 0,
                    Name = 'Main',
                    Position = UDim2.new(0.5, -250, 0, -500),
                    Size = UDim2.new(0, 500, 0, 20),
                    ZIndex = 10,
                },
            },
            {
                2,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderSizePixel = 0,
                    Name = 'TopBar',
                    Parent = {1},
                    Size = UDim2.new(1, 0, 0, 20),
                    ZIndex = 10,
                },
            },
            {
                3,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Title',
                    Parent = {2},
                    Size = UDim2.new(1, 0, 0.94999998807907, 0),
                    Text = 'Reference',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                4,
                'TextButton',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Close',
                    Parent = {2},
                    Position = UDim2.new(1, -20, 0, 0),
                    Size = UDim2.new(0, 20, 0, 20),
                    Text = '',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    ZIndex = 10,
                },
            },
            {
                5,
                'ImageLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Image = 'rbxassetid://5054663650',
                    Parent = {4},
                    Position = UDim2.new(0, 5, 0, 5),
                    Size = UDim2.new(0, 10, 0, 10),
                    ZIndex = 10,
                },
            },
            {
                6,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14509804546833),
                    BorderSizePixel = 0,
                    Name = 'Content',
                    Parent = {1},
                    Position = UDim2.new(0, 0, 0, 20),
                    Size = UDim2.new(1, 0, 0, 300),
                    ZIndex = 10,
                },
            },
            {
                7,
                'ScrollingFrame',
                {
                    BackgroundColor3 = Color3.new(0.14117647707462, 0.14117647707462, 0.14509804546833),
                    BackgroundTransparency = 1,
                    BorderColor3 = Color3.new(0.15686275064945, 0.15686275064945, 0.15686275064945),
                    BorderSizePixel = 0,
                    BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',
                    CanvasSize = UDim2.new(0, 0, 0, 1313),
                    Name = 'List',
                    Parent = {6},
                    ScrollBarImageColor3 = Color3.new(0.30588236451149, 0.30588236451149, 0.3098039329052),
                    ScrollBarThickness = 8,
                    Size = UDim2.new(1, 0, 1, 0),
                    TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',
                    VerticalScrollBarInset = 2,
                    ZIndex = 10,
                },
            },
            {
                8,
                'UIListLayout',
                {
                    Parent = {7},
                    SortOrder = 2,
                },
            },
            {
                9,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Name = 'Section',
                    Parent = {7},
                    Size = UDim2.new(1, 0, 0, 429),
                    ZIndex = 10,
                },
            },
            {
                10,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Header',
                    Parent = {9},
                    Position = UDim2.new(0, 8, 0, 5),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = 'Special Player Cases',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 20,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                11,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {9},
                    Position = UDim2.new(0, 8, 0, 25),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = 'These keywords can be used to quickly select groups of players in commands:',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                12,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderSizePixel = 0,
                    Name = 'Line',
                    Parent = {9},
                    Position = UDim2.new(0, 10, 1, -1),
                    Size = UDim2.new(1, -20, 0, 1),
                    ZIndex = 10,
                },
            },
            {
                13,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Cases',
                    Parent = {9},
                    Position = UDim2.new(0, 8, 0, 55),
                    Size = UDim2.new(1, -16, 0, 342),
                    ZIndex = 10,
                },
            },
            {
                14,
                'UIListLayout',
                {
                    Parent = {13},
                    SortOrder = 2,
                },
            },
            {
                15,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    LayoutOrder = -4,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                16,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {15},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'all',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                17,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {15},
                    Position = UDim2.new(0, 15, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- includes everyone',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                18,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    LayoutOrder = -3,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                19,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {18},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'others',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                20,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {18},
                    Position = UDim2.new(0, 37, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- includes everyone except you',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                21,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    LayoutOrder = -2,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                22,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {21},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'me',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                23,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {21},
                    Position = UDim2.new(0, 19, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- includes your player only',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                24,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                25,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {24},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '#[number]',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                26,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {24},
                    Position = UDim2.new(0, 59, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- gets a specified amount of random players',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                27,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                28,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {27},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'random',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                29,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {27},
                    Position = UDim2.new(0, 44, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- affects a random player',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                30,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                31,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {30},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '%[team name]',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                32,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {30},
                    Position = UDim2.new(0, 78, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- includes everyone on a given team',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                33,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                34,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {33},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'allies / team',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                35,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {33},
                    Position = UDim2.new(0, 63, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- players who are on your team',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                36,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                37,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {36},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'enemies / nonteam',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                38,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {36},
                    Position = UDim2.new(0, 101, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- players who are not on your team',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                39,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                40,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {39},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'friends',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                41,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {39},
                    Position = UDim2.new(0, 40, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- anyone who is friends with you',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                42,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                43,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {42},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'nonfriends',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                44,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {42},
                    Position = UDim2.new(0, 61, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- anyone who is not friends with you',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                45,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                46,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {45},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'guests',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                47,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {45},
                    Position = UDim2.new(0, 36, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- guest players (obsolete)',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                48,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                49,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {48},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'bacons',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                50,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {48},
                    Position = UDim2.new(0, 40, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- anyone with the "bacon" or pal hair',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                51,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                52,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {51},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'age[number]',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                53,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {51},
                    Position = UDim2.new(0, 71, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- includes anyone below or at the given age',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                54,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                55,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {54},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'rad[number]',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                56,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {54},
                    Position = UDim2.new(0, 70, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- includes anyone within the given radius',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                57,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                58,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {57},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'nearest',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                59,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {57},
                    Position = UDim2.new(0, 43, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- gets the closest player to you',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                60,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                61,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {60},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'farthest',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                62,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {60},
                    Position = UDim2.new(0, 46, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- gets the farthest player from you',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                63,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                64,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {63},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'group[ID]',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                65,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {63},
                    Position = UDim2.new(0, 55, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- gets players who are in a certain group',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                66,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                67,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {66},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'alive',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                68,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {66},
                    Position = UDim2.new(0, 27, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- gets players who are alive',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                69,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                70,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {69},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = 'dead',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                71,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {69},
                    Position = UDim2.new(0, 29, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- gets players who are dead',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                72,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    LayoutOrder = -1,
                    Name = 'Case',
                    Parent = {13},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, 0, 0, 18),
                    ZIndex = 10,
                },
            },
            {
                73,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'CaseName',
                    Parent = {72},
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '@username',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                74,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'CaseDesc',
                    Parent = {72},
                    Position = UDim2.new(0, 66, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    Text = '- searches for players by username only (ignores displaynames)',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                75,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Name = 'Section',
                    Parent = {7},
                    Size = UDim2.new(1, 0, 0, 180),
                    ZIndex = 10,
                },
            },
            {
                76,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Header',
                    Parent = {75},
                    Position = UDim2.new(0, 8, 0, 5),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = 'Various Operators',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 20,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                77,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderSizePixel = 0,
                    Name = 'Line',
                    Parent = {75},
                    Position = UDim2.new(0, 10, 1, -1),
                    Size = UDim2.new(1, -20, 0, 1),
                    ZIndex = 10,
                },
            },
            {
                78,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Text',
                    Parent = {75},
                    Position = UDim2.new(0, 8, 0, 30),
                    Size = UDim2.new(1, -8, 0, 16),
                    Text = 'Use commas to separate multiple expressions:',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                79,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Text',
                    Parent = {75},
                    Position = UDim2.new(0, 8, 0, 75),
                    Size = UDim2.new(1, -8, 0, 16),
                    Text = 'Use - to exclude, and + to include players in your expression:',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                80,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {75},
                    Position = UDim2.new(0, 8, 0, 91),
                    Size = UDim2.new(1, -8, 0, 16),
                    Text = ";locate %blue-friends (gets players in blue team who aren't your friends)",
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                81,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {75},
                    Position = UDim2.new(0, 8, 0, 46),
                    Size = UDim2.new(1, -8, 0, 16),
                    Text = ';locate noob,noob2,bob',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                82,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Text',
                    Parent = {75},
                    Position = UDim2.new(0, 8, 0, 120),
                    Size = UDim2.new(1, -8, 0, 16),
                    Text = 'Put ! before a command to run it with the last arguments it was ran with:',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                83,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {75},
                    Position = UDim2.new(0, 8, 0, 136),
                    Size = UDim2.new(1, -8, 0, 32),
                    Text = 'After running ;offset 0 100 0,  you can run !offset anytime to repeat that command with the same arguments that were used to run it last time',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                84,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Name = 'Section',
                    Parent = {7},
                    Size = UDim2.new(1, 0, 0, 154),
                    ZIndex = 10,
                },
            },
            {
                85,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Header',
                    Parent = {84},
                    Position = UDim2.new(0, 8, 0, 5),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = 'Command Looping',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 20,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                86,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Text',
                    Parent = {84},
                    Position = UDim2.new(0, 8, 0, 30),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = 'Form: [How many times it loops]^[delay (optional)]^[command]',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 15,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                87,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderSizePixel = 0,
                    Name = 'Line',
                    Parent = {84},
                    Position = UDim2.new(0, 10, 1, -1),
                    Size = UDim2.new(1, -20, 0, 1),
                    ZIndex = 10,
                },
            },
            {
                88,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {84},
                    Position = UDim2.new(0, 8, 0, 50),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = "Use the 'breakloops' command to stop all running loops.",
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 15,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                89,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Text',
                    Parent = {84},
                    Position = UDim2.new(0, 8, 0, 80),
                    Size = UDim2.new(1, -8, 0, 16),
                    Text = 'Examples:',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                90,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {84},
                    Position = UDim2.new(0, 8, 0, 98),
                    Size = UDim2.new(1, -8, 0, 42),
                    Text = ';5^btools - gives you 5 sets of btools\n;10^3^drophats - drops your hats every 3 seconds 10 times\n;inf^0.1^animspeed 100 - infinitely loops your animation speed to 100',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                91,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Name = 'Section',
                    Parent = {7},
                    Size = UDim2.new(1, 0, 0, 120),
                    ZIndex = 10,
                },
            },
            {
                92,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Header',
                    Parent = {91},
                    Position = UDim2.new(0, 8, 0, 5),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = 'Execute Multiple Commands at Once',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 20,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                93,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Text',
                    Parent = {91},
                    Position = UDim2.new(0, 8, 0, 30),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = 'You can execute multiple commands at once using "\\"',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                94,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderSizePixel = 0,
                    Name = 'Line',
                    Parent = {91},
                    Position = UDim2.new(0, 10, 1, -1),
                    Size = UDim2.new(1, -20, 0, 1),
                    ZIndex = 10,
                },
            },
            {
                95,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Text',
                    Parent = {91},
                    Position = UDim2.new(0, 8, 0, 60),
                    Size = UDim2.new(1, -8, 0, 16),
                    Text = 'Examples:',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                96,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {91},
                    Position = UDim2.new(0, 8, 0, 78),
                    Size = UDim2.new(1, -8, 0, 32),
                    Text = ';drophats\\respawn - drops your hats and respawns you\n;enable inventory\\enable playerlist\\refresh - enables those coregui items and refreshes you',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                97,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Name = 'Section',
                    Parent = {7},
                    Size = UDim2.new(1, 0, 0, 75),
                    ZIndex = 10,
                },
            },
            {
                98,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Header',
                    Parent = {97},
                    Position = UDim2.new(0, 8, 0, 5),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = 'Browse Command History',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 20,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                99,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {97},
                    Position = UDim2.new(0, 8, 0, 30),
                    Size = UDim2.new(1, -8, 0, 32),
                    Text = 'While focused on the command bar, you can use the up and down arrow keys to browse recently used commands',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                100,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderSizePixel = 0,
                    Name = 'Line',
                    Parent = {97},
                    Position = UDim2.new(0, 10, 1, -1),
                    Size = UDim2.new(1, -20, 0, 1),
                    ZIndex = 10,
                },
            },
            {
                101,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Name = 'Section',
                    Parent = {7},
                    Size = UDim2.new(1, 0, 0, 75),
                    ZIndex = 10,
                },
            },
            {
                102,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Header',
                    Parent = {101},
                    Position = UDim2.new(0, 8, 0, 5),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = 'Autocomplete in the Command Bar',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 20,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                103,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {101},
                    Position = UDim2.new(0, 8, 0, 30),
                    Size = UDim2.new(1, -8, 0, 32),
                    Text = 'While focused on the command bar, you can use the tab key to insert the top suggested command into the command bar.',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                104,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderSizePixel = 0,
                    Name = 'Line',
                    Parent = {101},
                    Position = UDim2.new(0, 10, 1, -1),
                    Size = UDim2.new(1, -20, 0, 1),
                    ZIndex = 10,
                },
            },
            {
                105,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Name = 'Section',
                    Parent = {7},
                    Size = UDim2.new(1, 0, 0, 175),
                    ZIndex = 10,
                },
            },
            {
                106,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Header',
                    Parent = {105},
                    Position = UDim2.new(0, 8, 0, 5),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = 'Using Event Binds',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 20,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                107,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {105},
                    Position = UDim2.new(0, 8, 0, 30),
                    Size = UDim2.new(1, -8, 0, 32),
                    Text = 'Use event binds to set up commands that get executed when certain events happen. You can edit the conditions for an event command to run (such as which player triggers it).',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                108,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderSizePixel = 0,
                    Name = 'Line',
                    Parent = {105},
                    Position = UDim2.new(0, 10, 1, -1),
                    Size = UDim2.new(1, -20, 0, 1),
                    ZIndex = 10,
                },
            },
            {
                109,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {105},
                    Position = UDim2.new(0, 8, 0, 70),
                    Size = UDim2.new(1, -8, 0, 48),
                    Text = 'Some events may send arguments; you can use them in your event command by using $ followed by the argument number ($1, $2, etc). You can find out the order and types of these arguments by looking at the settings of the event command.',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                110,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Text',
                    Parent = {105},
                    Position = UDim2.new(0, 8, 0, 130),
                    Size = UDim2.new(1, -8, 0, 16),
                    Text = 'Example:',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                111,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {105},
                    Position = UDim2.new(0, 8, 0, 148),
                    Size = UDim2.new(1, -8, 0, 16),
                    Text = "Setting up 'goto $1' on the OnChatted event will teleport you to any player that chats.",
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    TextYAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                112,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Name = 'Section',
                    Parent = {7},
                    Size = UDim2.new(1, 0, 0, 105),
                    ZIndex = 10,
                },
            },
            {
                113,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 4,
                    Name = 'Header',
                    Parent = {112},
                    Position = UDim2.new(0, 8, 0, 5),
                    Size = UDim2.new(1, -8, 0, 20),
                    Text = 'Get Further Help',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 20,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                114,
                'TextLabel',
                {
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BackgroundTransparency = 1,
                    Font = 3,
                    Name = 'Text',
                    Parent = {112},
                    Position = UDim2.new(0, 8, 0, 30),
                    Size = UDim2.new(1, -8, 0, 32),
                    Text = 'You can join the Discord server to get support with IY,  and read up on more documentation such as the Plugin API.',
                    TextColor3 = Color3.new(1, 1, 1),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = 0,
                    ZIndex = 10,
                },
            },
            {
                115,
                'Frame',
                {
                    BackgroundColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    BorderSizePixel = 0,
                    Name = 'Line',
                    Parent = {112},
                    Position = UDim2.new(0, 10, 1, -1),
                    Size = UDim2.new(1, -20, 0, 1),
                    Visible = false,
                    ZIndex = 10,
                },
            },
            {
                116,
                'TextButton',
                {
                    BackgroundColor3 = Color3.new(0.48627451062202, 0.61960786581039, 0.85098040103912),
                    BorderColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    Font = 4,
                    Name = 'InviteButton',
                    Parent = {112},
                    Position = UDim2.new(0, 5, 0, 75),
                    Size = UDim2.new(1, -10, 0, 25),
                    Text = 'Copy Discord Invite Link (https://discord.io/infiniteyield)',
                    TextColor3 = Color3.new(0.1803921610117, 0.1803921610117, 0.1843137294054),
                    TextSize = 16,
                    ZIndex = 10,
                },
            },
        })
        local v250, v251, v252 = pairs(u249.Content.List:GetDescendants())

        while true do
            local v253

            v252, v253 = v250(v251, v252)

            if v252 == nil then
                break
            end
            if v253:IsA('TextLabel') then
                table.insert(text1, v253)
            end
        end

        table.insert(scroll, u249.Content.List)
        table.insert(shade1, u249.Content)
        table.insert(shade2, u249.TopBar)

        u249.Name = randomString()

        u249.TopBar.Close.MouseButton1Click:Connect(function()
            u249:TweenPosition(UDim2.new(0.5, -250, 0, -500), 'InOut', 'Quart', 0.5, true, nil)
        end)

        local _InviteButton = u249:FindFirstChild('InviteButton', true)
        local u255 = nil

        _InviteButton.MouseButton1Click:Connect(function()
            local v256 = not (setclipboard or toclipboard) and (not set_clipboard and Clipboard)

            if v256 then
                v256 = Clipboard.set
            end
            if v256 then
                v256('https://discord.io/infiniteyield')

                _InviteButton.Text = 'Copied'
            else
                _InviteButton.Text = 'No Clipboard Function, type out the link'
            end

            local v257 = tick()

            u255 = v257

            wait(2)

            if u255 == v257 then
                _InviteButton.Text = 'Copy Discord Invite Link (https://discord.io/infiniteyield)'
            end
        end)
        dragGUI(u249)

        u249.Parent = PARENT

        ReferenceButton.MouseButton1Click:Connect(function()
            u249:TweenPosition(UDim2.new(0.5, -250, 0.5, -150), 'InOut', 'Quart', 0.5, true, nil)
        end)
    end)()
    currentShade1 = Color3.fromRGB(17, 36, 66)
    currentShade2 = Color3.fromRGB(10, 25, 48)
    currentShade3 = Color3.fromRGB(10, 25, 48)
    currentText1 = Color3.new(1, 1, 1)
    currentText2 = Color3.new(0, 0, 0)
    currentScroll = Color3.fromRGB(78, 78, 79)
    defaultsettings = {
        prefix = ';',
        StayOpen = true,
        espTransparency = 0.3,
        keepIY = true,
        logsEnabled = false,
        jLogsEnabled = false,
        aliases = {},
        binds = {},
        WayPoints = {},
        PluginsTable = {},
        currentShade1 = {
            currentShade1.R,
            currentShade1.G,
            currentShade1.B,
        },
        currentShade2 = {
            currentShade2.R,
            currentShade2.G,
            currentShade2.B,
        },
        currentShade3 = {
            currentShade3.R,
            currentShade3.G,
            currentShade3.B,
        },
        currentText1 = {
            currentText1.R,
            currentText1.G,
            currentText1.B,
        },
        currentText2 = {
            currentText2.R,
            currentText2.G,
            currentText2.B,
        },
        currentScroll = {
            currentScroll.R,
            currentScroll.G,
            currentScroll.B,
        },
        eventBinds = eventEditor.SaveData(),
    }
    defaults = HttpService:JSONEncode(defaultsettings)
    nosaves = false

    local u258 = nil

    function saves()
        if writefileExploit() then
            if pcall(function()
                readfile('IY_FE.iy')
            end) then
                if readfile('IY_FE.iy') == nil then
                    writefileCooldown('IY_FE.iy', defaults)
                    wait()
                    saves()
                else
                    local v260, v261 = pcall(function()
                        local v259 = HttpService:JSONDecode(readfile('IY_FE.iy'))

                        if v259.prefix == nil then
                            prefix = ';'
                        else
                            prefix = v259.prefix
                        end
                        if v259.StayOpen == nil then
                            StayOpen = false
                        else
                            StayOpen = v259.StayOpen
                        end
                        if v259.keepIY == nil then
                            KeepInfYield = true
                        else
                            KeepInfYield = v259.keepIY
                        end
                        if v259.espTransparency == nil then
                            espTransparency = 0.3
                        else
                            espTransparency = v259.espTransparency
                        end
                        if v259.logsEnabled == nil then
                            logsEnabled = false
                        else
                            logsEnabled = v259.logsEnabled
                        end
                        if v259.jLogsEnabled == nil then
                            jLogsEnabled = false
                        else
                            jLogsEnabled = v259.jLogsEnabled
                        end
                        if v259.aliases == nil then
                            aliases = {}
                        else
                            aliases = v259.aliases
                        end
                        if v259.binds == nil then
                            binds = {}
                        else
                            binds = v259.binds or {}
                        end
                        if v259.spawnCmds ~= nil then
                            spawnCmds = v259.spawnCmds
                        end
                        if v259.WayPoints == nil then
                            WayPoints = {}
                            AllWaypoints = {}
                        else
                            AllWaypoints = v259.WayPoints
                        end
                        if v259.PluginsTable == nil then
                            PluginsTable = {}
                        else
                            PluginsTable = v259.PluginsTable
                        end
                        if v259.currentShade1 ~= nil then
                            currentShade1 = Color3.new(v259.currentShade1[1], v259.currentShade1[2], v259.currentShade1[3])
                        end
                        if v259.currentShade2 ~= nil then
                            currentShade2 = Color3.new(v259.currentShade2[1], v259.currentShade2[2], v259.currentShade2[3])
                        end
                        if v259.currentShade3 ~= nil then
                            currentShade3 = Color3.new(v259.currentShade3[1], v259.currentShade3[2], v259.currentShade3[3])
                        end
                        if v259.currentText1 ~= nil then
                            currentText1 = Color3.new(v259.currentText1[1], v259.currentText1[2], v259.currentText1[3])
                        end
                        if v259.currentText2 ~= nil then
                            currentText2 = Color3.new(v259.currentText2[1], v259.currentText2[2], v259.currentText2[3])
                        end
                        if v259.currentScroll ~= nil then
                            currentScroll = Color3.new(v259.currentScroll[1], v259.currentScroll[2], v259.currentScroll[3])
                        end
                        if v259.eventBinds ~= nil then
                            u258 = v259.eventBinds
                        end
                    end)

                    if not v260 then
                        warn('Save Json Error:', v261)
                        warn('Overwriting Save File')
                        writefileCooldown('IY_FE.iy', defaults)
                        wait()
                        saves()
                    end
                end
            else
                writefileCooldown('IY_FE.iy', defaults)
                wait()

                if pcall(function()
                    readfile('IY_FE.iy')
                end) then
                    saves()
                else
                    nosaves = true
                    prefix = ';'
                    StayOpen = false
                    KeepInfYield = true
                    espTransparency = 0.3
                    logsEnabled = false
                    jLogsEnabled = false
                    aliases = {}
                    binds = {}
                    WayPoints = {}
                    PluginsTable = {}

                    local _Frame2 = Instance.new('Frame')
                    local _Frame3 = Instance.new('Frame')
                    local _TextLabel2 = Instance.new('TextLabel')
                    local _Frame4 = Instance.new('Frame')
                    local _TextLabel3 = Instance.new('TextLabel')
                    local _TextButton2 = Instance.new('TextButton')
                    local _ImageLabel2 = Instance.new('ImageLabel')

                    _Frame2.Name = randomString()
                    _Frame2.Parent = PARENT
                    _Frame2.Active = true
                    _Frame2.BackgroundTransparency = 1
                    _Frame2.Position = UDim2.new(0.5, -180, 0, 290)
                    _Frame2.Size = UDim2.new(0, 360, 0, 20)
                    _Frame2.ZIndex = 10
                    _Frame3.Name = 'background'
                    _Frame3.Parent = _Frame2
                    _Frame3.Active = true
                    _Frame3.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
                    _Frame3.BorderSizePixel = 0
                    _Frame3.Position = UDim2.new(0, 0, 0, 20)
                    _Frame3.Size = UDim2.new(0, 360, 0, 205)
                    _Frame3.ZIndex = 10
                    _TextLabel2.Name = 'Directions'
                    _TextLabel2.Parent = _Frame3
                    _TextLabel2.BackgroundTransparency = 1
                    _TextLabel2.BorderSizePixel = 0
                    _TextLabel2.Position = UDim2.new(0, 10, 0, 10)
                    _TextLabel2.Size = UDim2.new(0, 340, 0, 185)
                    _TextLabel2.Font = Enum.Font.SourceSans
                    _TextLabel2.TextSize = 14
                    _TextLabel2.Text = [[There was a problem writing a save file to your PC.

Please contact the developer/support team for your exploit and tell them writefile is not working.

Your settings, keybinds, waypoints, and aliases will not save if you continue.

Things to try:
> Make sure a 'workspace' folder is located in the same folder as your exploit
> If your exploit is inside of a zip/rar file, extract it.
> Rejoin the game and try again or restart your PC and try again.]]
                    _TextLabel2.TextColor3 = Color3.new(1, 1, 1)
                    _TextLabel2.TextWrapped = true
                    _TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
                    _TextLabel2.TextYAlignment = Enum.TextYAlignment.Top
                    _TextLabel2.ZIndex = 10
                    _Frame4.Name = 'shadow'
                    _Frame4.Parent = _Frame2
                    _Frame4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
                    _Frame4.BorderSizePixel = 0
                    _Frame4.Size = UDim2.new(0, 360, 0, 20)
                    _Frame4.ZIndex = 10
                    _TextLabel3.Name = 'PopupText'
                    _TextLabel3.Parent = _Frame4
                    _TextLabel3.BackgroundTransparency = 1
                    _TextLabel3.Size = UDim2.new(1, 0, 0.95, 0)
                    _TextLabel3.ZIndex = 10
                    _TextLabel3.Font = Enum.Font.SourceSans
                    _TextLabel3.TextSize = 14
                    _TextLabel3.Text = 'File Error'
                    _TextLabel3.TextColor3 = Color3.new(1, 1, 1)
                    _TextLabel3.TextWrapped = true
                    _TextButton2.Name = 'Exit'
                    _TextButton2.Parent = _Frame4
                    _TextButton2.BackgroundTransparency = 1
                    _TextButton2.Position = UDim2.new(1, -20, 0, 0)
                    _TextButton2.Size = UDim2.new(0, 20, 0, 20)
                    _TextButton2.Text = ''
                    _TextButton2.ZIndex = 10
                    _ImageLabel2.Parent = _TextButton2
                    _ImageLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
                    _ImageLabel2.BackgroundTransparency = 1
                    _ImageLabel2.Position = UDim2.new(0, 5, 0, 5)
                    _ImageLabel2.Size = UDim2.new(0, 10, 0, 10)
                    _ImageLabel2.Image = 'rbxassetid://5054663650'
                    _ImageLabel2.ZIndex = 10

                    _TextButton2.MouseButton1Click:Connect(function()
                        _Frame2:Destroy()
                    end)
                end
            end
        else
            prefix = ';'
            StayOpen = false
            KeepInfYield = true
            espTransparency = 0.3
            logsEnabled = false
            jLogsEnabled = false
            aliases = {}
            binds = {}
            WayPoints = {}
            PluginsTable = {}
        end
    end

    saves()

    function updatesaves()
        if nosaves == false and writefileExploit() then
            local v269 = {
                prefix = prefix,
                StayOpen = StayOpen,
                keepIY = KeepInfYield,
                espTransparency = espTransparency,
                logsEnabled = logsEnabled,
                jLogsEnabled = jLogsEnabled,
                aliases = aliases,
                binds = binds or {},
                WayPoints = AllWaypoints,
                PluginsTable = PluginsTable,
                currentShade1 = {
                    currentShade1.R,
                    currentShade1.G,
                    currentShade1.B,
                },
                currentShade2 = {
                    currentShade2.R,
                    currentShade2.G,
                    currentShade2.B,
                },
                currentShade3 = {
                    currentShade3.R,
                    currentShade3.G,
                    currentShade3.B,
                },
                currentText1 = {
                    currentText1.R,
                    currentText1.G,
                    currentText1.B,
                },
                currentText2 = {
                    currentText2.R,
                    currentText2.G,
                    currentText2.B,
                },
                currentScroll = {
                    currentScroll.R,
                    currentScroll.G,
                    currentScroll.B,
                },
                eventBinds = eventEditor.SaveData(),
            }

            writefileCooldown('IY_FE.iy', HttpService:JSONEncode(v269))
        end
    end

    eventEditor.SetOnEdited(updatesaves)

    pWayPoints = {}
    WayPoints = {}

    if #AllWaypoints > 0 then
        for v270 = 1, #AllWaypoints do
            local v271 = v270

            if not AllWaypoints[v271].GAME or AllWaypoints[v271].GAME == PlaceId then
                WayPoints[#WayPoints + 1] = {
                    NAME = AllWaypoints[v271].NAME,
                    COORD = {
                        AllWaypoints[v271].COORD[1],
                        AllWaypoints[v271].COORD[2],
                        AllWaypoints[v271].COORD[3],
                    },
                    GAME = AllWaypoints[v271].GAME,
                }
            end
        end
    end
    if type(binds) ~= 'table' then
        binds = {}
    end

    function Time()
        local v272 = math.floor(tick() % 86400 / 3600)
        local v273 = math.floor(tick() % 3600 / 60)
        local v274 = math.floor(tick() % 60)
        local v275 = 11 < v272 and 'PM' or 'AM'
        local v276 = v272 % 12 == 0 and 12 or v272 % 12

        if v276 < 10 then
            v276 = '0' .. v276 or v276
        end
        if v273 < 10 then
            v273 = '0' .. v273 or v273
        end
        if v274 < 10 then
            v274 = '0' .. v274 or v274
        end

        return v276 .. ':' .. v273 .. ':' .. v274 .. ' ' .. v275
    end

    PrefixBox.Text = prefix

    local u277 = false
    local u278 = false

    if StayOpen ~= false then
        On.BackgroundTransparency = 0
    else
        On.BackgroundTransparency = 1
    end
    if logsEnabled then
        Toggle.Text = 'Enabled'
    else
        Toggle.Text = 'Disabled'
    end
    if jLogsEnabled then
        Toggle_2.Text = 'Enabled'
    else
        Toggle_2.Text = 'Disabled'
    end

    function maximizeHolder()
        if StayOpen == false then
            Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, -220), 'InOut', 'Quart', 0.2, true, nil)
        end
    end

    local u279 = -20

    function minimizeHolder()
        if StayOpen == false then
            Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, u279), 'InOut', 'Quart', 0.5, true, nil)
        end
    end
    function cmdbarHolder()
        if StayOpen == false then
            Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, -45), 'InOut', 'Quart', 0.5, true, nil)
        end
    end

    pinNotification = nil

    local u280 = 0

    function notify(p281, p282, p283)
        task.spawn(function()
            local v284 = u280 + 1
            local u285 = false

            u280 = u280 + 1

            if pinNotification then
                pinNotification:Disconnect()
            end

            pinNotification = PinButton.MouseButton1Click:Connect(function()
                task.spawn(function()
                    pinNotification:Disconnect()

                    u285 = true
                    Title_2.BackgroundTransparency = 1

                    wait(0.5)

                    Title_2.BackgroundTransparency = 0
                end)
            end)

            Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), 'InOut', 'Quart', 0.5, true, nil)
            wait(0.6)

            local u286 = false

            if p282 then
                Title_2.Text = p281
                Text_2.Text = p282
            else
                Title_2.Text = 'Notification'
                Text_2.Text = p281
            end

            Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, -100), 'InOut', 'Quart', 0.5, true, nil)
            CloseButton.MouseButton1Click:Connect(function()
                Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), 'InOut', 'Quart', 0.5, true, nil)

                u286 = true

                pinNotification:Disconnect()
            end)

            if p283 and isNumber(p283) then
                wait(p283)
            else
                wait(10)
            end
            if v284 == u280 then
                if u286 == false and u285 == false then
                    pinNotification:Disconnect()
                    Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), 'InOut', 'Quart', 0.5, true, nil)
                end

                u280 = 0
            end
        end)
    end

    local u287 = nil
    local u288 = nil
    local u289 = 1

    function CreateLabel(p290, p291)
        if u287 ~= p290 .. p291 then
            if u289 > 1 then
                u289 = 1
            end
            if #scroll_2:GetChildren() >= 2546 then
                scroll_2:ClearAllChildren()
            end

            local v292, v293, v294 = pairs(scroll_2:GetChildren())
            local v295 = 0

            while true do
                local v296

                v294, v296 = v292(v293, v294)

                if v294 == nil then
                    break
                end
                if v296 then
                    v295 = v296.Size.Y.Offset + v295
                end
                if not v296 then
                    v295 = 0
                end
            end

            local _TextLabel4 = Instance.new('TextLabel')

            u287 = p290 .. p291
            u288 = _TextLabel4
            _TextLabel4.Name = p290
            _TextLabel4.Parent = scroll_2
            _TextLabel4.ZIndex = 10
            _TextLabel4.Text = Time() .. ' - [' .. p290 .. ']: ' .. p291
            _TextLabel4.Size = UDim2.new(0, 322, 0, 84)
            _TextLabel4.BackgroundTransparency = 1
            _TextLabel4.BorderSizePixel = 0
            _TextLabel4.Font = 'SourceSans'
            _TextLabel4.Position = UDim2.new(-1, 0, 0, v295)
            _TextLabel4.TextTransparency = 1
            _TextLabel4.TextScaled = false
            _TextLabel4.TextSize = 14
            _TextLabel4.TextWrapped = true
            _TextLabel4.TextXAlignment = 'Left'
            _TextLabel4.TextYAlignment = 'Top'
            _TextLabel4.TextColor3 = currentText1
            _TextLabel4.Size = UDim2.new(0, 322, 0, _TextLabel4.TextBounds.Y)

            table.insert(text1, _TextLabel4)

            scroll_2.CanvasSize = UDim2.new(0, 0, 0, v295 + _TextLabel4.TextBounds.Y)
            scroll_2.CanvasPosition = Vector2.new(0, scroll_2.CanvasPosition.Y + _TextLabel4.TextBounds.Y)

            _TextLabel4:TweenPosition(UDim2.new(0, 3, 0, v295), 'In', 'Quint', 0.5)

            for _ = 0, 50 do
                wait(0.05)

                _TextLabel4.TextTransparency = _TextLabel4.TextTransparency - 0.05
            end

            _TextLabel4.TextTransparency = 0
        else
            u289 = u289 + 1
            u288.Text = Time() .. ' - [' .. p290 .. ']: ' .. p291 .. ' (x' .. u289 .. ')'
        end
    end
    function CreateJoinLabel(p298, p299)
        if #scroll_3:GetChildren() >= 2546 then
            scroll_3:ClearAllChildren()
        end

        local _Frame5 = Instance.new('Frame')
        local _TextLabel5 = Instance.new('TextLabel')
        local _TextLabel6 = Instance.new('TextLabel')
        local _ImageLabel3 = Instance.new('ImageLabel')

        _Frame5.Name = randomString()
        _Frame5.Parent = scroll_3
        _Frame5.BackgroundColor3 = Color3.new(1, 1, 1)
        _Frame5.BackgroundTransparency = 1
        _Frame5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
        _Frame5.Size = UDim2.new(1, 0, 0, 50)
        _TextLabel5.Name = randomString()
        _TextLabel5.Parent = _Frame5
        _TextLabel5.BackgroundTransparency = 1
        _TextLabel5.BorderSizePixel = 0
        _TextLabel5.Position = UDim2.new(0, 45, 0, 0)
        _TextLabel5.Size = UDim2.new(0, 135, 1, 0)
        _TextLabel5.ZIndex = 10
        _TextLabel5.Font = Enum.Font.SourceSans
        _TextLabel5.FontSize = Enum.FontSize.Size14
        _TextLabel5.Text = 'Username: ' .. p298.Name .. '\nJoined Server: ' .. Time()
        _TextLabel5.TextColor3 = Color3.new(1, 1, 1)
        _TextLabel5.TextWrapped = true
        _TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
        _TextLabel6.Name = randomString()
        _TextLabel6.Parent = _Frame5
        _TextLabel6.BackgroundTransparency = 1
        _TextLabel6.BorderSizePixel = 0
        _TextLabel6.Position = UDim2.new(0, 185, 0, 0)
        _TextLabel6.Size = UDim2.new(0, 140, 1, -5)
        _TextLabel6.ZIndex = 10
        _TextLabel6.Font = Enum.Font.SourceSans
        _TextLabel6.FontSize = Enum.FontSize.Size14
        _TextLabel6.Text = 'User ID: ' .. p299 .. '\nAccount Age: ' .. p298.AccountAge .. '\nJoined Roblox: Loading...'
        _TextLabel6.TextColor3 = Color3.new(1, 1, 1)
        _TextLabel6.TextWrapped = true
        _TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
        _TextLabel6.TextYAlignment = Enum.TextYAlignment.Center
        _ImageLabel3.Parent = _Frame5
        _ImageLabel3.BackgroundTransparency = 1
        _ImageLabel3.BorderSizePixel = 0
        _ImageLabel3.Size = UDim2.new(0, 45, 1, 0)
        _ImageLabel3.Image = Players:GetUserThumbnailAsync(p299, Enum.ThumbnailType.AvatarThumbnail, Enum.ThumbnailSize.Size420x420)
        scroll_3.CanvasSize = UDim2.new(0, 0, 0, listlayout.AbsoluteContentSize.Y)
        scroll_3.CanvasPosition = Vector2.new(0, scroll_2.CanvasPosition.Y + _Frame5.AbsoluteSize.Y)

        wait()

        local v304 = game:HttpGet('https://users.roblox.com/v1/users/' .. p299)
        local v305 = HttpService:JSONDecode(v304).created:sub(1, 10)
        local v306 = string.split(v305, '-')

        _TextLabel6.Text = string.gsub(_TextLabel6.Text, 'Loading...', v306[2] .. '/' .. v306[3] .. '/' .. v306[1])
    end

    IYMouse.KeyDown:Connect(function(p307)
        if p307 == prefix then
            Cmdbar:CaptureFocus()
            spawn(function()
                repeat
                    Cmdbar.Text = ''
                until Cmdbar.Text == ''
            end)
            maximizeHolder()
        end
    end)

    local u308 = 0

    Holder.MouseEnter:Connect(function()
        u308 = 0

        maximizeHolder()
    end)
    Holder.MouseLeave:Connect(function()
        if not Cmdbar:IsFocused() then
            local v309 = tick()

            u308 = v309

            wait(1)

            if u308 ~= v309 then
                return
            end
            if not Cmdbar:IsFocused() then
                minimizeHolder()
            end
        end
    end)

    function updateColors(p310, p311)
        if p311 ~= shade1 then
            if p311 ~= shade2 then
                if p311 ~= shade3 then
                    if p311 ~= text1 then
                        if p311 ~= text2 then
                            if p311 == scroll then
                                local v312, v313, v314 = pairs(scroll)

                                while true do
                                    local v315

                                    v314, v315 = v312(v313, v314)

                                    if v314 == nil then
                                        break
                                    end

                                    v315.ScrollBarImageColor3 = p310
                                end

                                currentScroll = p310
                            end
                        else
                            local v316, v317, v318 = pairs(text2)

                            while true do
                                local v319

                                v318, v319 = v316(v317, v318)

                                if v318 == nil then
                                    break
                                end

                                v319.TextColor3 = p310
                            end

                            currentText2 = p310
                        end
                    else
                        local v320, v321, v322 = pairs(text1)

                        while true do
                            local v323

                            v322, v323 = v320(v321, v322)

                            if v322 == nil then
                                break
                            end

                            v323.TextColor3 = p310

                            if v323:IsA('TextBox') then
                                v323.PlaceholderColor3 = p310
                            end
                        end

                        currentText1 = p310
                    end
                else
                    local v324, v325, v326 = pairs(shade3)

                    while true do
                        local v327

                        v326, v327 = v324(v325, v326)

                        if v326 == nil then
                            break
                        end

                        v327.BackgroundColor3 = p310
                    end

                    currentShade3 = p310
                end
            else
                local v328, v329, v330 = pairs(shade2)

                while true do
                    local v331

                    v330, v331 = v328(v329, v330)

                    if v330 == nil then
                        break
                    end

                    v331.BackgroundColor3 = p310
                end

                currentShade2 = p310
            end
        else
            local v332, v333, v334 = pairs(shade1)

            while true do
                local v335

                v334, v335 = v332(v333, v334)

                if v334 == nil then
                    break
                end

                v335.BackgroundColor3 = p310
            end

            currentShade1 = p310
        end
    end

    local u336 = false

    ColorsButton.MouseButton1Click:Connect(function()
        cache_currentShade1 = currentShade1
        cache_currentShade2 = currentShade2
        cache_currentShade3 = currentShade3
        cache_currentText1 = currentText1
        cache_currentText2 = currentText2
        cache_currentScroll = currentScroll

        if u336 then
            picker:TweenPosition(UDim2.new(0.5, -219, 0, 100), 'InOut', 'Quart', 0.5, true, nil)
        else
            u336 = true
            picker = game:GetObjects('rbxassetid://4908465318')[1]
            picker.Name = randomString()
            picker.Parent = PARENT

            picker:TweenPosition(UDim2.new(0.5, -219, 0, 100), 'InOut', 'Quart', 0.5, true, nil)

            local v516 = ({
                new = function()
                    local u337 = setmetatable({}, {})
                    local _ColorPicker = picker.ColorPicker
                    local _Exit = _ColorPicker.TopBar.Exit
                    local _Content = _ColorPicker.Content
                    local _ColorSpace = _Content.ColorSpaceFrame.ColorSpace
                    local _ColorStrip = _Content.ColorStrip
                    local _Preview = _Content.Preview
                    local _BasicColors = _Content.BasicColors
                    local _CustomColors = _Content.CustomColors
                    local _Default = _Content.Default
                    local _Cancel = _Content.Cancel
                    local _Shade1 = _Content.Shade1
                    local _Shade2 = _Content.Shade2
                    local _Shade3 = _Content.Shade3
                    local _Text1 = _Content.Text1
                    local _Text2 = _Content.Text2
                    local _Scroll = _Content.Scroll
                    local _Scope = _ColorSpace.Scope
                    local _Arrow = _Content.ArrowFrame.Arrow
                    local _Input = _Content.Hue.Input
                    local _Input2 = _Content.Sat.Input
                    local _Input3 = _Content.Val.Input
                    local _Input4 = _Content.Red.Input
                    local _Input5 = _Content.Green.Input
                    local _Input6 = _Content.Blue.Input
                    local u362 = IYMouse
                    local u363 = 0
                    local u364 = 0
                    local u365 = 1
                    local u366 = 1
                    local u367 = 1
                    local u368 = 1
                    local u369 = Color3.new(0, 0, 0)
                    local v370 = {
                        Color3.new(0, 0, 0),
                        Color3.new(0.66666668653488, 0, 0),
                        Color3.new(0, 0.33333334326744, 0),
                        Color3.new(0.66666668653488, 0.33333334326744, 0),
                        Color3.new(0, 0.66666668653488, 0),
                        Color3.new(0.66666668653488, 0.66666668653488, 0),
                        Color3.new(0, 1, 0),
                        Color3.new(0.66666668653488, 1, 0),
                        Color3.new(0, 0, 0.49803924560547),
                        Color3.new(0.66666668653488, 0, 0.49803924560547),
                        Color3.new(0, 0.33333334326744, 0.49803924560547),
                        Color3.new(0.66666668653488, 0.33333334326744, 0.49803924560547),
                        Color3.new(0, 0.66666668653488, 0.49803924560547),
                        Color3.new(0.66666668653488, 0.66666668653488, 0.49803924560547),
                        Color3.new(0, 1, 0.49803924560547),
                        Color3.new(0.66666668653488, 1, 0.49803924560547),
                        Color3.new(0, 0, 1),
                        Color3.new(0.66666668653488, 0, 1),
                        Color3.new(0, 0.33333334326744, 1),
                        Color3.new(0.66666668653488, 0.33333334326744, 1),
                        Color3.new(0, 0.66666668653488, 1),
                        Color3.new(0.66666668653488, 0.66666668653488, 1),
                        Color3.new(0, 1, 1),
                        Color3.new(0.66666668653488, 1, 1),
                        Color3.new(0.33333334326744, 0, 0),
                        Color3.new(1, 0, 0),
                        Color3.new(0.33333334326744, 0.33333334326744, 0),
                        Color3.new(1, 0.33333334326744, 0),
                        Color3.new(0.33333334326744, 0.66666668653488, 0),
                        Color3.new(1, 0.66666668653488, 0),
                        Color3.new(0.33333334326744, 1, 0),
                        Color3.new(1, 1, 0),
                        Color3.new(0.33333334326744, 0, 0.49803924560547),
                        Color3.new(1, 0, 0.49803924560547),
                        Color3.new(0.33333334326744, 0.33333334326744, 0.49803924560547),
                        Color3.new(1, 0.33333334326744, 0.49803924560547),
                        Color3.new(0.33333334326744, 0.66666668653488, 0.49803924560547),
                        Color3.new(1, 0.66666668653488, 0.49803924560547),
                        Color3.new(0.33333334326744, 1, 0.49803924560547),
                        Color3.new(1, 1, 0.49803924560547),
                        Color3.new(0.33333334326744, 0, 1),
                        Color3.new(1, 0, 1),
                        Color3.new(0.33333334326744, 0.33333334326744, 1),
                        Color3.new(1, 0.33333334326744, 1),
                        Color3.new(0.33333334326744, 0.66666668653488, 1),
                        Color3.new(1, 0.66666668653488, 1),
                        Color3.new(0.33333334326744, 1, 1),
                        Color3.new(1, 1, 1),
                    }
                    local u371 = {}

                    dragGUI(picker)

                    local function u376(p372)
                        local v373 = 219 - u363 * 219
                        local v374 = 199 - u364 * 199
                        local v375 = 199 - u365 * 199

                        Color3.fromHSV(u363, u364, u365)

                        if p372 == 2 or not p372 then
                            _Input.Text = tostring(math.ceil(359 * u363))
                            _Input2.Text = tostring(math.ceil(255 * u364))
                            _Input3.Text = tostring(math.floor(255 * u365))
                        end
                        if p372 == 1 or not p372 then
                            _Input4.Text = tostring(math.floor(255 * u366))
                            _Input5.Text = tostring(math.floor(255 * u367))
                            _Input6.Text = tostring(math.floor(255 * u368))
                        end

                        u369 = Color3.new(u366, u367, u368)
                        _Scope.Position = UDim2.new(0, v373 - 9, 0, v374 - 9)
                        _ColorStrip.ImageColor3 = Color3.fromHSV(u363, u364, 1)
                        _Arrow.Position = UDim2.new(0, -2, 0, v375 - 4)
                        _Preview.BackgroundColor3 = u369
                        u337.Color = u369

                        if u337.Changed then
                            u337:Changed(u369)
                        end
                    end
                    local function u384()
                        local v377 = u362.X - _ColorSpace.AbsolutePosition.X
                        local v378 = u362.Y - _ColorSpace.AbsolutePosition.Y
                        local v379 = v377 < 0 and 0 or (v377 > 219 and 219 or v377)
                        local v380 = v378 < 0 and 0 or (v378 > 199 and 199 or v378)

                        u363 = (219 - v379) / 219
                        u364 = (199 - v380) / 199

                        local v381 = Color3.fromHSV(u363, u364, u365)
                        local _r = v381.r
                        local _g = v381.g

                        u368 = v381.b
                        u367 = _g
                        u366 = _r

                        u376()
                    end
                    local function u389()
                        local v385 = u362.Y - _ColorStrip.AbsolutePosition.Y

                        u365 = (199 - (v385 < 0 and 0 or (v385 > 199 and 199 or v385))) / 199

                        local v386 = Color3.fromHSV(u363, u364, u365)
                        local _r2 = v386.r
                        local _g2 = v386.g

                        u368 = v386.b
                        u367 = _g2
                        u366 = _r2

                        u376()
                    end
                    local function v408(p390, p391)
                        p390.ArrowFrame.Up.InputBegan:Connect(function(p392)
                            if p392.UserInputType ~= Enum.UserInputType.MouseMovement then
                                if p392.UserInputType == Enum.UserInputType.MouseButton1 then
                                    local u393 = nil
                                    local v394 = tick()
                                    local u395 = true
                                    local v396 = tonumber(p390.Text)

                                    if not v396 then
                                        return
                                    end

                                    local _ = UserInputService.InputEnded:Connect(function(p397)
                                        if p397.UserInputType == Enum.UserInputType.MouseButton1 then
                                            u393:Disconnect()

                                            u395 = false
                                        end
                                    end)
                                    local v398 = v396 + 1

                                    p391(v398)

                                    while u395 do
                                        if tick() - v394 > 0.3 then
                                            v398 = v398 + 1

                                            p391(v398)
                                        end

                                        wait(0.1)
                                    end
                                end
                            else
                                p390.ArrowFrame.Up.BackgroundTransparency = 0.5
                            end
                        end)
                        p390.ArrowFrame.Up.InputEnded:Connect(function(p399)
                            if p399.UserInputType == Enum.UserInputType.MouseMovement then
                                p390.ArrowFrame.Up.BackgroundTransparency = 1
                            end
                        end)
                        p390.ArrowFrame.Down.InputBegan:Connect(function(p400)
                            if p400.UserInputType ~= Enum.UserInputType.MouseMovement then
                                if p400.UserInputType == Enum.UserInputType.MouseButton1 then
                                    local u401 = nil
                                    local v402 = tick()
                                    local u403 = true
                                    local v404 = tonumber(p390.Text)

                                    if not v404 then
                                        return
                                    end

                                    local _ = UserInputService.InputEnded:Connect(function(p405)
                                        if p405.UserInputType == Enum.UserInputType.MouseButton1 then
                                            u401:Disconnect()

                                            u403 = false
                                        end
                                    end)
                                    local v406 = v404 - 1

                                    p391(v406)

                                    while u403 do
                                        if tick() - v402 > 0.3 then
                                            v406 = v406 - 1

                                            p391(v406)
                                        end

                                        wait(0.1)
                                    end
                                end
                            else
                                p390.ArrowFrame.Down.BackgroundTransparency = 0.5
                            end
                        end)
                        p390.ArrowFrame.Down.InputEnded:Connect(function(p407)
                            if p407.UserInputType == Enum.UserInputType.MouseMovement then
                                p390.ArrowFrame.Down.BackgroundTransparency = 1
                            end
                        end)
                    end

                    _ColorSpace.InputBegan:Connect(function(p409)
                        if p409.UserInputType == Enum.UserInputType.MouseButton1 then
                            local u410 = nil
                            local u411 = nil

                            u410 = UserInputService.InputEnded:Connect(function(p412)
                                if p412.UserInputType == Enum.UserInputType.MouseButton1 then
                                    u410:Disconnect()
                                    u411:Disconnect()
                                end
                            end)
                            u411 = UserInputService.InputChanged:Connect(function(p413)
                                if p413.UserInputType == Enum.UserInputType.MouseMovement then
                                    u384()
                                end
                            end)

                            u384()
                        end
                    end)
                    _ColorStrip.InputBegan:Connect(function(p414)
                        if p414.UserInputType == Enum.UserInputType.MouseButton1 then
                            local u415 = nil
                            local u416 = nil

                            u415 = UserInputService.InputEnded:Connect(function(p417)
                                if p417.UserInputType == Enum.UserInputType.MouseButton1 then
                                    u415:Disconnect()
                                    u416:Disconnect()
                                end
                            end)
                            u416 = UserInputService.InputChanged:Connect(function(p418)
                                if p418.UserInputType == Enum.UserInputType.MouseMovement then
                                    u389()
                                end
                            end)

                            u389()
                        end
                    end)

                    local function u424(p419)
                        local v420 = tonumber(p419)

                        if v420 then
                            u363 = math.clamp(math.floor(v420), 0, 359) / 359

                            local v421 = Color3.fromHSV(u363, u364, u365)
                            local _r3 = v421.r
                            local _g3 = v421.g

                            u368 = v421.b
                            u367 = _g3
                            u366 = _r3
                            _Input.Text = tostring(u363 * 359)

                            u376(1)
                        end
                    end

                    _Input.FocusLost:Connect(function()
                        u424(_Input.Text)
                    end)
                    v408(_Input, u424)

                    local function u430(p425)
                        local v426 = tonumber(p425)

                        if v426 then
                            u364 = math.clamp(math.floor(v426), 0, 255) / 255

                            local v427 = Color3.fromHSV(u363, u364, u365)
                            local _r4 = v427.r
                            local _g4 = v427.g

                            u368 = v427.b
                            u367 = _g4
                            u366 = _r4
                            _Input2.Text = tostring(u364 * 255)

                            u376(1)
                        end
                    end

                    _Input2.FocusLost:Connect(function()
                        u430(_Input2.Text)
                    end)
                    v408(_Input2, u430)

                    local function u436(p431)
                        local v432 = tonumber(p431)

                        if v432 then
                            u365 = math.clamp(math.floor(v432), 0, 255) / 255

                            local v433 = Color3.fromHSV(u363, u364, u365)
                            local _r5 = v433.r
                            local _g5 = v433.g

                            u368 = v433.b
                            u367 = _g5
                            u366 = _r5
                            _Input3.Text = tostring(u365 * 255)

                            u376(1)
                        end
                    end

                    _Input3.FocusLost:Connect(function()
                        u436(_Input3.Text)
                    end)
                    v408(_Input3, u436)

                    local function u443(p437)
                        local v438 = tonumber(p437)

                        if v438 then
                            u366 = math.clamp(math.floor(v438), 0, 255) / 255

                            local v439 = Color3.new(u366, u367, u368)
                            local v440, v441, v442 = Color3.toHSV(v439)

                            u365 = v442
                            u364 = v441
                            u363 = v440
                            _Input4.Text = tostring(u366 * 255)

                            u376(2)
                        end
                    end

                    _Input4.FocusLost:Connect(function()
                        u443(_Input4.Text)
                    end)
                    v408(_Input4, u443)

                    local function u450(p444)
                        local v445 = tonumber(p444)

                        if v445 then
                            u367 = math.clamp(math.floor(v445), 0, 255) / 255

                            local v446 = Color3.new(u366, u367, u368)
                            local v447, v448, v449 = Color3.toHSV(v446)

                            u365 = v449
                            u364 = v448
                            u363 = v447
                            _Input5.Text = tostring(u367 * 255)

                            u376(2)
                        end
                    end

                    _Input5.FocusLost:Connect(function()
                        u450(_Input5.Text)
                    end)
                    v408(_Input5, u450)

                    local function u457(p451)
                        local v452 = tonumber(p451)

                        if v452 then
                            u368 = math.clamp(math.floor(v452), 0, 255) / 255

                            local v453 = Color3.new(u366, u367, u368)
                            local v454, v455, v456 = Color3.toHSV(v453)

                            u365 = v456
                            u364 = v455
                            u363 = v454
                            _Input6.Text = tostring(u368 * 255)

                            u376(2)
                        end
                    end

                    _Input6.FocusLost:Connect(function()
                        u457(_Input6.Text)
                    end)
                    v408(_Input6, u457)

                    local _TextButton3 = Instance.new('TextButton')

                    _TextButton3.Name = 'Choice'
                    _TextButton3.Size = UDim2.new(0, 25, 0, 18)
                    _TextButton3.BorderColor3 = Color3.new(0.3764705882352941, 0.3764705882352941, 0.3764705882352941)
                    _TextButton3.Text = ''
                    _TextButton3.AutoButtonColor = false
                    _TextButton3.ZIndex = 10

                    local v459, v460, v461 = pairs(v370)
                    local u462 = u337
                    local u463 = u369
                    local u464 = u376
                    local u465 = u365
                    local u466 = u364
                    local u467 = u363
                    local u468 = u368
                    local u469 = u367
                    local u470 = u366
                    local v471 = 0
                    local v472 = 0

                    while true do
                        local v473, u474 = v459(v460, v461)

                        if v473 == nil then
                            break
                        end

                        v461 = v473

                        local v475 = _TextButton3:Clone()

                        v475.BackgroundColor3 = u474
                        v475.Position = UDim2.new(0, 1 + 30 * v471, 0, 21 + 23 * v472)

                        v475.MouseButton1Click:Connect(function()
                            local _r6 = u474.r
                            local _g6 = u474.g

                            u468 = u474.b
                            u469 = _g6
                            u470 = _r6

                            local v478 = Color3.new(u470, u469, u468)
                            local v479, v480, v481 = Color3.toHSV(v478)

                            u465 = v481
                            u466 = v480
                            u467 = v479

                            u464()
                        end)

                        v475.Parent = _BasicColors
                        v471 = v471 + 1

                        if v471 == 6 then
                            v472 = v472 + 1
                            v471 = 0
                        end
                    end

                    local v482 = 0
                    local v483 = 0

                    for v484 = 1, 12 do
                        local u485 = v484
                        local v486 = u371[u485] or Color3.new(0, 0, 0)
                        local u487 = _TextButton3:Clone()

                        u487.BackgroundColor3 = v486
                        u487.Position = UDim2.new(0, 1 + 30 * v483, 0, 20 + 23 * v482)

                        u487.MouseButton1Click:Connect(function()
                            local v488 = u371[u485] or Color3.new(0, 0, 0)
                            local _r7 = v488.r
                            local _g7 = v488.g

                            u468 = v488.b
                            u469 = _g7
                            u470 = _r7

                            local v491, v492, v493 = Color3.toHSV(v488)

                            u465 = v493
                            u466 = v492
                            u467 = v491

                            u464()
                        end)
                        u487.MouseButton2Click:Connect(function()
                            u371[u485] = u463
                            u487.BackgroundColor3 = u463
                        end)

                        u487.Parent = _CustomColors
                        v483 = v483 + 1

                        if v483 == 6 then
                            v482 = v482 + 1
                            v483 = 0
                        end
                    end

                    _Shade1.MouseButton1Click:Connect(function()
                        if u462.Confirm then
                            u462:Confirm(u463, shade1)
                        end
                    end)
                    _Shade1.InputBegan:Connect(function(p494)
                        if p494.UserInputType == Enum.UserInputType.MouseMovement then
                            _Shade1.BackgroundTransparency = 0.4
                        end
                    end)
                    _Shade1.InputEnded:Connect(function(p495)
                        if p495.UserInputType == Enum.UserInputType.MouseMovement then
                            _Shade1.BackgroundTransparency = 0
                        end
                    end)
                    _Shade2.MouseButton1Click:Connect(function()
                        if u462.Confirm then
                            u462:Confirm(u463, shade2)
                        end
                    end)
                    _Shade2.InputBegan:Connect(function(p496)
                        if p496.UserInputType == Enum.UserInputType.MouseMovement then
                            _Shade2.BackgroundTransparency = 0.4
                        end
                    end)
                    _Shade2.InputEnded:Connect(function(p497)
                        if p497.UserInputType == Enum.UserInputType.MouseMovement then
                            _Shade2.BackgroundTransparency = 0
                        end
                    end)
                    _Shade3.MouseButton1Click:Connect(function()
                        if u462.Confirm then
                            u462:Confirm(u463, shade3)
                        end
                    end)
                    _Shade3.InputBegan:Connect(function(p498)
                        if p498.UserInputType == Enum.UserInputType.MouseMovement then
                            _Shade3.BackgroundTransparency = 0.4
                        end
                    end)
                    _Shade3.InputEnded:Connect(function(p499)
                        if p499.UserInputType == Enum.UserInputType.MouseMovement then
                            _Shade3.BackgroundTransparency = 0
                        end
                    end)
                    _Text1.MouseButton1Click:Connect(function()
                        if u462.Confirm then
                            u462:Confirm(u463, text1)
                        end
                    end)
                    _Text1.InputBegan:Connect(function(p500)
                        if p500.UserInputType == Enum.UserInputType.MouseMovement then
                            _Text1.BackgroundTransparency = 0.4
                        end
                    end)
                    _Text1.InputEnded:Connect(function(p501)
                        if p501.UserInputType == Enum.UserInputType.MouseMovement then
                            _Text1.BackgroundTransparency = 0
                        end
                    end)
                    _Text2.MouseButton1Click:Connect(function()
                        if u462.Confirm then
                            u462:Confirm(u463, text2)
                        end
                    end)
                    _Text2.InputBegan:Connect(function(p502)
                        if p502.UserInputType == Enum.UserInputType.MouseMovement then
                            _Text2.BackgroundTransparency = 0.4
                        end
                    end)
                    _Text2.InputEnded:Connect(function(p503)
                        if p503.UserInputType == Enum.UserInputType.MouseMovement then
                            _Text2.BackgroundTransparency = 0
                        end
                    end)
                    _Scroll.MouseButton1Click:Connect(function()
                        if u462.Confirm then
                            u462:Confirm(u463, scroll)
                        end
                    end)
                    _Scroll.InputBegan:Connect(function(p504)
                        if p504.UserInputType == Enum.UserInputType.MouseMovement then
                            _Scroll.BackgroundTransparency = 0.4
                        end
                    end)
                    _Scroll.InputEnded:Connect(function(p505)
                        if p505.UserInputType == Enum.UserInputType.MouseMovement then
                            _Scroll.BackgroundTransparency = 0
                        end
                    end)
                    _Cancel.MouseButton1Click:Connect(function()
                        if u462.Cancel then
                            u462:Cancel()
                        end
                    end)
                    _Cancel.InputBegan:Connect(function(p506)
                        if p506.UserInputType == Enum.UserInputType.MouseMovement then
                            _Cancel.BackgroundTransparency = 0.4
                        end
                    end)
                    _Cancel.InputEnded:Connect(function(p507)
                        if p507.UserInputType == Enum.UserInputType.MouseMovement then
                            _Cancel.BackgroundTransparency = 0
                        end
                    end)
                    _Default.MouseButton1Click:Connect(function()
                        if u462.Default then
                            u462:Default()
                        end
                    end)
                    _Default.InputBegan:Connect(function(p508)
                        if p508.UserInputType == Enum.UserInputType.MouseMovement then
                            _Default.BackgroundTransparency = 0.4
                        end
                    end)
                    _Default.InputEnded:Connect(function(p509)
                        if p509.UserInputType == Enum.UserInputType.MouseMovement then
                            _Default.BackgroundTransparency = 0
                        end
                    end)
                    _Exit.MouseButton1Click:Connect(function()
                        picker:TweenPosition(UDim2.new(0.5, -219, 0, -500), 'InOut', 'Quart', 0.5, true, nil)
                    end)
                    u464()

                    function u462.SetColor(_, p510)
                        local _r8 = p510.r
                        local _g8 = p510.g

                        u468 = p510.b
                        u469 = _g8
                        u470 = _r8

                        local v513, v514, v515 = Color3.toHSV(p510)

                        u465 = v515
                        u466 = v514
                        u467 = v513

                        u464()
                    end

                    return u462
                end,
            }).new()

            function v516.Confirm(_, p517, p518)
                updateColors(p517, p518)
                wait()
                updatesaves()
            end
            function v516.Cancel(_)
                updateColors(cache_currentShade1, shade1)
                updateColors(cache_currentShade2, shade2)
                updateColors(cache_currentShade3, shade3)
                updateColors(cache_currentText1, text1)
                updateColors(cache_currentText2, text2)
                updateColors(cache_currentScroll, scroll)
                wait()
                updatesaves()
            end
            function v516.Default(_)
                updateColors(Color3.fromRGB(36, 36, 37), shade1)
                updateColors(Color3.fromRGB(46, 46, 47), shade2)
                updateColors(Color3.fromRGB(78, 78, 79), shade3)
                updateColors(Color3.new(1, 1, 1), text1)
                updateColors(Color3.new(0, 0, 0), text2)
                updateColors(Color3.fromRGB(78, 78, 79), scroll)
                wait()
                updatesaves()
            end
        end
    end)
    SettingsButton.MouseButton1Click:Connect(function()
        if u277 ~= false then
            u277 = false
            CMDsF.Visible = true

            Settings:TweenPosition(UDim2.new(0, 0, 0, 220), 'InOut', 'Quart', 0.5, true, nil)
        else
            u277 = true

            Settings:TweenPosition(UDim2.new(0, 0, 0, 45), 'InOut', 'Quart', 0.5, true, nil)

            CMDsF.Visible = false
        end
    end)
    On.MouseButton1Click:Connect(function()
        if u278 == false then
            if StayOpen ~= false then
                StayOpen = false
                On.BackgroundTransparency = 1
            else
                StayOpen = true
                On.BackgroundTransparency = 0
            end

            updatesaves()
        end
    end)
    Clear.MouseButton1Down:Connect(function()
        local v519, v520, v521 = pairs(scroll_2:GetChildren())

        while true do
            local v522

            v521, v522 = v519(v520, v521)

            if v521 == nil then
                break
            end

            v522:Destroy()
        end

        scroll_2.CanvasSize = UDim2.new(0, 0, 0, 10)
    end)
    Clear_2.MouseButton1Down:Connect(function()
        local v523, v524, v525 = pairs(scroll_3:GetChildren())

        while true do
            local v526

            v525, v526 = v523(v524, v525)

            if v525 == nil then
                break
            end

            v526:Destroy()
        end

        scroll_3.CanvasSize = UDim2.new(0, 0, 0, 10)
    end)
    Toggle.MouseButton1Down:Connect(function()
        if logsEnabled then
            logsEnabled = false
            Toggle.Text = 'Disabled'

            updatesaves()
        else
            logsEnabled = true
            Toggle.Text = 'Enabled'

            updatesaves()
        end
    end)
    Toggle_2.MouseButton1Down:Connect(function()
        if jLogsEnabled then
            jLogsEnabled = false
            Toggle_2.Text = 'Disabled'

            updatesaves()
        else
            jLogsEnabled = true
            Toggle_2.Text = 'Enabled'

            updatesaves()
        end
    end)
    selectChat.MouseButton1Down:Connect(function()
        join.Visible = false
        chat.Visible = true

        table.remove(shade3, table.find(shade3, selectChat))
        table.remove(shade2, table.find(shade2, selectJoin))
        table.insert(shade2, selectChat)
        table.insert(shade3, selectJoin)

        selectJoin.BackgroundColor3 = currentShade3
        selectChat.BackgroundColor3 = currentShade2
    end)
    selectJoin.MouseButton1Down:Connect(function()
        chat.Visible = false
        join.Visible = true

        table.remove(shade3, table.find(shade3, selectJoin))
        table.remove(shade2, table.find(shade2, selectChat))
        table.insert(shade2, selectJoin)
        table.insert(shade3, selectChat)

        selectChat.BackgroundColor3 = currentShade3
        selectJoin.BackgroundColor3 = currentShade2
    end)

    if not writefileExploit() then
        notify('Saves', 'Your exploit does not support read/write file. Your settings will not save.')
    end

    function ChatLog(p527)
        p527.Chatted:Connect(function(p528)
            if logsEnabled == true then
                CreateLabel(p527.Name, p528)
            end
        end)
    end
    function JoinLog(p529)
        if jLogsEnabled == true then
            CreateJoinLabel(p529, p529.UserId)
        end
    end

    local function u531(p530)
        return string.gsub(p530, '[*\\?:<>|]+', '')
    end

    SaveChatlogs.MouseButton1Down:Connect(function()
        if writefileExploit() then
            if #scroll_2:GetChildren() > 0 then
                notify('Loading', 'Hold on a sec')

                local u532 = u531(MarketplaceService:GetProductInfo(PlaceId).Name)
                local v533 = '-- Infinite Yield Chat logs for "' .. u532 .. '"\n'
                local v534, v535, v536 = pairs(scroll_2:GetChildren())

                while true do
                    local v537

                    v536, v537 = v534(v535, v536)

                    if v536 == nil then
                        break
                    end

                    v533 = v533 .. '\n' .. v537.Text
                end

                local u538 = tostring(v533)
                local u539 = 0

                local function u541()
                    local u540 = nil

                    pcall(function()
                        u540 = readfile(u532 .. ' Chat Logs (' .. u539 .. ').txt')
                    end)

                    if u540 then
                        u539 = u539 + 1

                        u541()
                    else
                        writefileCooldown(u532 .. ' Chat Logs (' .. u539 .. ').txt', u538)
                    end
                end

                u541()
                notify('Chat Logs', 'Saved chat logs to the workspace folder within your exploit folder.')
            end
        else
            notify('Chat Logs', 'Your exploit does not support write file. You cannot save chat logs.')
        end
    end)

    local v542, v543, v544 = pairs(Players:GetChildren())
    local u545 = u279

    while true do
        local v546, v547 = v542(v543, v544)

        if v546 == nil then
            break
        end

        v544 = v546

        if v547.ClassName == 'Player' then
            ChatLog(v547)
        end
    end

    Players.PlayerRemoving:Connect(function(p548)
        if ESPenabled or CHMSenabled or COREGUI:FindFirstChild(p548.Name .. '_LC') then
            local v549, v550, v551 = pairs(COREGUI:GetChildren())

            while true do
                local v552

                v551, v552 = v549(v550, v551)

                if v551 == nil then
                    break
                end
                if v552.Name == p548.Name .. '_ESP' or (v552.Name == p548.Name .. '_LC' or v552.Name == p548.Name .. '_CHMS') then
                    v552:Destroy()
                end
            end
        end
        if viewing ~= nil and p548 == viewing then
            workspace.CurrentCamera.CameraSubject = Players.LocalPlayer.Character
            viewing = nil

            if viewDied then
                viewDied:Disconnect()
                viewChanged:Disconnect()
            end

            notify('Spectate', 'View turned off (player left)')
        end
    end)
    Exit.MouseButton1Down:Connect(function()
        logs:TweenPosition(UDim2.new(0, 0, 1, 10), 'InOut', 'Quart', 0.3, true, nil)
    end)
    Hide.MouseButton1Down:Connect(function()
        if logs.Position == UDim2.new(0, 0, 1, -20) then
            logs:TweenPosition(UDim2.new(0, 0, 1, -265), 'InOut', 'Quart', 0.3, true, nil)
        else
            logs:TweenPosition(UDim2.new(0, 0, 1, -20), 'InOut', 'Quart', 0.3, true, nil)
        end
    end)
    EventBind.MouseButton1Click:Connect(function()
        eventEditor.Frame:TweenPosition(UDim2.new(0.5, -175, 0.5, -101), 'InOut', 'Quart', 0.5, true, nil)
    end)
    Keybinds.MouseButton1Click:Connect(function()
        KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), 'InOut', 'Quart', 0.5, true, nil)
        wait(0.5)

        SettingsHolder.Visible = false
    end)
    Close.MouseButton1Click:Connect(function()
        SettingsHolder.Visible = true

        KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), 'InOut', 'Quart', 0.5, true, nil)
    end)
    Keybinds.MouseButton1Click:Connect(function()
        KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), 'InOut', 'Quart', 0.5, true, nil)
        wait(0.5)

        SettingsHolder.Visible = false
    end)
    Add.MouseButton1Click:Connect(function()
        KeybindEditor:TweenPosition(UDim2.new(0.5, -180, 0, 260), 'InOut', 'Quart', 0.5, true, nil)
    end)
    Delete.MouseButton1Click:Connect(function()
        binds = {}

        refreshbinds()
        updatesaves()
        notify('Keybinds Updated', 'Removed all keybinds')
    end)
    Close_2.MouseButton1Click:Connect(function()
        SettingsHolder.Visible = true

        AliasesFrame:TweenPosition(UDim2.new(0, 0, 0, 175), 'InOut', 'Quart', 0.5, true, nil)
    end)
    Aliases.MouseButton1Click:Connect(function()
        AliasesFrame:TweenPosition(UDim2.new(0, 0, 0, 0), 'InOut', 'Quart', 0.5, true, nil)
        wait(0.5)

        SettingsHolder.Visible = false
    end)
    Close_3.MouseButton1Click:Connect(function()
        SettingsHolder.Visible = true

        PositionsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), 'InOut', 'Quart', 0.5, true, nil)
    end)
    Positions.MouseButton1Click:Connect(function()
        PositionsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), 'InOut', 'Quart', 0.5, true, nil)
        wait(0.5)

        SettingsHolder.Visible = false
    end)

    local _SelectionBox = Instance.new('SelectionBox')

    _SelectionBox.Name = randomString()
    _SelectionBox.Color3 = Color3.new(255, 255, 255)
    _SelectionBox.Adornee = nil
    _SelectionBox.Parent = PARENT

    local _SelectionBox2 = Instance.new('SelectionBox')

    _SelectionBox2.Name = randomString()
    _SelectionBox2.Color3 = Color3.new(0, 166, 0)
    _SelectionBox2.Adornee = nil
    _SelectionBox2.Parent = PARENT

    local u555 = nil
    local u556 = nil

    function selectPart()
        ToPartFrame:TweenPosition(UDim2.new(0.5, -180, 0, 335), 'InOut', 'Quart', 0.5, true, nil)

        local function v557()
            if _SelectionBox2.Adornee == IYMouse.Target then
                _SelectionBox.Adornee = nil
            else
                _SelectionBox.Adornee = IYMouse.Target
            end
        end

        u555 = IYMouse.Move:Connect(v557)

        local function v558()
            if IYMouse.Target ~= nil then
                _SelectionBox2.Adornee = IYMouse.Target
                Path.Text = getHierarchy(IYMouse.Target)
            end
        end

        u556 = IYMouse.Button1Down:Connect(v558)
    end

    Part.MouseButton1Click:Connect(function()
        selectPart()
    end)
    Exit_4.MouseButton1Click:Connect(function()
        ToPartFrame:TweenPosition(UDim2.new(0.5, -180, 0, -500), 'InOut', 'Quart', 0.5, true, nil)

        if u555 then
            u555:Disconnect()
        end
        if u556 then
            u556:Disconnect()
        end

        _SelectionBox.Adornee = nil
        _SelectionBox2.Adornee = nil
        Path.Text = ''
    end)
    CopyPath.MouseButton1Click:Connect(function()
        if Path.Text == '' then
            notify('Copy Path', 'Select a part to copy its path')
        else
            toClipboard(Path.Text)
        end
    end)
    ChoosePart.MouseButton1Click:Connect(function()
        if Path.Text == '' then
            notify('Part Selection', 'Select a part first')
        else
            local u559 = ''

            local function u565()
                local v560, v561, v562 = pairs(pWayPoints)
                local v563 = false

                while true do
                    local v564

                    v562, v564 = v560(v561, v562)

                    if v562 == nil then
                        break
                    end
                    if v564.NAME:lower() == _SelectionBox2.Adornee.Name:lower() .. u559 then
                        v563 = true
                    end
                end

                if v563 then
                    if isNumber(u559) then
                        u559 = u559 + 1
                    else
                        u559 = 1
                    end

                    u565()
                else
                    notify('Modified Waypoints', 'Created waypoint: ' .. _SelectionBox2.Adornee.Name .. u559)

                    pWayPoints[#pWayPoints + 1] = {
                        NAME = _SelectionBox2.Adornee.Name .. u559,
                        COORD = {
                            _SelectionBox2.Adornee,
                        },
                    }
                end
            end

            u565()
            refreshwaypoints()
        end
    end)

    cmds = {}
    customAlias = {}

    Delete_3.MouseButton1Click:Connect(function()
        customAlias = {}
        aliases = {}

        notify('Aliases Modified', 'Removed all aliases')
        updatesaves()
        refreshaliases()
    end)
    PrefixBox:GetPropertyChangedSignal('Text'):Connect(function()
        prefix = PrefixBox.Text
        Cmdbar.PlaceholderText = 'Command Bar (' .. prefix .. ')'

        updatesaves()
    end)

    function CamViewport()
        if workspace.CurrentCamera then
            return workspace.CurrentCamera.ViewportSize.X
        end
    end
    function UpdateToViewport()
        if Holder.Position.X.Offset < -CamViewport() then
            Holder:TweenPosition(UDim2.new(1, -CamViewport(), Holder.Position.Y.Scale, Holder.Position.Y.Offset), 'InOut', 'Quart', 0.04, true, nil)
            Notification:TweenPosition(UDim2.new(1, -CamViewport() + 250, Notification.Position.Y.Scale, Notification.Position.Y.Offset), 'InOut', 'Quart', 0.04, true, nil)
        end
    end

    CameraChanged = workspace.CurrentCamera:GetPropertyChangedSignal('ViewportSize'):Connect(UpdateToViewport)

    function updateCamera(_, p566)
        if p566 ~= workspace then
            CamMoved:Disconnect()
            CameraChanged:Disconnect()

            repeat
                wait()
            until workspace.CurrentCamera

            CameraChanged = workspace.CurrentCamera:GetPropertyChangedSignal('ViewportSize'):Connect(UpdateToViewport)
            CamMoved = workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)
        end
    end

    CamMoved = workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)

    function dragMain(p567, p568)
        task.spawn(function()
            local u569 = nil
            local u570 = nil
            local u571 = Vector3.new(0, 0, 0)
            local u572 = nil

            local function u583(p573)
                local v574 = p573.Position - u571
                local v575

                if u572.X.Offset + v574.X > -500 then
                    local v576 = UDim2.new(1, -500, Notification.Position.Y.Scale, Notification.Position.Y.Offset)

                    TweenService:Create(Notification, TweenInfo.new(0.2), {Position = v576}):Play()

                    v575 = -250
                else
                    local v577 = UDim2.new(1, -250, Notification.Position.Y.Scale, Notification.Position.Y.Offset)

                    TweenService:Create(Notification, TweenInfo.new(0.2), {Position = v577}):Play()

                    v575 = 250
                end
                if u572.X.Offset + v574.X > -250 or -CamViewport() > u572.X.Offset + v574.X then
                    if u572.X.Offset + v574.X <= -500 then
                        if -CamViewport() > u572.X.Offset + v574.X then
                            p568:TweenPosition(UDim2.new(1, -CamViewport(), p568.Position.Y.Scale, p568.Position.Y.Offset), 'InOut', 'Quart', 0.04, true, nil)

                            local v578 = UDim2.new(1, -CamViewport(), p568.Position.Y.Scale, p568.Position.Y.Offset)

                            TweenService:Create(p568, TweenInfo.new(0.2), {Position = v578}):Play()

                            local v579 = UDim2.new(1, -CamViewport() + 250, Notification.Position.Y.Scale, Notification.Position.Y.Offset)

                            TweenService:Create(Notification, TweenInfo.new(0.2), {Position = v579}):Play()
                        end
                    else
                        local v580 = UDim2.new(1, -250, p568.Position.Y.Scale, p568.Position.Y.Offset)

                        TweenService:Create(p568, TweenInfo.new(0.2), {Position = v580}):Play()
                    end
                else
                    local v581 = UDim2.new(u572.X.Scale, u572.X.Offset + v574.X, p568.Position.Y.Scale, p568.Position.Y.Offset)

                    TweenService:Create(p568, TweenInfo.new(0.2), {Position = v581}):Play()

                    local v582 = UDim2.new(u572.X.Scale, u572.X.Offset + v574.X + v575, Notification.Position.Y.Scale, Notification.Position.Y.Offset)

                    TweenService:Create(Notification, TweenInfo.new(0.2), {Position = v582}):Play()
                end
            end

            p567.InputBegan:Connect(function(p584)
                if p584.UserInputType == Enum.UserInputType.MouseButton1 or p584.UserInputType == Enum.UserInputType.Touch then
                    u569 = true
                    u571 = p584.Position
                    u572 = p568.Position

                    p584.Changed:Connect(function()
                        if p584.UserInputState == Enum.UserInputState.End then
                            u569 = false
                        end
                    end)
                end
            end)
            p567.InputChanged:Connect(function(p585)
                if p585.UserInputType == Enum.UserInputType.MouseMovement or p585.UserInputType == Enum.UserInputType.Touch then
                    u570 = p585
                end
            end)
            UserInputService.InputChanged:Connect(function(p586)
                if p586 == u570 and u569 then
                    u583(p586)
                end
            end)
        end)
    end

    dragMain(Title, Holder)

    function Match(p587, p588)
        local _W = p588:gsub('%W', '%%%1')
        local v590 = p587:lower():find(_W:lower())

        return v590 and true or v590
    end

    local u591 = Vector2.new(0, 0)
    local u592 = nil

    function IndexContents(p593, p594, p595, p596)
        CMDsF.CanvasPosition = Vector2.new(0, 0)

        local v597 = 0
        local v598 = CMDsF

        u592 = nil

        local v599 = p593:sub(#p593, #p593) == '\\' and '' or p593
        local v600, v601, v602 = string.gmatch(v599, '[^\\]+')
        local v603 = {}

        while true do
            v602 = v600(v601, v602)

            if v602 == nil then
                break
            end

            table.insert(v603, v602)
        end

        if #v603 > 0 then
            v599 = v603[#v603]
        end
        if v599:sub(1, 1) == '!' then
            v599 = v599:sub(2)
        end

        local v604 = next
        local v605, v606 = v598:GetChildren()

        while true do
            local v607

            v606, v607 = v604(v605, v606)

            if v606 == nil then
                break
            end
            if v607:IsA('TextButton') then
                if p594 then
                    if Match(v607.Text, v599) then
                        v597 = v597 + 1
                        v607.Visible = true

                        if u592 == nil then
                            u592 = v607.Text
                        end
                    else
                        v607.Visible = false
                    end
                else
                    v607.Visible = true

                    if u592 == nil then
                        u592 = v607.Text
                    end
                end
            end
        end

        v598.CanvasSize = UDim2.new(0, 0, 0, cmdListLayout.AbsoluteContentSize.Y)

        if p596 then
            minimizeHolder()
        elseif v597 == 0 or string.find(v599, ' ') then
            if p595 then
                if p595 then
                    cmdbarHolder()
                end
            else
                minimizeHolder()
            end
        else
            maximizeHolder()
        end
    end

    PlayerGui = Players.LocalPlayer:FindFirstChildOfClass('PlayerGui')

    local u608 = nil

    task.spawn(function()
        local v609, _ = pcall(function()
            u608 = game.WaitForChild(PlayerGui, 'Chat').Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
        end)

        if v609 then
            local function u610()
                u591 = CMDsF.CanvasPosition
            end

            local u611 = u608.Focused:Connect(u610)

            local function u612()
                if u608.Text:lower():sub(1, 1) ~= prefix then
                    minimizeHolder()

                    if u277 == true then
                        wait(0.2)
                        Settings:TweenPosition(UDim2.new(0, 0, 0, 45), 'InOut', 'Quart', 0.2, true, nil)

                        CMDsF.Visible = false
                    end
                else
                    if u277 == true then
                        wait(0.2)

                        CMDsF.Visible = true

                        Settings:TweenPosition(UDim2.new(0, 0, 0, 220), 'InOut', 'Quart', 0.2, true, nil)
                    end

                    IndexContents(PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Text:lower():sub(2), true)
                end
            end

            local u613 = u608:GetPropertyChangedSignal('Text'):Connect(u612)

            local function u615(p614)
                if not p614 or u608.Text:lower():sub(1, 1) ~= prefix then
                    IndexContents('', true)
                end

                CMDsF.CanvasPosition = u591

                minimizeHolder()
            end

            local u616 = u608.FocusLost:Connect(u615)

            PlayerGui:WaitForChild('Chat').Frame.ChatBarParentFrame.ChildAdded:Connect(function(p617)
                wait()

                if p617:FindFirstChild('BoxFrame') then
                    u608 = PlayerGui:WaitForChild('Chat').Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar

                    if u611 then
                        u611:Disconnect()
                    end

                    u611 = u608.Focused:Connect(u610)

                    if u613 then
                        u613:Disconnect()
                    end

                    u613 = u608:GetPropertyChangedSignal('Text'):Connect(u612)

                    if u616 then
                        u616:Disconnect()
                    end

                    u616 = u608.FocusLost:Connect(u615)
                end
            end)
        end
    end)

    function autoComplete(p618, p619)
        local v620 = {
            '[',
            '/',
            '(',
            ' ',
        }
        local v621 = 0

        for v622 = 1, #p618 do
            local v623 = p618:sub(v622, v622)

            if table.find(v620, v623) then
                v621 = v622

                break
            end
        end

        local v624 = p619 or Cmdbar.Text
        local v625 = string.find(v624, '\\', 1)
        local v626 = 0

        while v625 do
            local v627 = v625 + 1
            local v628 = string.find(v624, '\\', v627)

            v626 = v625
            v625 = v628
        end

        if v624:sub(v626 + 1, v626 + 1) == '!' then
            v626 = v626 + 1
        end

        Cmdbar.Text = v624:sub(1, v626) .. p618:sub(1, v621 - 1) .. ' '

        wait()

        Cmdbar.Text = Cmdbar.Text:gsub('\t', '')
        Cmdbar.CursorPosition = #Cmdbar.Text + 1
    end

    CMDs = {}
    CMDs[#CMDs + 1] = {
        NAME = 'discord / support / help',
        DESC = 'Invite to the Infinite Yield support server.',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'console',
        DESC = 'Loads old Roblox console',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'explorer / dex',
        DESC = 'Opens DEX by Moon',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'olddex / odex',
        DESC = 'Opens Old DEX by Moon',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'remotespy / rspy',
        DESC = 'Opens Simple Spy V3',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'audiologger / alogger',
        DESC = 'Opens Edges audio logger',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'serverinfo / info',
        DESC = 'Gives you info about the server',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'jobid',
        DESC = 'Copies the games JobId to your clipboard',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'notifyjobid',
        DESC = 'Notifies you the games JobId',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'rejoin / rj',
        DESC = 'Makes you rejoin the game',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'autorejoin / autorj',
        DESC = 'Automatically rejoins the server if you get kicked/disconnected',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'serverhop / shop',
        DESC = 'Teleports you to a different server',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'joinplayer [username / ID] [place ID]',
        DESC = 'Joins a specific players server',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'gameteleport / gametp [place ID]',
        DESC = 'Joins a game by ID',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'antiidle / antiafk',
        DESC = 'Prevents the game from kicking you for being idle/afk',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'datalimit [num]',
        DESC = 'Set outgoing KBPS limit',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'replicationlag / backtrack [num]',
        DESC = 'Set IncomingReplicationLag',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'creatorid / creator',
        DESC = 'Notifies you the creators ID',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'copycreatorid / copycreator',
        DESC = 'Copies the creators ID to your clipboard',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'setcreatorid / setcreator',
        DESC = 'Sets your userid to the creators ID',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'noprompts',
        DESC = 'Prevents the game from showing you purchase/premium prompts',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'showprompts',
        DESC = 'Allows the game to show purchase/premium prompts again',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'enable [inventory/playerlist/chat/reset/emotes/all]',
        DESC = 'Toggles visibility of coregui items',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'disable [inventory/playerlist/chat/reset/emotes/all]',
        DESC = 'Toggles visibility of coregui items',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'showguis',
        DESC = 'Shows any invisible GUIs',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unshowguis',
        DESC = 'Undoes showguis',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'hideguis',
        DESC = 'Hides any GUIs in PlayerGui',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unhideguis',
        DESC = 'Undoes hideguis',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'guidelete',
        DESC = 'Enables backspace to delete GUI',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unguidelete / noguidelete',
        DESC = 'Disables guidelete',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'hideiy',
        DESC = 'Hides the main IY GUI',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'showiy / unhideiy',
        DESC = 'Shows IY again',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'keepiy',
        DESC = 'Auto execute IY when you teleport through servers',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unkeepiy',
        DESC = 'Disable keepiy',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'togglekeepiy',
        DESC = 'Toggle keepiy',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'savegame / saveplace',
        DESC = 'Uses saveinstance to save the game',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clearerror',
        DESC = 'Clears the annoying box and blur when a game kicks you',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clientantikick / antikick (CLIENT)',
        DESC = 'Prevents localscripts from kicking you',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clientantiteleport / antiteleport (CLIENT)',
        DESC = 'Prevents localscripts from teleporting you',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'allowrejoin / allowrj [true/false] (CLIENT)',
        DESC = 'Changes if antiteleport allows you to rejoin or not',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'cancelteleport / canceltp',
        DESC = 'Cancels teleports in progress',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'volume / vol [0-10]',
        DESC = 'Adjusts your game volume on a scale of 0 to 10',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'antilag / boostfps / lowgraphics',
        DESC = 'Lowers game quality to boost FPS',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'record / rec',
        DESC = 'Starts roblox recorder',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'screenshot / scrnshot',
        DESC = 'Takes a screenshot',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'togglefullscreen / togglefs',
        DESC = 'Toggles fullscreen',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'notify [text]',
        DESC = 'Sends you a notification with the provided text',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'lastcommand / lastcmd',
        DESC = 'Executes the previous command used',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'exit',
        DESC = 'Kills roblox process',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'noclip',
        DESC = 'Go through objects',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unnoclip / clip',
        DESC = 'Disables noclip',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'fly [speed]',
        DESC = 'Makes you fly',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unfly',
        DESC = 'Disables fly',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'flyspeed [num]',
        DESC = 'Set fly speed (default is 20)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'vehiclefly / vfly [speed]',
        DESC = 'Makes you fly in a vehicle',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unvehiclefly / unvfly',
        DESC = 'Disables vehicle fly',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'vehicleflyspeed  / vflyspeed [num]',
        DESC = 'Set vehicle fly speed',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'cframefly / cfly [speed]',
        DESC = 'Makes you fly, bypassing some anti cheats (works on mobile)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'uncframefly / uncfly',
        DESC = 'Disables cfly',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'cframeflyspeed  / cflyspeed [num]',
        DESC = 'Sets cfly speed',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'qefly [true / false]',
        DESC = 'enables or disables the Q and E hotkeys for fly',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'vehiclenoclip / vnoclip',
        DESC = 'Turns off vehicle collision',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'vehicleclip / vclip / unvnoclip',
        DESC = 'Enables vehicle collision',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'float /  platform',
        DESC = 'Spawns a platform beneath you causing you to float',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unfloat / noplatform',
        DESC = 'Removes the platform',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'swim',
        DESC = 'Allows you to swim in the air',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unswim / noswim',
        DESC = 'Stops you from swimming everywhere',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'setwaypoint / swp [name]',
        DESC = 'Sets a waypoint at your position',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'waypointpos / wpp [name] [X Y Z]',
        DESC = 'Sets a waypoint with specified coordinates',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'waypoints',
        DESC = 'Shows a list of currently active waypoints',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'showwaypoints / showwp',
        DESC = 'Shows all currently set waypoints',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'hidewaypoints / hidewp',
        DESC = 'Hides shown waypoints',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'waypoint / wp [name]',
        DESC = 'Teleports player to a waypoint',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tweenwaypoint / twp [name]',
        DESC = 'Tweens player to a waypoint',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'walktowaypoint / wtwp [name]',
        DESC = 'Walks player to a waypoint',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'deletewaypoint / dwp [name]',
        DESC = 'Deletes a waypoint',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clearwaypoints / cwp',
        DESC = 'Clears all waypoints',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'cleargamewaypoints / cgamewp',
        DESC = 'Clears all waypoints for the game you are in',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'goto [plr]',
        DESC = 'Go to a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tweengoto / tgoto [plr]',
        DESC = 'Tween to a player (bypasses some anti cheats)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tweenspeed / tspeed [num]',
        DESC = 'Sets how fast all tween commands go (default is 1)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'vehiclegoto / vgoto [plr]',
        DESC = 'Go to a player while in a vehicle',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'loopgoto [plr] [distance] [delay]',
        DESC = 'Loop teleport to a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unloopgoto',
        DESC = 'Stops teleporting you to a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'pulsetp / ptp [plr] [seconds]',
        DESC = 'Teleports you to a player for a specified ammount of time',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clientbring / cbring [plr] (CLIENT)',
        DESC = 'Bring a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'loopbring [plr] [distance] [delay] (CLIENT)',
        DESC = 'Loop brings a player to you (useful for killing)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unloopbring [plr]',
        DESC = 'Undoes loopbring',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'freeze / fr [plr] (CLIENT)',
        DESC = 'Freezes a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'freezeanims',
        DESC = 'Freezes your animations / pauses your animations - Does not work on default animations',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unfreezeanims',
        DESC = 'Unfreezes your animations / plays your animations',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'thaw / unfr [plr] (CLIENT)',
        DESC = 'Unfreezes a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tpposition / tppos [X Y Z]',
        DESC = 'Teleports you to certain coordinates',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tweentpposition / ttppos [X Y Z]',
        DESC = 'Tween to coordinates (bypasses some anti cheats)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'offset [X Y Z]',
        DESC = 'Offsets you by certain coordinates',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tweenoffset / toffset [X Y Z]',
        DESC = 'Tween offset (bypasses some anti cheats)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'notifyposition / notifypos [plr]',
        DESC = 'Notifies you the coordinates of a character',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'copyposition / copypos [plr]',
        DESC = 'Copies the coordinates of a character to your clipboard',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'walktoposition / walktopos [X Y Z]',
        DESC = 'Makes you walk to a coordinate',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'spawnpoint / spawn [delay]',
        DESC = 'Sets a position where you will spawn',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nospawnpoint / nospawn',
        DESC = 'Removes your custom spawn point',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'flashback / diedtp',
        DESC = 'Teleports you to where you last died',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'walltp',
        DESC = 'Teleports you above/over any wall you run into',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nowalltp / unwalltp',
        DESC = 'Disables walltp',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'teleporttool / tptool',
        DESC = 'Gives you a teleport tool',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'logs',
        DESC = 'Opens the logs GUI',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'chatlogs / clogs',
        DESC = 'Log what people say or whisper',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'joinlogs / jlogs',
        DESC = 'Log when people join',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'chat / say [text]',
        DESC = 'Makes you chat a string (possible mute bypass)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'spam [text]',
        DESC = 'Makes you spam the chat',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unspam',
        DESC = 'Turns off spam',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'whisper / pm [plr] [text]',
        DESC = 'Makes you whisper a string to someone (possible mute bypass)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'pmspam [plr] [text]',
        DESC = 'Makes you spam a players whispers',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unpmspam [plr]',
        DESC = 'Turns off pm spam',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'spamspeed [num]',
        DESC = 'How quickly you spam (default is 1)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'bubblechat (CLIENT)',
        DESC = 'Enables bubble chat for your client',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unbubblechat / nobubblechat',
        DESC = 'Disables the bubblechat command',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'safechat',
        DESC = 'Enables safe chat',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nosafechat / disablesafechat',
        DESC = 'Disables safechat',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'esp',
        DESC = 'View all players and their status',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'noesp / unesp',
        DESC = 'Removes esp',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'esptransparency [number]',
        DESC = 'Changes the transparency of esp related commands',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'partesp [part name]',
        DESC = 'Highlights a part',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unpartesp / nopartesp [part name]',
        DESC = 'removes partesp',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'chams',
        DESC = 'ESP but without text in the way',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nochams / unchams',
        DESC = 'Removes chams',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'locate [plr]',
        DESC = 'View a single player and their status',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unlocate / nolocate [plr]',
        DESC = 'Removes locate',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'xray',
        DESC = 'Makes all parts in workspace transparent',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unxray / noxray',
        DESC = 'Restores transparency',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'spectate / view [plr]',
        DESC = 'View a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'viewpart / viewp [part name]',
        DESC = 'View a part',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unspectate / unview',
        DESC = 'Stops viewing player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'freecam / fc',
        DESC = 'Allows you to freely move camera around the game',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'freecampos / fcpos [X Y Z]',
        DESC = 'Moves / opens freecam in a certain position',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'freecamwaypoint / fcwp [name]',
        DESC = 'Moves / opens freecam to a waypoint',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'freecamgoto / fcgoto / fctp [plr]',
        DESC = 'Moves / opens freecam to a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unfreecam / unfc',
        DESC = 'Disables freecam',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'freecamspeed / fcspeed [num]',
        DESC = 'Adjusts freecam speed (default is 1)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'notifyfreecamposition / notifyfcpos',
        DESC = 'Noitifies you your freecam coordinates',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'copyfreecamposition / copyfcpos',
        DESC = 'Copies your freecam coordinates to your clipboard',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'gotocamera / gotocam',
        DESC = 'Teleports you to the location of your camera',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tweengotocam / tgotocam',
        DESC = 'Tweens you to the location of your camera',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'firstp',
        DESC = 'Forces camera to go into first person',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'thirdp',
        DESC = 'Allows camera to go into third person',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'noclipcam / nccam',
        DESC = 'Allows camera to go through objects like walls',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'maxzoom [num]',
        DESC = 'Maximum camera zoom',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'minzoom [num]',
        DESC = 'Minimum camera zoom',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'camdistance [num]',
        DESC = 'Changes camera distance from your player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'fov [num]',
        DESC = 'Adjusts field of view (default is 70)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'fixcam / restorecam',
        DESC = 'Fixes camera',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'enableshiftlock / enablesl',
        DESC = 'Enables the shift lock option',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'lookat [plr]',
        DESC = 'Moves your camera view to a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'btools (CLIENT)',
        DESC = 'Gives you building tools (DOES NOT REPLICATE)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'f3x (CLIENT)',
        DESC = 'Gives you F3X building tools (DOES NOT REPLICATE)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'partname / partpath',
        DESC = 'Allows you to click a part to see its path & name',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'delete [instance name] (CLIENT)',
        DESC = 'Removes any part with a certain name from the workspace (DOES NOT REPLICATE)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'deleteclass / dc [class name] (CLIENT)',
        DESC = 'Removes any part with a certain classname from the workspace (DOES NOT REPLICATE)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'lockworkspace / lockws',
        DESC = 'Locks the whole workspace',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unlockworkspace / unlockws',
        DESC = 'Unlocks the whole workspace',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'invisibleparts / invisparts (CLIENT)',
        DESC = 'Shows invisible parts',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'uninvisibleparts / uninvisparts (CLIENT)',
        DESC = 'Makes parts affected by invisparts return to normal',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'deleteinvisparts / dip (CLIENT)',
        DESC = 'Deletes invisible parts',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'gotopart [part name]',
        DESC = 'Moves your character to a part or multiple parts',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tweengotopart / tgotopart [part name]',
        DESC = 'Tweens your character to a part or multiple parts',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'gotopartclass / gpc [class name]',
        DESC = 'Moves your character to a part or multiple parts based on classname',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tweengotopartclass / tgpc [class name]',
        DESC = 'Tweens your character to a part or multiple parts based on classname',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'gotomodel [part name]',
        DESC = 'Moves your character to a model or multiple models',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tweengotomodel / tgotomodel [part name]',
        DESC = 'Tweens your character to a model or multiple models',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'gotopartdelay / gotomodeldelay [num]',
        DESC = 'Adjusts how quickly you teleport to each part (default is 0.1)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'bringpart [part name] (CLIENT)',
        DESC = 'Moves a part or multiple parts to your character',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'bringpartclass / bpc [class name] (CLIENT)',
        DESC = 'Moves a part or multiple parts to your character based on classname',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'noclickdetectorlimits / nocdlimits',
        DESC = 'Sets all click detectors MaxActivationDistance to math.huge',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'fireclickdetectors / firecd [name]',
        DESC = 'Uses all click detectors in a game or uses the optional name',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'firetouchinterests / touchinterests [name]',
        DESC = 'Uses all touchinterests in a game or uses the optional name',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'noproximitypromptlimits / nopplimits',
        DESC = 'Sets all proximity prompts MaxActivationDistance to math.huge',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'fireproximityprompts / firepp [name]',
        DESC = 'Uses all proximity prompts in a game or uses the optional name',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'instantproximityprompts / instantpp',
        DESC = 'Disable the cooldown for proximity prompts',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'uninstantproximityprompts / uninstantpp',
        DESC = 'Undo the cooldown removal',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tpunanchored / tpua [plr]',
        DESC = 'Teleports unanchored parts to a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'animsunanchored / freezeua',
        DESC = 'Freezes unanchored parts',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'thawunanchored / thawua / unfreezeua',
        DESC = 'Thaws unanchored parts',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'removeterrain / rterrain / noterrain',
        DESC = 'Removes all terrain',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clearnilinstances / nonilinstances / cni',
        DESC = 'Removes nil instances',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'destroyheight / dh [num]',
        DESC = 'Sets FallenPartsDestroyHeight',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'fullbright / fb (CLIENT)',
        DESC = 'Makes the map brighter / more visible',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'loopfullbright / loopfb (CLIENT)',
        DESC = 'Makes the map brighter / more visible but looped',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unloopfullbright / unloopfb',
        DESC = 'Unloops fullbright',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'ambient [num] [num] [num] (CLIENT)',
        DESC = 'Changes ambient',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'day (CLIENT)',
        DESC = 'Changes the time to day for the client',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'night (CLIENT)',
        DESC = 'Changes the time to night for the client',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nofog (CLIENT)',
        DESC = 'Removes fog',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'brightness [num] (CLIENT)',
        DESC = 'Changes the brightness lighting property',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'globalshadows / gshadows (CLIENT)',
        DESC = 'Enables global shadows',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'noglobalshadows / nogshadows (CLIENT)',
        DESC = 'Disables global shadows',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'restorelighting / rlighting',
        DESC = 'Restores Lighting properties',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'light [radius] [brightness] (CLIENT)',
        DESC = 'Gives your player dynamic light',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nolight / unlight',
        DESC = 'Removes dynamic light from your player',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'inspect / examine [plr]',
        DESC = 'Opens InspectMenu for a certain player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'age [plr]',
        DESC = 'Tells you the age of a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'chatage [plr]',
        DESC = 'Chats the age of a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'joindate / jd [plr]',
        DESC = 'Tells you the date the player joined Roblox',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'chatjoindate / cjd [plr]',
        DESC = 'Chats the date the player joined Roblox',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'copyname / copyuser [plr]',
        DESC = 'Copies a players full username to your clipboard',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'userid / id [plr]',
        DESC = 'Notifies a players user ID',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'copyuserid / copyid [plr]',
        DESC = 'Copies a players user ID to your clipboard',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'appearanceid / aid [plr]',
        DESC = 'Notifies a players appearance ID',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'copyappearanceid / caid [plr]',
        DESC = 'Copies a players appearance ID to your clipboard',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'bang [plr] [speed]',
        DESC = 'owo',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unbang',
        DESC = 'uwu',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'carpet [plr]',
        DESC = 'Be someones carpet',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'uncarpet',
        DESC = 'Undoes carpet',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'friend [plr]',
        DESC = 'Sends a friend request to certain players',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unfriend [plr]',
        DESC = 'Unfriends certain players',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'headsit [plr]',
        DESC = 'Sit on a players head',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'walkto / follow [plr]',
        DESC = 'Follow a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'pathfindwalkto / pathfindfollow [plr]',
        DESC = 'Follow a player using pathfinding',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'pathfindwalktowaypoint / pathfindwalktowp [waypoint]',
        DESC = 'Walk to a waypoint using pathfinding',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unwalkto / unfollow',
        DESC = 'Stops following a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'stareat / stare [plr]',
        DESC = 'Stare / look at a player',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unstareat / unstare [plr]',
        DESC = 'Disables stareat',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'rolewatch [group id] [role name]',
        DESC = 'Notify if someone from a watched group joins the server',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'rolewatchstop / unrolewatch',
        DESC = 'Disable Rolewatch',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'rolewatchleave',
        DESC = 'Toggle if you should leave the game if someone from a watched group joins the server',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'attach [plr] (TOOL)',
        DESC = 'Attaches you to a player (YOU NEED A TOOL)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'kill [plr] (TOOL)',
        DESC = 'Kills a player (YOU NEED A TOOL)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'fastkill [plr] (TOOL)',
        DESC = 'Kills a player (less reliable) (YOU NEED A TOOL)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'handlekill / hkill [plr] (TOOL)',
        DESC = 'Kills a player using tool damage (YOU NEED A TOOL)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'bring [plr] (TOOL)',
        DESC = 'Brings a player (YOU NEED A TOOL)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'fastbring [plr] (TOOL)',
        DESC = 'Brings a player (less reliable) (YOU NEED A TOOL)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'teleport / tp [plr] [plr] (TOOL)',
        DESC = 'Teleports a player to another player (YOU NEED A TOOL)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'fastteleport / fasttp [plr] [plr] (TOOL)',
        DESC = 'Teleports a player to another player (less reliable) (YOU NEED A TOOL)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'fling',
        DESC = 'Flings anyone you touch',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unfling',
        DESC = 'Disables the fling command',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'invisfling',
        DESC = 'Enables invisible fling',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'loopoof',
        DESC = 'Loops everyones character sounds (everyone can hear)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unloopoof',
        DESC = 'Stops the oof chaos',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'muteboombox [plr]',
        DESC = 'Mutes someones boombox',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unmuteboombox [plr]',
        DESC = 'Unmutes someones boombox',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'hitbox [plr] [size]',
        DESC = 'Expands the hitbox for players HumanoidRootPart (default is 1)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'headsize [plr] [size]',
        DESC = 'Expands the head size for players Head (default is 1)',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'reset',
        DESC = 'Resets your character normally',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'respawn',
        DESC = 'Respawns you',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'refresh / re',
        DESC = 'Respawns and brings you back to the same position',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'god',
        DESC = 'Makes your character difficult to kill in most games',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'invisible / invis',
        DESC = 'Makes you invisible to other players',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'visible / vis',
        DESC = 'Makes you visible to other players',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'toolinvisible / toolinvis / tinvis',
        DESC = 'Makes you invisible to other players and able to use tools',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'speed / ws / walkspeed [num]',
        DESC = 'Change your walkspeed',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'spoofspeed / spoofws [num]',
        DESC = 'Spoofs your WalkSpeed on the Client',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'loopspeed / loopws [num]',
        DESC = 'Loops your walkspeed',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unloopspeed / unloopws',
        DESC = 'Turns off loopspeed',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'hipheight / hheight [num]',
        DESC = 'Adjusts hip height',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'jumppower / jpower / jp [num]',
        DESC = 'Change a players jump height',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'spoofjumppower / spoofjp [num]',
        DESC = 'Spoofs your JumpPower on the Client',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'loopjumppower / loopjp [num]',
        DESC = 'Loops your jump height',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unloopjumppower / unloopjp',
        DESC = 'Turns off loopjumppower',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'maxslopeangle / msa [num]',
        DESC = 'Adjusts MaxSlopeAngle',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'gravity / grav [num] (CLIENT)',
        DESC = 'Change your gravity',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'sit',
        DESC = 'Makes your character sit',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'lay / laydown',
        DESC = 'Makes your character lay down',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'sitwalk',
        DESC = 'Makes your character sit while still being able to walk',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nosit',
        DESC = 'Prevents your character from sitting',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unnosit',
        DESC = 'Disables nosit',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'jump',
        DESC = 'Makes your character jump',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'infinitejump / infjump',
        DESC = 'Allows you to jump before hitting the ground',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'uninfinitejump / uninfjump',
        DESC = 'Disables infjump',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'flyjump',
        DESC = 'Allows you to hold space to fly up',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unflyjump',
        DESC = 'Disables flyjump',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'autojump / ajump',
        DESC = 'Automatically jumps when you run into an object',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unautojump / unajump',
        DESC = 'Disables autojump',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'edgejump / ejump',
        DESC = 'Automatically jumps when you get to the edge of an object',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unedgejump / unejump',
        DESC = 'Disables edgejump',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'platformstand / stun',
        DESC = 'Enables PlatformStand',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unplatformstand / unstun',
        DESC = 'Disables PlatformStand',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'norotate / noautorotate',
        DESC = 'Disables AutoRotate',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unnorotate / autorotate',
        DESC = 'Enables AutoRotate',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'enablestate [StateType]',
        DESC = 'Enables a humanoid state type',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'disablestate [StateType]',
        DESC = 'Disables a humanoid state type',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'team [team name] (CLIENT)',
        DESC = 'Changes your team. Sometimes fools localscripts.',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nobillboardgui / nobgui / noname',
        DESC = 'Removes billboard and surface guis from your players (i.e. name guis at cafes)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'loopnobgui / loopnoname',
        DESC = 'Loop removes billboard and surface guis from your players (i.e. name guis at cafes)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unloopnobgui / unloopnoname',
        DESC = 'Disables loopnobgui',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nohead / headless',
        DESC = 'Removes your head (uses simulation radius)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'noarms',
        DESC = 'Removes your arms',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nolegs',
        DESC = 'Removes your legs',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nolimbs',
        DESC = 'Removes your limbs',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'naked (CLIENT)',
        DESC = 'Removes your clothing',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'noface / removeface',
        DESC = 'Removes your face',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'blockhead',
        DESC = 'Turns your head into a block',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'blockhats',
        DESC = 'Turns your hats into blocks',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'blocktool',
        DESC = 'Turns the currently selected tool into a block',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'creeper',
        DESC = 'Makes you look like a creeper',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'drophats',
        DESC = 'Drops your hats',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nohats / deletehats / rhats',
        DESC = 'Deletes your hats',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'hatspin / spinhats',
        DESC = 'Spins your characters accessories',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unhatspin / unspinhats',
        DESC = 'Undoes spinhats',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clearhats / cleanhats',
        DESC = 'Clears hats in the workspace',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'chardelete / cd [instance name]',
        DESC = 'Removes any part with a certain name from your character',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'chardeleteclass / cdc [class name]',
        DESC = 'Removes any part with a certain classname from your character',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'deletevelocity / dv / removeforces',
        DESC = 'Removes any velocity / force instances in your character',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'weaken [num]',
        DESC = 'Makes your character less dense',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unweaken',
        DESC = 'Sets your characters CustomPhysicalProperties to default',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'strengthen [num]',
        DESC = 'Makes your character more dense (CustomPhysicalProperties)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unstrengthen',
        DESC = 'Sets your characters CustomPhysicalProperties to default',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'breakvelocity',
        DESC = 'Sets your characters velocity to 0',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'spin [speed]',
        DESC = 'Spins your character',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unspin',
        DESC = 'Disables spin',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'vr',
        DESC = 'Loads CLOVR by Abacaxl',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'split',
        DESC = 'Splits your character in half',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'nilchar',
        DESC = 'Sets your characters parent to nil',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unnilchar / nonilchar',
        DESC = 'Sets your characters parent to workspace',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'noroot / removeroot / rroot',
        DESC = 'Removes your characters HumanoidRootPart',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'replaceroot',
        DESC = 'Replaces your characters HumanoidRootPart',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clearcharappearance / clearchar / clrchar',
        DESC = 'Removes all accessory, shirt, pants, charactermesh, and bodycolors',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'animation / anim [ID] [speed]',
        DESC = 'Makes your character perform an animation (must be by roblox to replicate)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'dance',
        DESC = 'Makes you  d a n c e',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'undance',
        DESC = 'Stops dance animations',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'spasm',
        DESC = 'Makes you  c r a z y',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unspasm',
        DESC = 'Stops spasm',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'headthrow',
        DESC = 'Simply makes you throw your head',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'noanim',
        DESC = 'Disables your animations',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'reanim',
        DESC = 'Restores your animations',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'animspeed [num]',
        DESC = 'Changes the speed of your current animation',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'copyanimation / copyanim / copyemote [plr]',
        DESC = 'Copies someone elses animation',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'loopanimation / loopanim',
        DESC = 'Loops your current animation',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'stopanimations / stopanims',
        DESC = 'Stops running animations',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'refreshanimations / refreshanims',
        DESC = 'Refreshes animations',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'allowcustomanim / allowcustomanimations',
        DESC = 'Lets you use custom animation packs instead',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unallowcustomanim / unallowcustomanimations',
        DESC = "Doesn't let you use custom animation packs instead",
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'autoclick [click delay] [release delay]',
        DESC = 'Automatically clicks your mouse with a set delay',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unautoclick / noautoclick',
        DESC = 'Turns off autoclick',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'autokeypress [key] [down delay] [up delay]',
        DESC = 'Automatically presses a key with a set delay',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unautokeypress',
        DESC = 'Stops autokeypress',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'hovername',
        DESC = 'Shows a players username when your mouse is hovered over them',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unhovername / nohovername',
        DESC = 'Turns off hovername',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'mousesensitivity / ms [0-10]',
        DESC = 'Sets your mouse sensitivity (affects first person and right click drag) (default is 1)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clickdelete',
        DESC = 'Go to settings>Keybinds>Add for clicktp',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clickteleport',
        DESC = 'Go to settings>Keybinds>Add for click tp',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tools',
        DESC = 'Copies tools from ReplicatedStorage and Lighting',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'notools / removetools / deletetools',
        DESC = 'Removes tools from character and backpack',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'deleteselectedtool / dst',
        DESC = 'Removes any currently selected tools',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'grabtools',
        DESC = 'Automatically get tools that are dropped',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'ungrabtools / nograbtools',
        DESC = 'Disables grabtools',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'copytools [plr] (CLIENT)',
        DESC = 'Copies a players tools',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'dupetools / clonetools [num]',
        DESC = 'Duplicates your inventory tools a set ammount of times',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'givetool / givetools',
        DESC = "Gives all the tools you're holding to [plr] using the attach method.",
    }
    CMDs[#CMDs + 1] = {
        NAME = 'droptools',
        DESC = 'Drops your tools',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'droppabletools',
        DESC = 'Makes your tools droppable',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'equiptools',
        DESC = 'Equips every tool in your inventory at once',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unequiptools',
        DESC = 'Unequips every tool you are currently holding at once',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'removespecifictool [name]',
        DESC = 'Automatically remove a specific tool from your inventory',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unremovespecifictool [name]',
        DESC = 'Stops removing a specific tool from your inventory',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clearremovespecifictool',
        DESC = 'Stop removing all specific tools from your inventory',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'reach [num]',
        DESC = 'Increases the hitbox of your held tool',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unreach / noreach',
        DESC = 'Turns off reach',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'grippos [X Y Z]',
        DESC = 'Changes your current tools grip position',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'usetools [ammount] [delay]',
        DESC = 'Activates all tools in your backpack at the same time',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'addalias [cmd] [alias]',
        DESC = 'Adds an alias to a command',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'removealias [alias]',
        DESC = 'Removes a custom alias',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'clraliases',
        DESC = 'Removes all custom aliases',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'addplugin / plugin [name]',
        DESC = 'Add a plugin via command',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'removeplugin / deleteplugin [name]',
        DESC = 'Remove a plugin via command',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'reloadplugin [name]',
        DESC = 'Reloads a plugin',
    }
    CMDs[#CMDs + 1] = {
        NAME = '',
        DESC = '',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'breakloops / break (cmd loops)',
        DESC = 'Stops any cmd loops (;100^1^cmd)',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'removecmd / deletecmd',
        DESC = 'Removes a command until the admin is reloaded',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'tpwalk / teleportwalk [num]',
        DESC = 'Teleports you to your move direction',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'untpwalk / unteleportwalk',
        DESC = 'Undoes tpwalk / teleportwalk',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'notifyping / ping',
        DESC = 'Notify yourself your ping',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'trip',
        DESC = 'Makes your character fall over',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'norender',
        DESC = 'Disable 3d Rendering to decrease the amount of CPU the client uses',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'render',
        DESC = 'Enable 3d Rendering',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'use2022materials / 2022materials',
        DESC = 'Enables 2022 material textures',
    }
    CMDs[#CMDs + 1] = {
        NAME = 'unuse2022materials / un2022materials',
        DESC = 'Disables 2022 material textures',
    }

    wait()

    local u629 = u592
    local u630 = u591

    for v631 = 1, #CMDs do
        local v632 = v631
        local u633 = Example:Clone()

        u633.Parent = CMDsF
        u633.Visible = false
        u633.Text = CMDs[v632].NAME
        u633.Name = 'CMD'

        table.insert(text1, u633)

        if CMDs[v632].DESC ~= '' then
            u633:SetAttribute('Title', CMDs[v632].NAME)
            u633:SetAttribute('Desc', CMDs[v632].DESC)
            u633.MouseButton1Down:Connect(function()
                if u633.Visible and u633.TextTransparency == 0 then
                    local _Text3 = Cmdbar.Text

                    Cmdbar:CaptureFocus()
                    autoComplete(u633.Text, _Text3)
                    maximizeHolder()
                end
            end)
        end
    end

    IndexContents('', true)

    function checkTT()
        local v635 = COREGUI:GetGuiObjectsAtPosition(IYMouse.X, IYMouse.Y)
        local v636, v637, v638 = pairs(v635)
        local v639 = nil

        while true do
            local v640

            v638, v640 = v636(v637, v638)

            if v638 == nil then
                break
            end
            if v640.Parent == CMDsF then
                v639 = v640
            end
        end

        if v639 == nil or v639:GetAttribute('Title') == nil then
            Tooltip.Visible = false
        else
            local _X3 = IYMouse.X
            local _Y = IYMouse.Y
            local v643

            if IYMouse.X <= 200 then
                v643 = _X3 + 21
            else
                v643 = _X3 - 201
            end
            if IYMouse.Y > IYMouse.ViewSizeY - 96 then
                _Y = _Y - 97
            end

            Tooltip.Position = UDim2.new(0, v643, 0, _Y)
            Description.Text = v639:GetAttribute('Desc')

            if v639:GetAttribute('Title') == nil then
                Title_3.Text = ''
            else
                Title_3.Text = v639:GetAttribute('Title')
            end

            Tooltip.Visible = true
        end
    end
    function FindInTable(p644, p645)
        if p644 == nil then
            return false
        end

        local v646, v647, v648 = pairs(p644)

        while true do
            local v649

            v648, v649 = v646(v647, v648)

            if v648 == nil then
                break
            end
            if v649 == p645 then
                return true
            end
        end

        return false
    end
    function GetInTable(p650, p651)
        for v652 = 1, #p650 do
            if p650[v652] == p651 then
                return v652
            end
        end

        return false
    end
    function respawn(p653)
        if invisRunning then
            TurnVisible()
        end

        local _Character = p653.Character

        if _Character:FindFirstChildOfClass('Humanoid') then
            _Character:FindFirstChildOfClass('Humanoid'):ChangeState(15)
        end

        _Character:ClearAllChildren()

        local _Model = Instance.new('Model')

        _Model.Parent = workspace
        p653.Character = _Model

        wait()

        p653.Character = _Character

        _Model:Destroy()
    end

    local u656 = false

    function refresh(p657)
        u656 = true

        local _Character2 = p657.Character

        if _Character2 then
            _Character2 = p657.Character:FindFirstChildOfClass('Humanoid', true)
        end

        local u659 = _Character2 and _Character2.RootPart

        if u659 then
            u659 = _Character2.RootPart.CFrame
        end

        local _CFrame = workspace.CurrentCamera.CFrame

        respawn(p657)
        task.spawn(function()
            local _RootPart = p657.CharacterAdded:Wait():WaitForChild('Humanoid').RootPart
            local _CurrentCamera = workspace.CurrentCamera
            local v663 = u659
            local v664 = wait()

            if v664 then
                v664 = _CFrame
            end

            _CurrentCamera.CFrame = v664
            _RootPart.CFrame = v663
            u656 = false
        end)
    end

    local u665 = nil

    function onDied()
        task.spawn(function()
            if pcall(function()
                Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
            end) and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
                    if getRoot(Players.LocalPlayer.Character) then
                        u665 = getRoot(Players.LocalPlayer.Character).CFrame
                    end
                end)
            else
                wait(2)
                onDied()
            end
        end)
    end

    Clip = true
    spDelay = 0.1

    Players.LocalPlayer.CharacterAdded:Connect(function()
        NOFLY()

        Floating = false

        if not Clip then
            execCmd('clip')
        end

        repeat
            wait()
        until getRoot(Players.LocalPlayer.Character)

        pcall(function()
            if spawnpoint and (not u656 and spawnpos ~= nil) then
                wait(spDelay)

                getRoot(Players.LocalPlayer.Character).CFrame = spawnpos
            end
        end)
        onDied()
    end)
    onDied()

    function getstring(p666)
        local v667 = p666 - 1
        local v668, v669, v670 = pairs(cargs)
        local v671 = ''

        while true do
            local v672

            v670, v672 = v668(v669, v670)

            if v670 == nil then
                break
            end
            if v667 < v670 then
                if v671 == '' then
                    v671 = v671 .. v672
                else
                    v671 = v671 .. ' ' .. v672
                end
            end
        end

        return v671
    end
    function findCmd(p673)
        local v674, v675, v676 = pairs(cmds)

        while true do
            local v677

            v676, v677 = v674(v675, v676)

            if v676 == nil then
                break
            end
            if v677.NAME:lower() == p673:lower() or FindInTable(v677.ALIAS, p673:lower()) then
                return v677
            end
        end

        return customAlias[p673:lower()]
    end
    function splitString(p678, p679)
        local v680 = p679 == nil and ',' or p679
        local v681, v682, v683 = string.gmatch(p678, '[^' .. v680 .. ']+')
        local v684 = {}

        while true do
            v683 = v681(v682, v683)

            if v683 == nil then
                break
            end

            table.insert(v684, v683)
        end

        return v684
    end

    cmdHistory = {}

    local u685 = {}
    local u686 = 0
    local u687 = ' '
    local u688 = 0

    function execCmd(p689, p690, p691)
        local _s = p689:gsub('%s+$', '')

        task.spawn(function()
            local v693 = _s

            _s = string.gsub(_s, '\\\\', '%%BackSlash%%')

            local v694 = splitString(_s, '\\')
            local v695, v696, v697 = pairs(v694)

            while true do
                local v698

                v697, v698 = v695(v696, v697)

                if v697 == nil then
                    return
                end

                local v699 = string.gsub(v698, '%%BackSlash%%', '\\')
                local _, v700, v701 = v699:find('^(%d+)%^')
                local v702 = 0
                local v703 = false

                if v701 then
                    v699 = v699:sub(v700 + 1)

                    local _, v704, v705 = v699:find('^([%d%.]+)%^')

                    if v705 then
                        v699 = v699:sub(v704 + 1)
                        v702 = tonumber(v705) or 0
                    end
                else
                    local _inf, v707 = v699:find('^inf%^')

                    if _inf then
                        v703 = true
                        v699 = v699:sub(v707 + 1)

                        local _, v708, v709 = v699:find('^([%d%.]+)%^')

                        if v709 then
                            v699 = v699:sub(v708 + 1)

                            local v710 = tonumber(v709) or 1

                            v702 = 0 < v710 and v710 and v710 or 1
                        else
                            v702 = 1
                        end
                    end
                end

                local v711 = tonumber(v701 or 1)

                if v699:sub(1, 1) == '!' then
                    local v712 = splitString(v699:sub(2), u687)

                    if v712[1] and u685[v712[1] ] then
                        v699 = u685[v712[1] ]
                    end
                end

                local u713 = splitString(v699, u687)
                local v714 = u713[1]
                local u715 = findCmd(v714)

                if u715 then
                    table.remove(u713, 1)

                    cargs = u713

                    if not p690 then
                        p690 = Players.LocalPlayer
                    end
                    if p691 then
                        if p690 == Players.LocalPlayer and (cmdHistory[1] ~= v693 and (v693:sub(1, 11) ~= 'lastcommand' and v693:sub(1, 7) ~= 'lastcmd')) then
                            table.insert(cmdHistory, 1, v693)
                        end
                        if #cmdHistory > 30 then
                            table.remove(cmdHistory)
                        end

                        u685[v714] = v699
                    end

                    local v716 = tick()

                    if v703 then
                        while u688 < v716 do
                            local v717, v718 = pcall(u715.FUNC, u713, p690)

                            if not v717 and _G.IY_DEBUG then
                                warn('Command Error:', v714, v718)
                            end

                            wait(v702)
                        end
                    else
                        for _ = 1, v711 do
                            if v716 < u688 then
                                break
                            end

                            local v719, v720 = pcall(function()
                                u715.FUNC(u713, p690)
                            end)

                            if not v719 and _G.IY_DEBUG then
                                warn('Command Error:', v714, v720)
                            end
                            if v702 ~= 0 then
                                wait(v702)
                            end
                        end
                    end
                end
            end
        end)
    end
    function addcmd(p721, p722, p723, p724)
        cmds[#cmds + 1] = {
            NAME = p721,
            ALIAS = p722 or {},
            FUNC = p723,
            PLUGIN = p724,
        }
    end
    function removecmd(p725)
        if p725 ~= ' ' then
            for v726 = #cmds, 1, -1 do
                if cmds[v726].NAME == p725 or FindInTable(cmds[v726].ALIAS, p725) then
                    table.remove(cmds, v726)

                    local v727, v728, v729 = pairs(CMDsF:GetChildren())

                    while true do
                        local u730

                        v729, u730 = v727(v728, v729)

                        if v729 == nil then
                            break
                        end
                        if string.find(u730.Text, '^' .. p725 .. '$') or (string.find(u730.Text, '^' .. p725 .. ' ') or (string.find(u730.Text, ' ' .. p725 .. '$') or string.find(u730.Text, ' ' .. p725 .. ' '))) then
                            u730.TextTransparency = 0.7

                            u730.MouseButton1Click:Connect(function()
                                notify(u730.Text, 'Command has been disabled by you or a plugin')
                            end)
                        end
                    end
                end
            end
        end
    end
    function addbind(p731, p732, p733, p734)
        if p734 then
            binds[#binds + 1] = {
                COMMAND = p731,
                KEY = p732,
                ISKEYUP = p733,
                TOGGLE = p734,
            }
        else
            binds[#binds + 1] = {
                COMMAND = p731,
                KEY = p732,
                ISKEYUP = p733,
            }
        end
    end
    function addcmdtext(p735, p736, p737)
        local u738 = Example:Clone()
        local v739 = tostring(p735)
        local v740 = tostring(p737)

        u738.Parent = CMDsF
        u738.Visible = false
        u738.Text = p735
        u738.Name = 'PLUGIN_' .. p736

        table.insert(text1, u738)

        if p737 and p737 ~= '' then
            u738:SetAttribute('Title', v739)
            u738:SetAttribute('Desc', v740)
            u738.MouseButton1Down:Connect(function()
                if u738.Visible and u738.TextTransparency == 0 then
                    Cmdbar:CaptureFocus()
                    autoComplete(u738.Text)
                    maximizeHolder()
                end
            end)
        end
    end

    local function u743(p741)
        local v742 = workspace.CurrentCamera:WorldToScreenPoint(p741.Position)

        return Vector2.new(v742.X, v742.Y)
    end
    local function u744()
        return Vector2.new(IYMouse.X, IYMouse.Y)
    end
    local function u756()
        local _huge = math.huge
        local v746, v747, v748 = pairs(Players:GetPlayers())
        local v749 = nil

        while true do
            local v750

            v748, v750 = v746(v747, v748)

            if v748 == nil then
                break
            end
            if v750 ~= Players.LocalPlayer and v750.Character and v750.Character:FindFirstChildOfClass('Humanoid') then
                local v751, v752, v753 = pairs(v750.Character:GetChildren())

                while true do
                    local v754

                    v753, v754 = v751(v752, v753)

                    if v753 == nil then
                        break
                    end
                    if string.find(v754.Name, 'Torso') then
                        local _Magnitude = (u743(v754) - u744()).Magnitude

                        if _Magnitude < _huge then
                            v749 = v750
                            _huge = _Magnitude
                        end
                    end
                end
            end
        end

        return v749
    end

    SpecialPlayerCases = {
        all = function(_)
            return Players:GetPlayers()
        end,
        others = function(p757)
            local v758, v759, v760 = pairs(Players:GetPlayers())
            local v761 = {}

            while true do
                local v762

                v760, v762 = v758(v759, v760)

                if v760 == nil then
                    break
                end
                if v762 ~= p757 then
                    table.insert(v761, v762)
                end
            end

            return v761
        end,
        me = function(p763)
            return {p763}
        end,
        ['#(%d+)'] = function(_, p764, p765)
            local v766 = tonumber(p764[1])
            local v767 = {
                unpack(p765),
            }
            local v768 = {}

            for _ = 1, v766 do
                if #v767 == 0 then
                    break
                end

                local v769 = math.random(1, #v767)

                table.insert(v768, v767[v769])
                table.remove(v767, v769)
            end

            return v768
        end,
        random = function(_, _, _)
            local v770 = Players:GetPlayers()
            local _LocalPlayer = Players.LocalPlayer

            table.remove(v770, table.find(v770, _LocalPlayer))

            return {
                v770[math.random(1, #v770)],
            }
        end,
        ['%%(.+)'] = function(_, p772)
            local v773 = p772[1]
            local v774, v775, v776 = pairs(Players:GetPlayers())
            local v777 = {}

            while true do
                local v778

                v776, v778 = v774(v775, v776)

                if v776 == nil then
                    break
                end
                if v778.Team and string.sub(string.lower(v778.Team.Name), 1, #v773) == string.lower(v773) then
                    table.insert(v777, v778)
                end
            end

            return v777
        end,
        allies = function(p779)
            local _Team = p779.Team
            local v781, v782, v783 = pairs(Players:GetPlayers())
            local v784 = {}

            while true do
                local v785

                v783, v785 = v781(v782, v783)

                if v783 == nil then
                    break
                end
                if v785.Team == _Team then
                    table.insert(v784, v785)
                end
            end

            return v784
        end,
        enemies = function(p786)
            local _Team2 = p786.Team
            local v788, v789, v790 = pairs(Players:GetPlayers())
            local v791 = {}

            while true do
                local v792

                v790, v792 = v788(v789, v790)

                if v790 == nil then
                    break
                end
                if v792.Team ~= _Team2 then
                    table.insert(v791, v792)
                end
            end

            return v791
        end,
        team = function(p793)
            local _Team3 = p793.Team
            local v795, v796, v797 = pairs(Players:GetPlayers())
            local v798 = {}

            while true do
                local v799

                v797, v799 = v795(v796, v797)

                if v797 == nil then
                    break
                end
                if v799.Team == _Team3 then
                    table.insert(v798, v799)
                end
            end

            return v798
        end,
        nonteam = function(p800)
            local _Team4 = p800.Team
            local v802, v803, v804 = pairs(Players:GetPlayers())
            local v805 = {}

            while true do
                local v806

                v804, v806 = v802(v803, v804)

                if v804 == nil then
                    break
                end
                if v806.Team ~= _Team4 then
                    table.insert(v805, v806)
                end
            end

            return v805
        end,
        friends = function(p807, _)
            local v808, v809, v810 = pairs(Players:GetPlayers())
            local v811 = {}

            while true do
                local v812

                v810, v812 = v808(v809, v810)

                if v810 == nil then
                    break
                end
                if v812:IsFriendsWith(p807.UserId) and v812 ~= p807 then
                    table.insert(v811, v812)
                end
            end

            return v811
        end,
        nonfriends = function(p813, _)
            local v814, v815, v816 = pairs(Players:GetPlayers())
            local v817 = {}

            while true do
                local v818

                v816, v818 = v814(v815, v816)

                if v816 == nil then
                    break
                end
                if not v818:IsFriendsWith(p813.UserId) and v818 ~= p813 then
                    table.insert(v817, v818)
                end
            end

            return v817
        end,
        guests = function(_, _)
            local v819, v820, v821 = pairs(Players:GetPlayers())
            local v822 = {}

            while true do
                local v823

                v821, v823 = v819(v820, v821)

                if v821 == nil then
                    break
                end
                if v823.Guest then
                    table.insert(v822, v823)
                end
            end

            return v822
        end,
        bacons = function(_, _)
            local v824, v825, v826 = pairs(Players:GetPlayers())
            local v827 = {}

            while true do
                local v828

                v826, v828 = v824(v825, v826)

                if v826 == nil then
                    break
                end
                if v828.Character:FindFirstChild('Pal Hair') or v828.Character:FindFirstChild('Kate Hair') then
                    table.insert(v827, v828)
                end
            end

            return v827
        end,
        ['age(%d+)'] = function(_, p829)
            local v830 = {}
            local v831 = tonumber(p829[1])

            if not v831 ~= nil then
                local v832, v833, v834 = pairs(Players:GetPlayers())

                while true do
                    local v835

                    v834, v835 = v832(v833, v834)

                    if v834 == nil then
                        break
                    end
                    if v835.AccountAge <= v831 then
                        table.insert(v830, v835)
                    end
                end

                return v830
            end
        end,
        nearest = function(p836, _, p837)
            local _Character3 = p836.Character

            if _Character3 and getRoot(_Character3) then
                local _huge2 = math.huge
                local v840, v841, v842 = pairs(p837)
                local v843 = nil

                while true do
                    local v844

                    v842, v844 = v840(v841, v842)

                    if v842 == nil then
                        break
                    end
                    if v844 ~= p836 and v844.Character then
                        local v845 = v844:DistanceFromCharacter(getRoot(_Character3).Position)

                        if v845 < _huge2 then
                            _huge2 = v845
                            v843 = {v844}
                        end
                    end
                end

                return v843
            end
        end,
        farthest = function(p846, _, p847)
            local _Character4 = p846.Character

            if _Character4 and getRoot(_Character4) then
                local v849, v850, v851 = pairs(p847)
                local v852 = 0
                local v853 = nil

                while true do
                    local v854

                    v851, v854 = v849(v850, v851)

                    if v851 == nil then
                        break
                    end
                    if v854 ~= p846 and v854.Character then
                        local v855 = v854:DistanceFromCharacter(getRoot(_Character4).Position)

                        if v852 < v855 then
                            v852 = v855
                            v853 = {v854}
                        end
                    end
                end

                return v853
            end
        end,
        ['group(%d+)'] = function(_, p856)
            local v857 = tonumber(p856[1])
            local v858, v859, v860 = pairs(Players:GetPlayers())
            local v861 = {}

            while true do
                local v862

                v860, v862 = v858(v859, v860)

                if v860 == nil then
                    break
                end
                if v862:IsInGroup(v857) then
                    table.insert(v861, v862)
                end
            end

            return v861
        end,
        alive = function(_, _)
            local v863, v864, v865 = pairs(Players:GetPlayers())
            local v866 = {}

            while true do
                local v867

                v865, v867 = v863(v864, v865)

                if v865 == nil then
                    break
                end
                if v867.Character and (v867.Character:FindFirstChildOfClass('Humanoid') and v867.Character:FindFirstChildOfClass('Humanoid').Health > 0) then
                    table.insert(v866, v867)
                end
            end

            return v866
        end,
        dead = function(_, _)
            local v868, v869, v870 = pairs(Players:GetPlayers())
            local v871 = {}

            while true do
                local v872

                v870, v872 = v868(v869, v870)

                if v870 == nil then
                    break
                end
                if not v872.Character or (not v872.Character:FindFirstChildOfClass('Humanoid') or v872.Character:FindFirstChildOfClass('Humanoid').Health <= 0) then
                    table.insert(v871, v872)
                end
            end

            return v871
        end,
        ['rad(%d+)'] = function(p873, p874)
            local v875 = {}
            local v876 = tonumber(p874[1])
            local _Character5 = p873.Character

            if _Character5 and getRoot(_Character5) then
                local v878, v879, v880 = pairs(Players:GetPlayers())

                while true do
                    local v881

                    v880, v881 = v878(v879, v880)

                    if v880 == nil then
                        break
                    end
                    if v881.Character and (getRoot(v881.Character) and (getRoot(v881.Character).Position - getRoot(_Character5).Position).magnitude <= v876) then
                        table.insert(v875, v881)
                    end
                end

                return v875
            end
        end,
        cursor = function(_)
            local v882 = {}
            local v883 = u756()

            if v883 ~= nil then
                table.insert(v882, v883)
            end

            return v882
        end,
        npcs = function(_, _)
            local v884, v885, v886 = pairs(workspace:GetDescendants())
            local v887 = {}

            while true do
                local v888

                v886, v888 = v884(v885, v886)

                if v886 == nil then
                    break
                end
                if v888:IsA('Model') and (getRoot(v888) and v888:FindFirstChildWhichIsA('Humanoid')) and Players:GetPlayerFromCharacter(v888) == nil then
                    local _Player = Instance.new('Player')

                    _Player.Name = v888.Name .. ' - ' .. v888:FindFirstChildWhichIsA('Humanoid').DisplayName
                    _Player.Character = v888

                    table.insert(v887, _Player)
                end
            end

            return v887
        end,
    }

    function toTokens(p890)
        local v891, v892, v893 = string.gmatch(p890, '([+-])([^+-]+)')
        local v894 = {}

        while true do
            local v895

            v893, v895 = v891(v892, v893)

            if v893 == nil then
                break
            end

            table.insert(v894, {
                Operator = v893,
                Name = v895,
            })
        end

        return v894
    end
    function onlyIncludeInTable(p896, p897)
        local v898, v899, v900 = pairs(p897)
        local v901 = {}
        local v902 = {}

        while true do
            local v903

            v900, v903 = v898(v899, v900)

            if v900 == nil then
                break
            end

            v901[v903.Name] = true
        end

        local v904, v905, v906 = pairs(p896)

        while true do
            local v907

            v906, v907 = v904(v905, v906)

            if v906 == nil then
                break
            end
            if v901[v907.Name] then
                table.insert(v902, v907)
            end
        end

        return v902
    end
    function removeTableMatches(p908, p909)
        local v910, v911, v912 = pairs(p909)
        local v913 = {}
        local v914 = {}

        while true do
            local v915

            v912, v915 = v910(v911, v912)

            if v912 == nil then
                break
            end

            v913[v915.Name] = true
        end

        local v916, v917, v918 = pairs(p908)

        while true do
            local v919

            v918, v919 = v916(v917, v918)

            if v918 == nil then
                break
            end
            if not v913[v919.Name] then
                table.insert(v914, v919)
            end
        end

        return v914
    end
    function getPlayersByName(p920)
        local v921 = string.lower(p920)
        local v922 = #p920
        local v923, v924, v925 = pairs(Players:GetPlayers())
        local v926 = {}

        while true do
            local v927

            v925, v927 = v923(v924, v925)

            if v925 == nil then
                break
            end
            if v921:sub(0, 1) ~= '@' then
                if string.sub(string.lower(v927.Name), 1, v922) == v921 or string.sub(string.lower(v927.DisplayName), 1, v922) == v921 then
                    table.insert(v926, v927)
                end
            elseif string.sub(string.lower(v927.Name), 1, v922 - 1) == v921:sub(2) then
                table.insert(v926, v927)
            end
        end

        return v926
    end
    function getPlayer(p928, p929)
        if p928 == nil then
            return {
                p929.Name,
            }
        end

        local v930 = splitString(p928, ',')
        local v931, v932, v933 = pairs(v930)
        local v934 = {}

        while true do
            local v935

            v933, v935 = v931(v932, v933)

            if v933 == nil then
                break
            end
            if string.sub(v935, 1, 1) ~= '+' and string.sub(v935, 1, 1) ~= '-' then
                v935 = '+' .. v935
            end

            local v936 = toTokens(v935)
            local v937 = Players:GetPlayers()
            local v938, v939, v940 = pairs(v936)

            while true do
                local v941

                v940, v941 = v938(v939, v940)

                if v940 == nil then
                    break
                end
                if v941.Operator ~= '+' then
                    local _Name = v941.Name
                    local v943, v944, v945 = pairs(SpecialPlayerCases)
                    local v946 = false

                    while true do
                        local v947

                        v945, v947 = v943(v944, v945)

                        if v945 == nil then
                            break
                        end

                        local v948 = {
                            string.match(_Name, '^' .. v945 .. '$'),
                        }

                        if #v948 > 0 then
                            v937 = removeTableMatches(v937, v947(p929, v948, v937))
                            v946 = true
                        end
                    end

                    if not v946 then
                        v937 = removeTableMatches(v937, getPlayersByName(_Name))
                    end
                else
                    local _Name2 = v941.Name
                    local v950, v951, v952 = pairs(SpecialPlayerCases)
                    local v953 = false

                    while true do
                        local v954

                        v952, v954 = v950(v951, v952)

                        if v952 == nil then
                            break
                        end

                        local v955 = {
                            string.match(_Name2, '^' .. v952 .. '$'),
                        }

                        if #v955 > 0 then
                            v937 = onlyIncludeInTable(v937, v954(p929, v955, v937))
                            v953 = true
                        end
                    end

                    if not v953 then
                        v937 = onlyIncludeInTable(v937, getPlayersByName(_Name2))
                    end
                end
            end

            local v956, v957, v958 = pairs(v937)

            while true do
                local v959

                v958, v959 = v956(v957, v958)

                if v958 == nil then
                    break
                end

                table.insert(v934, v959)
            end
        end

        local v960, v961, v962 = pairs(v934)
        local v963 = {}

        while true do
            local v964

            v962, v964 = v960(v961, v962)

            if v962 == nil then
                break
            end

            table.insert(v963, v964.Name)
        end

        return v963
    end
    function getprfx(p965)
        if p965:sub(1, string.len(prefix)) == prefix then
            return {
                'cmd',
                string.len(prefix) + 1,
            }
        end
    end
    function do_exec(p966, p967)
        local _e = p966:gsub('/e ', '')
        local v969 = getprfx(_e)

        if v969 then
            local v970 = _e:sub(v969[2])

            if v969[1] == 'cmd' then
                execCmd(v970, p967, true)
                IndexContents('', true, false, true)

                CMDsF.CanvasPosition = u630
            end
        end
    end

    lastEnteredString = nil
    lastTextBoxCon = nil
    lastTextBoxString = nil

    UserInputService.TextBoxFocused:Connect(function(p971)
        if lastTextBoxCon then
            lastTextBoxCon:Disconnect()
        end
        if p971 ~= Cmdbar then
            lastTextBoxString = p971.Text
            lastTextBoxCon = p971:GetPropertyChangedSignal('Text'):Connect(function()
                if not (UserInputService:IsKeyDown(Enum.KeyCode.Return) or UserInputService:IsKeyDown(Enum.KeyCode.KeypadEnter)) then
                    lastTextBoxString = p971.Text
                end
            end)
        else
            lastTextBoxString = nil
        end
    end)
    UserInputService.InputBegan:Connect(function(p972, p973)
        if p973 then
            if Cmdbar and Cmdbar:IsFocused() then
                if p972.KeyCode ~= Enum.KeyCode.Up then
                    if p972.KeyCode == Enum.KeyCode.Down then
                        u686 = u686 - 1

                        if u686 < 0 then
                            u686 = 0
                        end

                        Cmdbar.Text = cmdHistory[u686] or ''
                        Cmdbar.CursorPosition = 1020
                    end
                else
                    u686 = u686 + 1

                    if u686 > #cmdHistory then
                        u686 = #cmdHistory
                    end

                    Cmdbar.Text = cmdHistory[u686] or ''
                    Cmdbar.CursorPosition = 1020
                end
            elseif p972.KeyCode == Enum.KeyCode.Return or p972.KeyCode == Enum.KeyCode.KeypadEnter then
                lastEnteredString = lastTextBoxString
            end
        end
    end)
    Players.LocalPlayer.Chatted:Connect(function()
        wait()

        if lastEnteredString then
            local v974 = lastEnteredString

            lastEnteredString = nil

            do_exec(v974, Players.LocalPlayer)
        end
    end)

    Cmdbar.PlaceholderText = 'Command Bar (' .. prefix .. ')'

    Cmdbar:GetPropertyChangedSignal('Text'):Connect(function()
        if Cmdbar:IsFocused() then
            IndexContents(Cmdbar.Text, true, true)
        end
    end)

    local u975 = nil

    tabAllowed = true

    Cmdbar.FocusLost:Connect(function(p976)
        if p976 then
            local v977 = Cmdbar.Text:gsub('^' .. prefix, '')

            execCmd(v977, Players.LocalPlayer, true)
        end
        if u975 then
            u975:Disconnect()
        end

        wait()

        if not Cmdbar:IsFocused() then
            Cmdbar.Text = ''

            IndexContents('', true, false, true)

            if u277 == true then
                wait(0.2)
                Settings:TweenPosition(UDim2.new(0, 0, 0, 45), 'InOut', 'Quart', 0.2, true, nil)

                CMDsF.Visible = false
            end
        end

        CMDsF.CanvasPosition = u630
    end)
    Cmdbar.Focused:Connect(function()
        u686 = 0
        u630 = CMDsF.CanvasPosition

        if u277 == true then
            wait(0.2)

            CMDsF.Visible = true

            Settings:TweenPosition(UDim2.new(0, 0, 0, 220), 'InOut', 'Quart', 0.2, true, nil)
        end

        u975 = UserInputService.InputBegan:Connect(function(p978, _)
            if Cmdbar:IsFocused() then
                if tabAllowed == true and (p978.KeyCode == Enum.KeyCode.Tab and u629 ~= nil) then
                    autoComplete(u629)
                end
            else
                u975:Disconnect()
            end
        end)
    end)

    ESPenabled = false
    CHMSenabled = false

    function round(p979, p980)
        local v981 = 10 ^ (p980 or 0)

        return math.floor(p979 * v981 + 0.5) / v981
    end
    function ESP(p982)
        task.spawn(function()
            local v983, v984, v985 = pairs(COREGUI:GetChildren())

            while true do
                local v986, v987 = v983(v984, v985)

                if v986 == nil then
                    break
                end

                v985 = v986

                if v987.Name == p982.Name .. '_ESP' then
                    v987:Destroy()
                end
            end

            wait()

            if p982.Character and p982.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(p982.Name .. '_ESP') then
                local _Folder = Instance.new('Folder')

                _Folder.Name = p982.Name .. '_ESP'
                _Folder.Parent = COREGUI

                repeat
                    wait(1)
                until p982.Character and getRoot(p982.Character) and p982.Character:FindFirstChildOfClass('Humanoid')

                local v989, v990, v991 = pairs(p982.Character:GetChildren())

                while true do
                    local v992, v993 = v989(v990, v991)

                    if v992 == nil then
                        break
                    end

                    v991 = v992

                    if v993:IsA('BasePart') then
                        local _BoxHandleAdornment = Instance.new('BoxHandleAdornment')

                        _BoxHandleAdornment.Name = p982.Name
                        _BoxHandleAdornment.Parent = _Folder
                        _BoxHandleAdornment.Adornee = v993
                        _BoxHandleAdornment.AlwaysOnTop = true
                        _BoxHandleAdornment.ZIndex = 10
                        _BoxHandleAdornment.Size = v993.Size
                        _BoxHandleAdornment.Transparency = espTransparency
                        _BoxHandleAdornment.Color = p982.TeamColor
                    end
                end

                if p982.Character and p982.Character:FindFirstChild('Head') then
                    local _BillboardGui = Instance.new('BillboardGui')
                    local _TextLabel7 = Instance.new('TextLabel')

                    _BillboardGui.Adornee = p982.Character.Head
                    _BillboardGui.Name = p982.Name
                    _BillboardGui.Parent = _Folder
                    _BillboardGui.Size = UDim2.new(0, 100, 0, 150)
                    _BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui.AlwaysOnTop = true
                    _TextLabel7.Parent = _BillboardGui
                    _TextLabel7.BackgroundTransparency = 1
                    _TextLabel7.Position = UDim2.new(0, 0, 0, -50)
                    _TextLabel7.Size = UDim2.new(0, 100, 0, 100)
                    _TextLabel7.Font = Enum.Font.SourceSansSemibold
                    _TextLabel7.TextSize = 20
                    _TextLabel7.TextColor3 = Color3.new(1, 1, 1)
                    _TextLabel7.TextStrokeTransparency = 0
                    _TextLabel7.TextYAlignment = Enum.TextYAlignment.Bottom
                    _TextLabel7.Text = 'Name: ' .. p982.Name
                    _TextLabel7.ZIndex = 10

                    local u997 = nil
                    local u998 = nil
                    local u999 = nil

                    u999 = p982.CharacterAdded:Connect(function()
                        if ESPenabled then
                            u997:Disconnect()
                            u998:Disconnect()
                            _Folder:Destroy()

                            repeat
                                wait(1)
                            until getRoot(p982.Character) and p982.Character:FindFirstChildOfClass('Humanoid')

                            ESP(p982)
                            u999:Disconnect()
                        else
                            u998:Disconnect()
                            u999:Disconnect()
                        end
                    end)
                    u998 = p982:GetPropertyChangedSignal('TeamColor'):Connect(function()
                        if ESPenabled then
                            u997:Disconnect()
                            u999:Disconnect()
                            _Folder:Destroy()

                            repeat
                                wait(1)
                            until getRoot(p982.Character) and p982.Character:FindFirstChildOfClass('Humanoid')

                            ESP(p982)
                            u998:Disconnect()
                        else
                            u998:Disconnect()
                        end
                    end)

                    local function v1001()
                        if COREGUI:FindFirstChild(p982.Name .. '_ESP') then
                            if p982.Character and getRoot(p982.Character) and (p982.Character:FindFirstChildOfClass('Humanoid') and (Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character)) and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')) then
                                local v1000 = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(p982.Character).Position).magnitude)

                                _TextLabel7.Text = 'Name: ' .. p982.Name .. ' | Health: ' .. round(p982.Character:FindFirstChildOfClass('Humanoid').Health, 1) .. ' | Studs: ' .. v1000
                            end
                        else
                            u998:Disconnect()
                            u999:Disconnect()
                            u997:Disconnect()
                        end
                    end

                    u997 = RunService.RenderStepped:Connect(v1001)
                end
            end
        end)
    end
    function CHMS(p1002)
        task.spawn(function()
            local v1003, v1004, v1005 = pairs(COREGUI:GetChildren())

            while true do
                local v1006, v1007 = v1003(v1004, v1005)

                if v1006 == nil then
                    break
                end

                v1005 = v1006

                if v1007.Name == p1002.Name .. '_CHMS' then
                    v1007:Destroy()
                end
            end

            wait()

            if p1002.Character and p1002.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(p1002.Name .. '_CHMS') then
                local _Folder2 = Instance.new('Folder')

                _Folder2.Name = p1002.Name .. '_CHMS'
                _Folder2.Parent = COREGUI

                repeat
                    wait(1)
                until p1002.Character and getRoot(p1002.Character) and p1002.Character:FindFirstChildOfClass('Humanoid')

                local v1009, v1010, v1011 = pairs(p1002.Character:GetChildren())

                while true do
                    local v1012, v1013 = v1009(v1010, v1011)

                    if v1012 == nil then
                        break
                    end

                    v1011 = v1012

                    if v1013:IsA('BasePart') then
                        local _BoxHandleAdornment2 = Instance.new('BoxHandleAdornment')

                        _BoxHandleAdornment2.Name = p1002.Name
                        _BoxHandleAdornment2.Parent = _Folder2
                        _BoxHandleAdornment2.Adornee = v1013
                        _BoxHandleAdornment2.AlwaysOnTop = true
                        _BoxHandleAdornment2.ZIndex = 10
                        _BoxHandleAdornment2.Size = v1013.Size
                        _BoxHandleAdornment2.Transparency = espTransparency
                        _BoxHandleAdornment2.Color = p1002.TeamColor
                    end
                end

                local u1015 = nil
                local u1016 = nil
                local u1017 = nil

                u1015 = p1002.CharacterAdded:Connect(function()
                    if CHMSenabled then
                        _Folder2:Destroy()
                        u1016:Disconnect()

                        repeat
                            wait(1)
                        until getRoot(p1002.Character) and p1002.Character:FindFirstChildOfClass('Humanoid')

                        CHMS(p1002)
                        u1015:Disconnect()
                    else
                        u1016:Disconnect()
                        u1015:Disconnect()
                    end
                end)
                u1016 = p1002:GetPropertyChangedSignal('TeamColor'):Connect(function()
                    if CHMSenabled then
                        _Folder2:Destroy()
                        u1015:Disconnect()

                        repeat
                            wait(1)
                        until getRoot(p1002.Character) and p1002.Character:FindFirstChildOfClass('Humanoid')

                        CHMS(p1002)
                        u1016:Disconnect()
                    else
                        u1016:Disconnect()
                    end
                end)
                u1017 = _Folder2.AncestryChanged:Connect(function()
                    u1016:Disconnect()
                    u1015:Disconnect()
                    u1017:Disconnect()
                end)
            end
        end)
    end
    function Locate(p1018)
        task.spawn(function()
            local v1019, v1020, v1021 = pairs(COREGUI:GetChildren())

            while true do
                local v1022, v1023 = v1019(v1020, v1021)

                if v1022 == nil then
                    break
                end

                v1021 = v1022

                if v1023.Name == p1018.Name .. '_LC' then
                    v1023:Destroy()
                end
            end

            wait()

            if p1018.Character and p1018.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(p1018.Name .. '_LC') then
                local _Folder3 = Instance.new('Folder')

                _Folder3.Name = p1018.Name .. '_LC'
                _Folder3.Parent = COREGUI

                repeat
                    wait(1)
                until p1018.Character and getRoot(p1018.Character) and p1018.Character:FindFirstChildOfClass('Humanoid')

                local v1025, v1026, v1027 = pairs(p1018.Character:GetChildren())

                while true do
                    local v1028, v1029 = v1025(v1026, v1027)

                    if v1028 == nil then
                        break
                    end

                    v1027 = v1028

                    if v1029:IsA('BasePart') then
                        local _BoxHandleAdornment3 = Instance.new('BoxHandleAdornment')

                        _BoxHandleAdornment3.Name = p1018.Name
                        _BoxHandleAdornment3.Parent = _Folder3
                        _BoxHandleAdornment3.Adornee = v1029
                        _BoxHandleAdornment3.AlwaysOnTop = true
                        _BoxHandleAdornment3.ZIndex = 10
                        _BoxHandleAdornment3.Size = v1029.Size
                        _BoxHandleAdornment3.Transparency = espTransparency
                        _BoxHandleAdornment3.Color = p1018.TeamColor
                    end
                end

                if p1018.Character and p1018.Character:FindFirstChild('Head') then
                    local _BillboardGui2 = Instance.new('BillboardGui')
                    local _TextLabel8 = Instance.new('TextLabel')

                    _BillboardGui2.Adornee = p1018.Character.Head
                    _BillboardGui2.Name = p1018.Name
                    _BillboardGui2.Parent = _Folder3
                    _BillboardGui2.Size = UDim2.new(0, 100, 0, 150)
                    _BillboardGui2.StudsOffset = Vector3.new(0, 1, 0)
                    _BillboardGui2.AlwaysOnTop = true
                    _TextLabel8.Parent = _BillboardGui2
                    _TextLabel8.BackgroundTransparency = 1
                    _TextLabel8.Position = UDim2.new(0, 0, 0, -50)
                    _TextLabel8.Size = UDim2.new(0, 100, 0, 100)
                    _TextLabel8.Font = Enum.Font.SourceSansSemibold
                    _TextLabel8.TextSize = 20
                    _TextLabel8.TextColor3 = Color3.new(1, 1, 1)
                    _TextLabel8.TextStrokeTransparency = 0
                    _TextLabel8.TextYAlignment = Enum.TextYAlignment.Bottom
                    _TextLabel8.Text = 'Name: ' .. p1018.Name
                    _TextLabel8.ZIndex = 10

                    local u1033 = nil
                    local u1034 = nil
                    local u1035 = nil

                    u1034 = p1018.CharacterAdded:Connect(function()
                        if _Folder3 == nil or _Folder3.Parent == nil then
                            u1035:Disconnect()
                            u1034:Disconnect()
                        else
                            u1033:Disconnect()
                            u1035:Disconnect()
                            _Folder3:Destroy()

                            repeat
                                wait(1)
                            until getRoot(p1018.Character) and p1018.Character:FindFirstChildOfClass('Humanoid')

                            Locate(p1018)
                            u1034:Disconnect()
                        end
                    end)
                    u1035 = p1018:GetPropertyChangedSignal('TeamColor'):Connect(function()
                        if _Folder3 == nil or _Folder3.Parent == nil then
                            u1035:Disconnect()
                        else
                            u1033:Disconnect()
                            u1034:Disconnect()
                            _Folder3:Destroy()

                            repeat
                                wait(1)
                            until getRoot(p1018.Character) and p1018.Character:FindFirstChildOfClass('Humanoid')

                            Locate(p1018)
                            u1035:Disconnect()
                        end
                    end)

                    local function v1037()
                        if COREGUI:FindFirstChild(p1018.Name .. '_LC') then
                            if p1018.Character and getRoot(p1018.Character) and (p1018.Character:FindFirstChildOfClass('Humanoid') and (Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character)) and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')) then
                                local v1036 = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(p1018.Character).Position).magnitude)

                                _TextLabel8.Text = 'Name: ' .. p1018.Name .. ' | Health: ' .. round(p1018.Character:FindFirstChildOfClass('Humanoid').Health, 1) .. ' | Studs: ' .. v1036
                            end
                        else
                            u1035:Disconnect()
                            u1034:Disconnect()
                            u1033:Disconnect()
                        end
                    end

                    u1033 = RunService.RenderStepped:Connect(v1037)
                end
            end
        end)
    end

    local _ = KeybindEditor
    local u1038 = false
    local u1039 = false

    function refreshbinds()
        if Holder_2 then
            Holder_2:ClearAllChildren()

            Holder_2.CanvasSize = UDim2.new(0, 0, 0, 10)

            for v1040 = 1, #binds do
                local u1041 = v1040
                local v1042 = 25
                local v1043 = u1041 * v1042 - v1042
                local v1044 = Example_2:Clone()

                v1044.Parent = Holder_2
                v1044.Visible = true
                v1044.Position = UDim2.new(0, 0, 0, v1043 + 5)

                table.insert(shade2, v1044)
                table.insert(shade2, v1044.Text)
                table.insert(text1, v1044.Text)
                table.insert(shade3, v1044.Text.Delete)
                table.insert(text2, v1044.Text.Delete)

                local v1045 = tostring(binds[u1041].KEY)

                if v1045 ~= 'RightClick' and v1045 ~= 'LeftClick' then
                    v1045 = v1045:sub(14)
                end
                if binds[u1041].TOGGLE then
                    v1044.Text.Text = v1045 .. ' > ' .. binds[u1041].COMMAND .. ' / ' .. binds[u1041].TOGGLE
                else
                    v1044.Text.Text = v1045 .. ' > ' .. binds[u1041].COMMAND .. '  ' .. (binds[u1041].ISKEYUP and '(keyup)' or '(keydown)')
                end

                Holder_2.CanvasSize = UDim2.new(0, 0, 0, v1043 + 30)

                v1044.Text.Delete.MouseButton1Click:Connect(function()
                    unkeybind(binds[u1041].COMMAND, binds[u1041].KEY)
                end)
            end
        end
    end

    refreshbinds()

    toggleOn = {}

    function unkeybind(p1046, p1047)
        for v1048 = #binds, 1, -1 do
            if binds[v1048].COMMAND == p1046 then
                if binds[v1048].KEY == p1047 then
                    toggleOn[binds[v1048] ] = nil

                    table.remove(binds, v1048)
                end
            end
        end

        refreshbinds()
        updatesaves()

        if p1047 == 'RightClick' or p1047 == 'LeftClick' then
            notify('Keybinds Updated', 'Unbinded ' .. p1047 .. ' from ' .. p1046)
        else
            notify('Keybinds Updated', 'Unbinded ' .. p1047:sub(14) .. ' from ' .. p1046)
        end
    end

    PositionsFrame.Delete.MouseButton1Click:Connect(function()
        execCmd('cpos')
    end)

    function refreshwaypoints()
        if #WayPoints > 0 or #pWayPoints > 0 then
            PositionsHint:Destroy()
        end
        if Holder_4 then
            Holder_4:ClearAllChildren()

            Holder_4.CanvasSize = UDim2.new(0, 0, 0, 10)

            local v1049 = 1
            local v1050 = 25

            for v1051 = 1, #WayPoints do
                local u1052 = v1051
                local v1053 = v1049 * v1050 - v1050
                local v1054 = Example_4:Clone()

                v1054.Parent = Holder_4
                v1054.Visible = true
                v1054.Position = UDim2.new(0, 0, 0, v1053 + 5)
                v1054.Text.Text = WayPoints[u1052].NAME

                table.insert(shade2, v1054)
                table.insert(shade2, v1054.Text)
                table.insert(text1, v1054.Text)
                table.insert(shade3, v1054.Text.Delete)
                table.insert(text2, v1054.Text.Delete)
                table.insert(shade3, v1054.Text.TP)
                table.insert(text2, v1054.Text.TP)

                Holder_4.CanvasSize = UDim2.new(0, 0, 0, v1053 + 30)

                v1054.Text.Delete.MouseButton1Click:Connect(function()
                    execCmd('dpos ' .. WayPoints[u1052].NAME)
                end)
                v1054.Text.TP.MouseButton1Click:Connect(function()
                    execCmd('loadpos ' .. WayPoints[u1052].NAME)
                end)

                v1049 = v1049 + 1
            end
            for v1055 = 1, #pWayPoints do
                local u1056 = v1055
                local v1057 = v1049 * v1050 - v1050
                local v1058 = Example_4:Clone()

                v1058.Parent = Holder_4
                v1058.Visible = true
                v1058.Position = UDim2.new(0, 0, 0, v1057 + 5)
                v1058.Text.Text = pWayPoints[u1056].NAME

                table.insert(shade2, v1058)
                table.insert(shade2, v1058.Text)
                table.insert(text1, v1058.Text)
                table.insert(shade3, v1058.Text.Delete)
                table.insert(text2, v1058.Text.Delete)
                table.insert(shade3, v1058.Text.TP)
                table.insert(text2, v1058.Text.TP)

                Holder_4.CanvasSize = UDim2.new(0, 0, 0, v1057 + 30)

                v1058.Text.Delete.MouseButton1Click:Connect(function()
                    execCmd('dpos ' .. pWayPoints[u1056].NAME)
                end)
                v1058.Text.TP.MouseButton1Click:Connect(function()
                    execCmd('loadpos ' .. pWayPoints[u1056].NAME)
                end)

                v1049 = v1049 + 1
            end
        end
    end

    refreshwaypoints()

    function refreshaliases()
        if #aliases > 0 then
            AliasHint:Destroy()
        end
        if Holder_3 then
            Holder_3:ClearAllChildren()

            Holder_3.CanvasSize = UDim2.new(0, 0, 0, 10)

            for v1059 = 1, #aliases do
                local u1060 = v1059
                local v1061 = 25
                local v1062 = u1060 * v1061 - v1061
                local v1063 = Example_3:Clone()

                v1063.Parent = Holder_3
                v1063.Visible = true
                v1063.Position = UDim2.new(0, 0, 0, v1062 + 5)
                v1063.Text.Text = aliases[u1060].CMD .. ' > ' .. aliases[u1060].ALIAS

                table.insert(shade2, v1063)
                table.insert(shade2, v1063.Text)
                table.insert(text1, v1063.Text)
                table.insert(shade3, v1063.Text.Delete)
                table.insert(text2, v1063.Text.Delete)

                Holder_3.CanvasSize = UDim2.new(0, 0, 0, v1062 + 30)

                v1063.Text.Delete.MouseButton1Click:Connect(function()
                    execCmd('removealias ' .. aliases[u1060].ALIAS)
                end)
            end
        end
    end

    local u1064 = false

    BindTo.MouseButton1Click:Connect(function()
        u1038 = true
        BindTo.Text = 'Press something'
    end)
    BindTriggerSelect.MouseButton1Click:Connect(function()
        u1064 = not u1064
        BindTriggerSelect.Text = u1064 and 'KeyUp' or 'KeyDown'
    end)

    newToggle = false
    Cmdbar_3.Parent.Visible = false

    On_2.MouseButton1Click:Connect(function()
        if newToggle ~= false then
            newToggle = false
            On_2.BackgroundTransparency = 1
            Cmdbar_3.Parent.Visible = false
            BindTriggerSelect.Visible = true
        else
            newToggle = true
            On_2.BackgroundTransparency = 0
            Cmdbar_3.Parent.Visible = true
            BindTriggerSelect.Visible = false
        end
    end)
    Add_2.MouseButton1Click:Connect(function()
        if u1039 then
            if string.find(Cmdbar_2.Text, '\\\\') or string.find(Cmdbar_3.Text, '\\\\') then
                notify('Keybind Error', 'Only use one backslash to keybind multiple commands into one keybind or command')
            else
                if newToggle and (Cmdbar_3.Text ~= '' and Cmdbar_2.text ~= '') then
                    addbind(Cmdbar_2.Text, keyPressed, false, Cmdbar_3.Text)
                else
                    if newToggle or Cmdbar_2.text == '' then
                        return
                    end

                    addbind(Cmdbar_2.Text, keyPressed, u1064)
                end

                refreshbinds()
                updatesaves()

                if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
                    notify('Keybinds Updated', 'Binded ' .. keyPressed .. ' to ' .. Cmdbar_2.Text .. (newToggle and ' / ' .. Cmdbar_3.Text or ''))
                else
                    notify('Keybinds Updated', 'Binded ' .. keyPressed:sub(14) .. ' to ' .. Cmdbar_2.Text .. (newToggle and ' / ' .. Cmdbar_3.Text or ''))
                end
            end
        end
    end)
    Exit_2.MouseButton1Click:Connect(function()
        Cmdbar_2.Text = 'Command'
        Cmdbar_3.Text = 'Command 2'
        BindTo.Text = 'Click to bind'
        u1064 = false
        BindTriggerSelect.Text = 'KeyDown'
        u1039 = false

        KeybindEditor:TweenPosition(UDim2.new(0.5, -180, 0, -500), 'InOut', 'Quart', 0.5, true, nil)
    end)

    function onInputBegan(p1065, p1066)
        if u1038 then
            if p1065.UserInputType ~= Enum.UserInputType.Keyboard then
                if p1065.UserInputType ~= Enum.UserInputType.MouseButton1 then
                    if p1065.UserInputType == Enum.UserInputType.MouseButton2 then
                        keyPressed = 'RightClick'
                        BindTo.Text = 'RightClick'
                    end
                else
                    keyPressed = 'LeftClick'
                    BindTo.Text = 'LeftClick'
                end
            else
                keyPressed = tostring(p1065.KeyCode)
                BindTo.Text = keyPressed:sub(14)
            end

            u1038 = false
            u1039 = true
        end
        if not p1066 and #binds > 0 then
            local v1067, v1068, v1069 = pairs(binds)

            while true do
                local v1070

                v1069, v1070 = v1067(v1068, v1069)

                if v1069 == nil then
                    break
                end
                if not v1070.ISKEYUP and (p1065.UserInputType == Enum.UserInputType.Keyboard and v1070.KEY:lower() == tostring(p1065.KeyCode):lower() or (p1065.UserInputType == Enum.UserInputType.MouseButton1 and v1070.KEY:lower() == 'leftclick' or p1065.UserInputType == Enum.UserInputType.MouseButton2 and v1070.KEY:lower() == 'rightclick')) then
                    if v1070.TOGGLE then
                        local v1071 = toggleOn[v1070] == true

                        toggleOn[v1070] = not v1071

                        if v1071 then
                            execCmd(v1070.TOGGLE, Players.LocalPlayer)
                        else
                            execCmd(v1070.COMMAND, Players.LocalPlayer)
                        end
                    else
                        execCmd(v1070.COMMAND, Players.LocalPlayer)
                    end
                end
            end
        end
    end
    function onInputEnded(p1072, p1073)
        if not p1073 and #binds > 0 then
            local v1074, v1075, v1076 = pairs(binds)

            while true do
                local v1077

                v1076, v1077 = v1074(v1075, v1076)

                if v1076 == nil then
                    break
                end
                if v1077.ISKEYUP and (p1072.UserInputType == Enum.UserInputType.Keyboard and v1077.KEY:lower() == tostring(p1072.KeyCode):lower() or (p1072.UserInputType == Enum.UserInputType.MouseButton1 and v1077.KEY:lower() == 'leftclick' or p1072.UserInputType == Enum.UserInputType.MouseButton2 and v1077.KEY:lower() == 'rightclick')) then
                    execCmd(v1077.COMMAND, Players.LocalPlayer)
                end
            end
        end
    end

    UserInputService.InputBegan:Connect(onInputBegan)
    UserInputService.InputEnded:Connect(onInputEnded)
    ClickTP.Select.MouseButton1Click:Connect(function()
        if u1039 then
            addbind('clicktp', keyPressed, u1064)
            refreshbinds()
            updatesaves()

            if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
                notify('Keybinds Updated', 'Binded ' .. keyPressed .. ' to click tp')
            else
                notify('Keybinds Updated', 'Binded ' .. keyPressed:sub(14) .. ' to click tp')
            end
        end
    end)
    ClickDelete.Select.MouseButton1Click:Connect(function()
        if u1039 then
            addbind('clickdel', keyPressed, u1064)
            refreshbinds()
            updatesaves()

            if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
                notify('Keybinds Updated', 'Binded ' .. keyPressed .. ' to click delete')
            else
                notify('Keybinds Updated', 'Binded ' .. keyPressed:sub(14) .. ' to click delete')
            end
        end
    end)

    local function u1083()
        pcall(function()
            local _Character6 = Players.LocalPlayer.Character
            local _Humanoid = _Character6:FindFirstChildOfClass('Humanoid')

            if _Humanoid and _Humanoid.SeatPart then
                _Humanoid.Sit = false

                wait(0.1)
            end
            if _Humanoid then
                if _Humanoid.HipHeight <= 0 then
                    _Humanoid = false
                else
                    _Humanoid = _Humanoid.HipHeight + 1
                end
            end

            local v1080 = getRoot(_Character6)
            local _Position = v1080.Position
            local _Position2 = IYMouse.Hit.Position

            v1080.CFrame = CFrame.new(_Position2, Vector3.new(_Position.X, _Position2.Y, _Position.Z)) * CFrame.Angles(0, math.pi, 0) + Vector3.new(0, _Humanoid or 4, 0)
        end)
    end

    IYMouse.Button1Down:Connect(function()
        local v1084, v1085, v1086 = pairs(binds)

        while true do
            local v1087

            v1086, v1087 = v1084(v1085, v1086)

            if v1086 == nil then
                break
            end
            if v1087.COMMAND ~= 'clicktp' then
                if v1087.COMMAND == 'clickdel' then
                    local _KEY = v1087.KEY

                    if _KEY == 'RightClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
                        pcall(function()
                            IYMouse.Target:Destroy()
                        end)
                    elseif _KEY == 'LeftClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
                        pcall(function()
                            IYMouse.Target:Destroy()
                        end)
                    elseif UserInputService:IsKeyDown(Enum.KeyCode[_KEY:sub(14)]) then
                        pcall(function()
                            IYMouse.Target:Destroy()
                        end)
                    end
                end
            else
                local _KEY2 = v1087.KEY

                if _KEY2 == 'RightClick' and (UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) and Players.LocalPlayer.Character) then
                    u1083()
                elseif _KEY2 == 'LeftClick' and (UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and Players.LocalPlayer.Character) then
                    u1083()
                elseif UserInputService:IsKeyDown(Enum.KeyCode[_KEY2:sub(14)]) and Players.LocalPlayer.Character then
                    u1083()
                end
            end
        end
    end)

    PluginsGUI = PluginEditor.background

    function addPlugin(p1090)
        if p1090:lower() == 'plugin file name' or (p1090:lower() == 'iy_fe.iy' or p1090 == 'iy_fe') then
            notify('Plugin Error', 'Please enter a valid plugin')
        else
            local u1091 = nil

            if p1090:sub(-3) ~= '.iy' then
                pcall(function()
                    u1091 = readfile(p1090 .. '.iy')
                end)

                p1090 = p1090 .. '.iy'
            else
                pcall(function()
                    u1091 = readfile(p1090)
                end)
            end
            if u1091 then
                if FindInTable(PluginsTable, p1090) then
                    notify('Plugin Error', 'This plugin is already added')
                else
                    table.insert(PluginsTable, p1090)
                    LoadPlugin(p1090)
                    refreshplugins()
                    pcall(eventEditor.Refresh)
                end
            else
                notify('Plugin Error', 'Cannot locate file "' .. p1090 .. '". Is the file in the correct folder?')
            end
        end
    end
    function deletePlugin(p1092)
        local v1093 = p1092 .. '.iy'

        if p1092:sub(-3) == '.iy' then
            v1093 = p1092
        end

        for v1094 = #cmds, 1, -1 do
            if cmds[v1094].PLUGIN == v1093 then
                table.remove(cmds, v1094)
            end
        end

        local v1095, v1096, v1097 = pairs(CMDsF:GetChildren())

        while true do
            local v1098

            v1097, v1098 = v1095(v1096, v1097)

            if v1097 == nil then
                break
            end
            if v1098.Name == 'PLUGIN_' .. v1093 then
                v1098:Destroy()
            end
        end

        local v1099, v1100, v1101 = pairs(PluginsTable)

        while true do
            local v1102

            v1101, v1102 = v1099(v1100, v1101)

            if v1101 == nil then
                break
            end
            if v1102 == v1093 then
                table.remove(PluginsTable, v1101)
                notify('Removed Plugin', v1093 .. ' was removed')
            end
        end

        IndexContents('', true)
        refreshplugins()
    end
    function refreshplugins(p1103)
        if #PluginsTable > 0 then
            PluginsHint:Destroy()
        end
        if Holder_5 then
            Holder_5:ClearAllChildren()

            Holder_5.CanvasSize = UDim2.new(0, 0, 0, 10)

            local v1104, v1105, v1106 = pairs(PluginsTable)

            while true do
                local v1107

                v1106, v1107 = v1104(v1105, v1106)

                if v1106 == nil then
                    break
                end

                local u1108 = v1107
                local v1109 = 25
                local v1110 = v1106 * v1109 - v1109
                local v1111 = Example_5:Clone()

                v1111.Parent = Holder_5
                v1111.Visible = true
                v1111.Position = UDim2.new(0, 0, 0, v1110 + 5)
                v1111.Text.Text = u1108

                table.insert(shade2, v1111)
                table.insert(shade2, v1111.Text)
                table.insert(text1, v1111.Text)
                table.insert(shade3, v1111.Text.Delete)
                table.insert(text2, v1111.Text.Delete)

                Holder_5.CanvasSize = UDim2.new(0, 0, 0, v1110 + 30)

                v1111.Text.Delete.MouseButton1Click:Connect(function()
                    deletePlugin(u1108)
                end)
            end

            if not p1103 then
                updatesaves()
            end
        end
    end
    function LoadPlugin(p1112, p1113)
        local u1114 = nil

        function CatchedPluginLoad()
            u1114 = loadfile(p1112)()
        end
        function handlePluginError(p1115)
            notify('Plugin Error', 'An error occurred with the plugin, "' .. p1112 .. '" and it could not be loaded')

            if FindInTable(PluginsTable, p1112) then
                local v1116, v1117, v1118 = pairs(PluginsTable)

                while true do
                    local v1119

                    v1118, v1119 = v1116(v1117, v1118)

                    if v1118 == nil then
                        break
                    end
                    if v1119 == p1112 then
                        table.remove(PluginsTable, v1118)
                    end
                end
            end

            updatesaves()
            print('Original Error: ' .. tostring(p1115))
            print('Plugin Error, stack traceback: ' .. tostring(debug.traceback()))

            u1114 = nil

            return false
        end

        xpcall(CatchedPluginLoad, handlePluginError)

        if u1114 == nil then
            if u1114 == nil then
                local _ = nil
            end
        else
            if not p1113 then
                notify('Loaded Plugin', 'Name: ' .. u1114.PluginName .. '\n' .. 'Description: ' .. u1114.PluginDescription)
            end

            addcmdtext('', p1112)
            addcmdtext(string.upper('--' .. u1114.PluginName), p1112, u1114.PluginDescription)

            if u1114.Commands then
                local v1120, v1121, v1122 = pairs(u1114.Commands)

                while true do
                    local u1123, v1124 = v1120(v1121, v1122)

                    if u1123 == nil then
                        break
                    end

                    v1122 = u1123

                    local u1125 = ''
                    local u1126 = u1123

                    local function u1127()
                        u1126 = u1123

                        if findCmd(u1126 .. u1125) then
                            if isNumber(u1125) then
                                u1125 = u1125 + 1
                            else
                                u1125 = 1
                            end

                            u1127()
                        else
                            u1126 = u1126 .. u1125
                        end
                    end

                    u1127()
                    addcmd(u1126, v1124.Aliases, v1124.Function, p1112)

                    if v1124.ListName then
                        local _ListName = v1124.ListName
                        local v1129 = {
                            u1123,
                            unpack(v1124.Aliases),
                        }
                        local v1130, v1131, v1132 = pairs(v1129)
                        local v1133 = u1125

                        while true do
                            local v1134

                            v1132, v1134 = v1130(v1131, v1132)

                            if v1132 == nil then
                                break
                            end

                            _ListName = _ListName:gsub(v1134, v1134 .. v1133)
                        end

                        addcmdtext(_ListName, p1112, v1124.Description)
                    else
                        addcmdtext(u1126, p1112, v1124.Description)
                    end
                end
            end

            IndexContents('', true)
        end
    end
    function FindPlugins()
        if PluginsTable ~= nil and type(PluginsTable) == 'table' then
            local v1135, v1136, v1137 = pairs(PluginsTable)

            while true do
                local v1138

                v1137, v1138 = v1135(v1136, v1137)

                if v1137 == nil then
                    break
                end

                LoadPlugin(v1138, true)
            end

            refreshplugins(true)
        end
    end

    AddPlugin.MouseButton1Click:Connect(function()
        addPlugin(PluginsGUI.FileName.Text)
    end)
    Exit_3.MouseButton1Click:Connect(function()
        PluginEditor:TweenPosition(UDim2.new(0.5, -180, 0, -500), 'InOut', 'Quart', 0.5, true, nil)

        FileName.Text = 'Plugin File Name'
    end)
    Add_3.MouseButton1Click:Connect(function()
        PluginEditor:TweenPosition(UDim2.new(0.5, -180, 0, 310), 'InOut', 'Quart', 0.5, true, nil)
    end)
    Plugins.MouseButton1Click:Connect(function()
        if writefileExploit() then
            PluginsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), 'InOut', 'Quart', 0.5, true, nil)
            wait(0.5)

            SettingsHolder.Visible = false
        else
            notify('Incompatible Exploit', 'Your exploit is unable to use plugins (missing read/writefile)')
        end
    end)
    Close_4.MouseButton1Click:Connect(function()
        SettingsHolder.Visible = true

        PluginsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), 'InOut', 'Quart', 0.5, true, nil)
    end)
    Players.LocalPlayer.OnTeleport:Connect(function(p1139)
        if p1139 == Enum.TeleportState.Started and (KeepInfYield and queueteleport) then
            queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()")
        end
    end)
    addcmd('addalias', {}, function(p1140, _)
        if #p1140 < 2 then
            return
        end

        local v1141 = string.lower(p1140[1])
        local v1142 = string.lower(p1140[2])
        local v1143, v1144, v1145 = pairs(cmds)

        while true do
            local v1146

            v1145, v1146 = v1143(v1144, v1145)

            if v1145 == nil then
                break
            end
            if v1146.NAME:lower() == v1141 or FindInTable(v1146.ALIAS, v1141) then
                customAlias[v1142] = v1146
                aliases[#aliases + 1] = {
                    CMD = v1141,
                    ALIAS = v1142,
                }

                notify('Aliases Modified', 'Added ' .. v1142 .. ' as an alias to ' .. v1141)
                updatesaves()
                refreshaliases()

                break
            end
        end
    end)
    addcmd('removealias', {}, function(p1147, _)
        if #p1147 >= 1 then
            local v1148 = string.lower(p1147[1])

            if customAlias[v1148] then
                local _NAME = customAlias[v1148].NAME

                customAlias[v1148] = nil

                for v1150 = #aliases, 1, -1 do
                    if aliases[v1150].ALIAS == tostring(v1148) then
                        table.remove(aliases, v1150)
                    end
                end

                notify('Aliases Modified', 'Removed the alias ' .. v1148 .. ' from ' .. _NAME)
                updatesaves()
                refreshaliases()
            end
        end
    end)
    addcmd('clraliases', {}, function(_, _)
        customAlias = {}
        aliases = {}

        notify('Aliases Modified', 'Removed all aliases')
        updatesaves()
        refreshaliases()
    end)
    addcmd('discord', {
        'support',
        'help',
    }, function(_, _)
        if toClipboard then
            toClipboard('https://discord.com/invite/dYHag43eeU')
            notify('Discord Invite', 'Copied to clipboard!\ndiscord.gg/dYHag43eeU')
        else
            notify('Discord Invite', 'discord.gg/dYHag43eeU')
        end
        if httprequest then
            local v1151 = httprequest
            local v1152 = {
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    Origin = 'https://discord.com',
                },
            }
            local v1153 = HttpService
            local _JSONEncode = v1153.JSONEncode
            local v1155 = {
                cmd = 'INVITE_BROWSER',
                nonce = HttpService:GenerateGUID(false),
                args = {
                    code = 'dYHag43eeU',
                },
            }

            v1152.Body = _JSONEncode(v1153, v1155)

            v1151(v1152)
        end
    end)
    addcmd('keepiy', {}, function(_, _)
        if queueteleport then
            KeepInfYield = true

            updatesaves()
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing queue_on_teleport)')
        end
    end)
    addcmd('unkeepiy', {}, function(_, _)
        if queueteleport then
            KeepInfYield = false

            updatesaves()
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing queue_on_teleport)')
        end
    end)
    addcmd('toggleunkeepiy', {}, function(_, _)
        if queueteleport then
            KeepInfYield = not KeepInfYield

            updatesaves()
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing queue_on_teleport)')
        end
    end)

    local u1156 = true

    addcmd('serverinfo', {
        'info',
        'sinfo',
    }, function(_, p1157)
        if u1156 then
            u1156 = false

            task.spawn(function()
                local _Frame6 = Instance.new('Frame')
                local _Frame7 = Instance.new('Frame')
                local _TextLabel9 = Instance.new('TextLabel')
                local _TextButton4 = Instance.new('TextButton')
                local _ImageLabel4 = Instance.new('ImageLabel')
                local _Frame8 = Instance.new('Frame')
                local _TextLabel10 = Instance.new('TextLabel')
                local _TextLabel11 = Instance.new('TextLabel')
                local _TextLabel12 = Instance.new('TextLabel')
                local _TextLabel13 = Instance.new('TextLabel')
                local _TextLabel14 = Instance.new('TextLabel')
                local _TextLabel15 = Instance.new('TextLabel')
                local _TextLabel16 = Instance.new('TextLabel')
                local _TextLabel17 = Instance.new('TextLabel')
                local _TextLabel18 = Instance.new('TextLabel')
                local _TextLabel19 = Instance.new('TextLabel')
                local _TextButton5 = Instance.new('TextButton')
                local _TextButton6 = Instance.new('TextButton')
                local _TextButton7 = Instance.new('TextButton')

                _Frame6.Name = randomString()
                _Frame6.Parent = PARENT
                _Frame6.Active = true
                _Frame6.BackgroundTransparency = 1
                _Frame6.Position = UDim2.new(0.5, -130, 0, -500)
                _Frame6.Size = UDim2.new(0, 250, 0, 20)
                _Frame6.ZIndex = 10

                dragGUI(_Frame6)

                _Frame7.Name = 'shadow'
                _Frame7.Parent = _Frame6
                _Frame7.BackgroundColor3 = currentShade2
                _Frame7.BorderSizePixel = 0
                _Frame7.Size = UDim2.new(0, 250, 0, 20)
                _Frame7.ZIndex = 10

                table.insert(shade2, _Frame7)

                _TextLabel9.Name = 'PopupText'
                _TextLabel9.Parent = _Frame7
                _TextLabel9.BackgroundTransparency = 1
                _TextLabel9.Size = UDim2.new(1, 0, 0.95, 0)
                _TextLabel9.ZIndex = 10
                _TextLabel9.Font = Enum.Font.SourceSans
                _TextLabel9.TextSize = 14
                _TextLabel9.Text = 'Server'
                _TextLabel9.TextColor3 = currentText1
                _TextLabel9.TextWrapped = true

                table.insert(text1, _TextLabel9)

                _TextButton4.Name = 'Exit'
                _TextButton4.Parent = _Frame7
                _TextButton4.BackgroundTransparency = 1
                _TextButton4.Position = UDim2.new(1, -20, 0, 0)
                _TextButton4.Size = UDim2.new(0, 20, 0, 20)
                _TextButton4.Text = ''
                _TextButton4.ZIndex = 10
                _ImageLabel4.Parent = _TextButton4
                _ImageLabel4.BackgroundColor3 = Color3.new(1, 1, 1)
                _ImageLabel4.BackgroundTransparency = 1
                _ImageLabel4.Position = UDim2.new(0, 5, 0, 5)
                _ImageLabel4.Size = UDim2.new(0, 10, 0, 10)
                _ImageLabel4.Image = 'rbxassetid://5054663650'
                _ImageLabel4.ZIndex = 10
                _Frame8.Name = 'background'
                _Frame8.Parent = _Frame6
                _Frame8.Active = true
                _Frame8.BackgroundColor3 = currentShade1
                _Frame8.BorderSizePixel = 0
                _Frame8.Position = UDim2.new(0, 0, 1, 0)
                _Frame8.Size = UDim2.new(0, 250, 0, 250)
                _Frame8.ZIndex = 10

                table.insert(shade1, _Frame8)

                _TextLabel10.Name = 'Text Label'
                _TextLabel10.Parent = _Frame8
                _TextLabel10.BackgroundTransparency = 1
                _TextLabel10.BorderSizePixel = 0
                _TextLabel10.Position = UDim2.new(0, 5, 0, 80)
                _TextLabel10.Size = UDim2.new(0, 100, 0, 20)
                _TextLabel10.ZIndex = 10
                _TextLabel10.Font = Enum.Font.SourceSansLight
                _TextLabel10.TextSize = 20
                _TextLabel10.Text = 'Run Time:'
                _TextLabel10.TextColor3 = currentText1
                _TextLabel10.TextXAlignment = Enum.TextXAlignment.Left

                table.insert(text1, _TextLabel10)

                _TextLabel11.Name = 'Text Label2'
                _TextLabel11.Parent = _Frame8
                _TextLabel11.BackgroundTransparency = 1
                _TextLabel11.BorderSizePixel = 0
                _TextLabel11.Position = UDim2.new(0, 5, 0, 130)
                _TextLabel11.Size = UDim2.new(0, 100, 0, 20)
                _TextLabel11.ZIndex = 10
                _TextLabel11.Font = Enum.Font.SourceSansLight
                _TextLabel11.TextSize = 20
                _TextLabel11.Text = 'Statistics:'
                _TextLabel11.TextColor3 = currentText1
                _TextLabel11.TextXAlignment = Enum.TextXAlignment.Left

                table.insert(text1, _TextLabel11)

                _TextLabel12.Name = 'Text Label3'
                _TextLabel12.Parent = _Frame8
                _TextLabel12.BackgroundTransparency = 1
                _TextLabel12.BorderSizePixel = 0
                _TextLabel12.Position = UDim2.new(0, 5, 0, 10)
                _TextLabel12.Size = UDim2.new(0, 100, 0, 20)
                _TextLabel12.ZIndex = 10
                _TextLabel12.Font = Enum.Font.SourceSansLight
                _TextLabel12.TextSize = 20
                _TextLabel12.Text = 'Local Player:'
                _TextLabel12.TextColor3 = currentText1
                _TextLabel12.TextXAlignment = Enum.TextXAlignment.Left

                table.insert(text1, _TextLabel12)

                _TextLabel13.Name = 'Time'
                _TextLabel13.Parent = _Frame8
                _TextLabel13.BackgroundTransparency = 1
                _TextLabel13.BorderSizePixel = 0
                _TextLabel13.Position = UDim2.new(0, 5, 0, 105)
                _TextLabel13.Size = UDim2.new(0, 100, 0, 20)
                _TextLabel13.ZIndex = 10
                _TextLabel13.Font = Enum.Font.SourceSans
                _TextLabel13.FontSize = Enum.FontSize.Size14
                _TextLabel13.Text = 'LOADING'
                _TextLabel13.TextColor3 = currentText1
                _TextLabel13.TextXAlignment = Enum.TextXAlignment.Left

                table.insert(text1, _TextLabel13)

                _TextLabel14.Name = 'appearance'
                _TextLabel14.Parent = _Frame8
                _TextLabel14.BackgroundTransparency = 1
                _TextLabel14.BorderSizePixel = 0
                _TextLabel14.Position = UDim2.new(0, 5, 0, 55)
                _TextLabel14.Size = UDim2.new(0, 100, 0, 20)
                _TextLabel14.ZIndex = 10
                _TextLabel14.Font = Enum.Font.SourceSans
                _TextLabel14.FontSize = Enum.FontSize.Size14
                _TextLabel14.Text = 'Appearance: LOADING'
                _TextLabel14.TextColor3 = currentText1
                _TextLabel14.TextXAlignment = Enum.TextXAlignment.Left

                table.insert(text1, _TextLabel14)

                _TextLabel15.Name = 'maxplayers'
                _TextLabel15.Parent = _Frame8
                _TextLabel15.BackgroundTransparency = 1
                _TextLabel15.BorderSizePixel = 0
                _TextLabel15.Position = UDim2.new(0, 5, 0, 175)
                _TextLabel15.Size = UDim2.new(0, 100, 0, 20)
                _TextLabel15.ZIndex = 10
                _TextLabel15.Font = Enum.Font.SourceSans
                _TextLabel15.FontSize = Enum.FontSize.Size14
                _TextLabel15.Text = 'LOADING'
                _TextLabel15.TextColor3 = currentText1
                _TextLabel15.TextXAlignment = Enum.TextXAlignment.Left

                table.insert(text1, _TextLabel15)

                _TextLabel16.Name = 'name'
                _TextLabel16.Parent = _Frame8
                _TextLabel16.BackgroundTransparency = 1
                _TextLabel16.BorderSizePixel = 0
                _TextLabel16.Position = UDim2.new(0, 5, 0, 215)
                _TextLabel16.Size = UDim2.new(0, 240, 0, 30)
                _TextLabel16.ZIndex = 10
                _TextLabel16.Font = Enum.Font.SourceSans
                _TextLabel16.FontSize = Enum.FontSize.Size14
                _TextLabel16.Text = 'Place Name: LOADING'
                _TextLabel16.TextColor3 = currentText1
                _TextLabel16.TextWrapped = true
                _TextLabel16.TextXAlignment = Enum.TextXAlignment.Left
                _TextLabel16.TextYAlignment = Enum.TextYAlignment.Top

                table.insert(text1, _TextLabel16)

                _TextLabel17.Name = 'placeid'
                _TextLabel17.Parent = _Frame8
                _TextLabel17.BackgroundTransparency = 1
                _TextLabel17.BorderSizePixel = 0
                _TextLabel17.Position = UDim2.new(0, 5, 0, 195)
                _TextLabel17.Size = UDim2.new(0, 100, 0, 20)
                _TextLabel17.ZIndex = 10
                _TextLabel17.Font = Enum.Font.SourceSans
                _TextLabel17.FontSize = Enum.FontSize.Size14
                _TextLabel17.Text = 'Place ID: LOADING'
                _TextLabel17.TextColor3 = currentText1
                _TextLabel17.TextXAlignment = Enum.TextXAlignment.Left

                table.insert(text1, _TextLabel17)

                _TextLabel18.Name = 'playerid'
                _TextLabel18.Parent = _Frame8
                _TextLabel18.BackgroundTransparency = 1
                _TextLabel18.BorderSizePixel = 0
                _TextLabel18.Position = UDim2.new(0, 5, 0, 35)
                _TextLabel18.Size = UDim2.new(0, 100, 0, 20)
                _TextLabel18.ZIndex = 10
                _TextLabel18.Font = Enum.Font.SourceSans
                _TextLabel18.FontSize = Enum.FontSize.Size14
                _TextLabel18.Text = 'Player ID: LOADING'
                _TextLabel18.TextColor3 = currentText1
                _TextLabel18.TextXAlignment = Enum.TextXAlignment.Left

                table.insert(text1, _TextLabel18)

                _TextLabel19.Name = 'players'
                _TextLabel19.Parent = _Frame8
                _TextLabel19.BackgroundTransparency = 1
                _TextLabel19.BorderSizePixel = 0
                _TextLabel19.Position = UDim2.new(0, 5, 0, 155)
                _TextLabel19.Size = UDim2.new(0, 100, 0, 20)
                _TextLabel19.ZIndex = 10
                _TextLabel19.Font = Enum.Font.SourceSans
                _TextLabel19.FontSize = Enum.FontSize.Size14
                _TextLabel19.Text = 'LOADING'
                _TextLabel19.TextColor3 = currentText1
                _TextLabel19.TextXAlignment = Enum.TextXAlignment.Left

                table.insert(text1, _TextLabel19)

                _TextButton5.Name = 'CopyApp'
                _TextButton5.Parent = _Frame8
                _TextButton5.BackgroundColor3 = currentShade2
                _TextButton5.BorderSizePixel = 0
                _TextButton5.Position = UDim2.new(0, 210, 0, 55)
                _TextButton5.Size = UDim2.new(0, 35, 0, 20)
                _TextButton5.Font = Enum.Font.SourceSans
                _TextButton5.TextSize = 14
                _TextButton5.Text = 'Copy'
                _TextButton5.TextColor3 = currentText1
                _TextButton5.ZIndex = 10

                table.insert(shade2, _TextButton5)
                table.insert(text1, _TextButton5)

                _TextButton6.Name = 'CopyPlrID'
                _TextButton6.Parent = _Frame8
                _TextButton6.BackgroundColor3 = currentShade2
                _TextButton6.BorderSizePixel = 0
                _TextButton6.Position = UDim2.new(0, 210, 0, 35)
                _TextButton6.Size = UDim2.new(0, 35, 0, 20)
                _TextButton6.Font = Enum.Font.SourceSans
                _TextButton6.TextSize = 14
                _TextButton6.Text = 'Copy'
                _TextButton6.TextColor3 = currentText1
                _TextButton6.ZIndex = 10

                table.insert(shade2, _TextButton6)
                table.insert(text1, _TextButton6)

                _TextButton7.Name = 'CopyPlcID'
                _TextButton7.Parent = _Frame8
                _TextButton7.BackgroundColor3 = currentShade2
                _TextButton7.BorderSizePixel = 0
                _TextButton7.Position = UDim2.new(0, 210, 0, 195)
                _TextButton7.Size = UDim2.new(0, 35, 0, 20)
                _TextButton7.Font = Enum.Font.SourceSans
                _TextButton7.TextSize = 14
                _TextButton7.Text = 'Copy'
                _TextButton7.TextColor3 = currentText1
                _TextButton7.ZIndex = 10

                table.insert(shade2, _TextButton7)
                table.insert(text1, _TextButton7)

                local v1177 = _Frame6

                _Frame6.TweenPosition(v1177, UDim2.new(0.5, -130, 0, 100), 'InOut', 'Quart', 0.5, true, nil)
                wait(0.5)
                _TextButton4.MouseButton1Click:Connect(function()
                    _Frame6:TweenPosition(UDim2.new(0.5, -130, 0, -500), 'InOut', 'Quart', 0.5, true, nil)
                    wait(0.6)
                    _Frame6:Destroy()

                    u1156 = true
                end)

                local v1178 = MarketplaceService:GetProductInfo(PlaceId)

                _Frame8.name.Text = 'Place Name: ' .. v1178.Name
                _Frame8.playerid.Text = 'Player ID: ' .. p1157.UserId
                _Frame8.maxplayers.Text = Players.MaxPlayers .. ' Players Max'
                _Frame8.placeid.Text = 'Place ID: ' .. PlaceId

                _TextButton5.MouseButton1Click:Connect(function()
                    toClipboard(p1157.CharacterAppearanceId)
                end)
                _TextButton6.MouseButton1Click:Connect(function()
                    toClipboard(p1157.UserId)
                end)
                _TextButton7.MouseButton1Click:Connect(function()
                    toClipboard(PlaceId)
                end)

                while true do
                    local v1179 = Players:GetPlayers()

                    _Frame8.players.Text = #v1179 .. ' Player(s)'
                    _Frame8.appearance.Text = 'Appearance: ' .. p1157.CharacterAppearanceId

                    local v1180 = math.floor(workspace.DistributedGameTime)
                    local v1181 = math.floor(workspace.DistributedGameTime / 60)
                    local v1182 = math.floor(workspace.DistributedGameTime / 60 / 60)
                    local v1183 = v1180 - v1181 * 60
                    local v1184 = v1181 - v1182 * 60

                    if v1182 < 1 then
                        if v1184 < 1 then
                            _Frame8.Time.Text = v1183 .. ' Second(s)'
                        else
                            _Frame8.Time.Text = v1184 .. ' Minute(s), ' .. v1183 .. ' Second(s)'
                        end
                    else
                        _Frame8.Time.Text = v1182 .. ' Hour(s), ' .. v1184 .. ' Minute(s), ' .. v1183 .. ' Second(s)'
                    end

                    wait(1)

                    if _Frame8.Parent == nil then
                        return
                    end
                end
            end)
        end
    end)
    addcmd('jobid', {}, function(_, _)
        local v1185 = 'Roblox.GameLauncher.joinGameInstance(' .. PlaceId .. ', "' .. JobId .. '")'

        toClipboard(v1185)
    end)
    addcmd('notifyjobid', {}, function(_, _)
        notify('JobId / PlaceId', JobId .. ' / ' .. PlaceId)
    end)
    addcmd('breakloops', {
        'break',
    }, function(_, _)
        u688 = tick()
    end)
    addcmd('gametp', {
        'gameteleport',
    }, function(p1186, _)
        TeleportService:Teleport(p1186[1])
    end)
    addcmd('rejoin', {
        'rj',
    }, function(_, _)
        if #Players:GetPlayers() > 1 then
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, Players.LocalPlayer)
        else
            Players.LocalPlayer:Kick('\nRejoining...')
            wait()
            TeleportService:Teleport(PlaceId, Players.LocalPlayer)
        end
    end)
    addcmd('autorejoin', {
        'autorj',
    }, function(_, _)
        COREGUI:FindFirstChild('RobloxPromptGui'):FindFirstChild('promptOverlay').DescendantAdded:Connect(function(p1187)
            if p1187.Name == 'ErrorTitle' then
                p1187:GetPropertyChangedSignal('Text'):Connect(function()
                    if p1187.Text:sub(0, 12) == 'Disconnected' then
                        if #Players:GetPlayers() > 1 then
                            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, Players.LocalPlayer)
                        else
                            Players.LocalPlayer:Kick('\nRejoining...')
                            wait()
                            TeleportService:Teleport(PlaceId, Players.LocalPlayer)
                        end
                    end
                end)
            end
        end)
        notify('Auto Rejoin', 'Auto rejoin enabled')
    end)
    addcmd('serverhop', {
        'shop',
    }, function(_, _)
        if httprequest then
            local v1188 = {}
            local v1189 = httprequest({
                Url = string.format('https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100', PlaceId),
            })
            local v1190 = HttpService:JSONDecode(v1189.Body)

            if v1190 and v1190.data then
                local v1191 = next
                local _data = v1190.data
                local v1193 = nil

                while true do
                    local v1194

                    v1193, v1194 = v1191(_data, v1193)

                    if v1193 == nil then
                        break
                    end
                    if type(v1194) == 'table' and (tonumber(v1194.playing) and (tonumber(v1194.maxPlayers) and (v1194.playing < v1194.maxPlayers and v1194.id ~= JobId))) then
                        table.insert(v1188, 1, v1194.id)
                    end
                end
            end
            if #v1188 <= 0 then
                local _ = notify
            else
                TeleportService:TeleportToPlaceInstance(PlaceId, v1188[math.random(1, #v1188)], Players.LocalPlayer)
            end
        end
    end)
    addcmd('joinplayer', {
        'joinp',
    }, function(p1195, _)
        local u1196 = 0

        function ToServer(p1197, p1198)
            if p1195[2] == nil then
                p1198 = PlaceId
            end
            if not pcall(function()
                local v1199, v1200 = pcall(function()
                    if tonumber(p1197) then
                        return tonumber(p1197)
                    else
                        return Players:GetUserIdFromNameAsync(p1197)
                    end
                end)

                if v1199 then
                    notify('Join Player', 'Loading servers. Hold on a second.')

                    local v1201 = 'https://games.roblox.com/v1/games/' .. p1198 .. '/servers/Public?sortOrder=Asc&limit=100'
                    local v1202 = HttpService:JSONDecode(game:HttpGet(v1201))

                    function tablelength(p1203)
                        local v1204, v1205, v1206 = pairs(p1203)
                        local v1207 = 0

                        while true do
                            v1206 = v1204(v1205, v1206)

                            if v1206 == nil then
                                break
                            end

                            v1207 = v1207 + 1
                        end

                        return v1207
                    end

                    local v1208 = nil

                    for v1209 = 1, tonumber(tablelength(v1202.data))do
                        local v1210, v1211, v1212 = pairs(v1202.data[v1209].playerIds)
                        local v1213 = v1209

                        while true do
                            local v1214

                            v1212, v1214 = v1210(v1211, v1212)

                            if v1212 == nil then
                                break
                            end
                            if v1214 == v1200 then
                                v1208 = v1202.data[v1213].id
                            end
                        end
                    end

                    if v1208 == nil then
                        notify('Join Error', 'Unable to join user.')
                    else
                        notify('Join Player', 'Joining ' .. p1197)
                        TeleportService:TeleportToPlaceInstance(p1198, v1208, Players.LocalPlayer)
                    end
                else
                    notify('Join Error', 'Username/UserID does not exist')
                end
            end) then
                if u1196 >= 3 then
                    notify('Join Error', 'Error while trying to join.')
                else
                    u1196 = u1196 + 1

                    print('ERROR retrying ' .. u1196 .. '/3')
                    notify('Join Error', 'Error while trying to join. Retrying ' .. u1196 .. '/3.')
                    ToServer(p1197, p1198)
                end
            end
        end

        ToServer(p1195[1], p1195[2])
    end)
    addcmd('exit', {}, function(_, _)
        game:shutdown()
    end)

    local u1215 = nil

    addcmd('noclip', {}, function(_, p1216)
        Clip = false

        wait(0.1)

        u1215 = RunService.Stepped:Connect(function()
            if Clip == false and p1216.Character ~= nil then
                local v1217, v1218, v1219 = pairs(p1216.Character:GetDescendants())

                while true do
                    local v1220

                    v1219, v1220 = v1217(v1218, v1219)

                    if v1219 == nil then
                        break
                    end
                    if v1220:IsA('BasePart') and (v1220.CanCollide == true and v1220.Name ~= floatName) then
                        v1220.CanCollide = false
                    end
                end
            end
        end)
    end)
    addcmd('clip', {
        'unnoclip',
    }, function(_, _)
        if u1215 then
            u1215:Disconnect()
        end

        Clip = true
    end)
    addcmd('togglenoclip', {}, function(_, _)
        if Clip then
            execCmd('noclip')
        else
            execCmd('clip')
        end
    end)

    FLYING = false
    QEfly = true
    iyflyspeed = 1
    vehicleflyspeed = 1

    function sFLY(p1221)
        repeat
            wait()
        until Players.LocalPlayer and (Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character)) and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
        repeat
            wait()
        until IYMouse

        if flyKeyDown or flyKeyUp then
            flyKeyDown:Disconnect()
            flyKeyUp:Disconnect()
        end

        local u1222 = getRoot(Players.LocalPlayer.Character)
        local u1223 = {
            F = 0,
            B = 0,
            L = 0,
            R = 0,
            Q = 0,
            E = 0,
        }
        local u1224 = {
            F = 0,
            B = 0,
            L = 0,
            R = 0,
            Q = 0,
            E = 0,
        }
        local u1225 = 0

        local function v1228()
            FLYING = true

            local _BodyGyro = Instance.new('BodyGyro')
            local _BodyVelocity = Instance.new('BodyVelocity')

            _BodyGyro.P = 90000
            _BodyGyro.Parent = u1222
            _BodyVelocity.Parent = u1222
            _BodyGyro.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
            _BodyGyro.cframe = u1222.CFrame
            _BodyVelocity.velocity = Vector3.new(0, 0, 0)
            _BodyVelocity.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)

            task.spawn(function()
                while true do
                    wait()

                    if not p1221 and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                        Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
                    end
                    if u1223.L + u1223.R ~= 0 or (u1223.F + u1223.B ~= 0 or u1223.Q + u1223.E ~= 0) then
                        u1225 = 50
                    elseif u1223.L + u1223.R == 0 and (u1223.F + u1223.B == 0 and (u1223.Q + u1223.E == 0 and u1225 ~= 0)) then
                        u1225 = 0
                    end
                    if u1223.L + u1223.R ~= 0 or (u1223.F + u1223.B ~= 0 or u1223.Q + u1223.E ~= 0) then
                        _BodyVelocity.velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (u1223.F + u1223.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(u1223.L + u1223.R, (u1223.F + u1223.B + u1223.Q + u1223.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * u1225
                        u1224 = {
                            F = u1223.F,
                            B = u1223.B,
                            L = u1223.L,
                            R = u1223.R,
                        }
                    elseif u1223.L + u1223.R ~= 0 or (u1223.F + u1223.B ~= 0 or (u1223.Q + u1223.E ~= 0 or u1225 == 0)) then
                        _BodyVelocity.velocity = Vector3.new(0, 0, 0)
                    else
                        _BodyVelocity.velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (u1224.F + u1224.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(u1224.L + u1224.R, (u1224.F + u1224.B + u1223.Q + u1223.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * u1225
                    end

                    _BodyGyro.cframe = workspace.CurrentCamera.CoordinateFrame

                    if not FLYING then
                        u1223 = {
                            F = 0,
                            B = 0,
                            L = 0,
                            R = 0,
                            Q = 0,
                            E = 0,
                        }
                        u1224 = {
                            F = 0,
                            B = 0,
                            L = 0,
                            R = 0,
                            Q = 0,
                            E = 0,
                        }
                        u1225 = 0

                        _BodyGyro:Destroy()
                        _BodyVelocity:Destroy()

                        if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
                            Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
                        end

                        return
                    end
                end
            end)
        end

        flyKeyDown = IYMouse.KeyDown:Connect(function(p1229)
            if p1229:lower() ~= 'w' then
                if p1229:lower() ~= 's' then
                    if p1229:lower() ~= 'a' then
                        if p1229:lower() ~= 'd' then
                            if QEfly and p1229:lower() == 'e' then
                                u1223.Q = (p1221 and vehicleflyspeed or iyflyspeed) * 2
                            elseif QEfly and p1229:lower() == 'q' then
                                u1223.E = -(p1221 and vehicleflyspeed or iyflyspeed) * 2
                            end
                        else
                            u1223.R = p1221 and vehicleflyspeed or iyflyspeed
                        end
                    else
                        u1223.L = -(p1221 and vehicleflyspeed or iyflyspeed)
                    end
                else
                    u1223.B = -(p1221 and vehicleflyspeed or iyflyspeed)
                end
            else
                u1223.F = p1221 and vehicleflyspeed or iyflyspeed
            end

            pcall(function()
                workspace.CurrentCamera.CameraType = Enum.CameraType.Track
            end)
        end)
        flyKeyUp = IYMouse.KeyUp:Connect(function(p1230)
            if p1230:lower() ~= 'w' then
                if p1230:lower() ~= 's' then
                    if p1230:lower() ~= 'a' then
                        if p1230:lower() ~= 'd' then
                            if p1230:lower() ~= 'e' then
                                if p1230:lower() == 'q' then
                                    u1223.E = 0
                                end
                            else
                                u1223.Q = 0
                            end
                        else
                            u1223.R = 0
                        end
                    else
                        u1223.L = 0
                    end
                else
                    u1223.B = 0
                end
            else
                u1223.F = 0
            end
        end)

        v1228()
    end
    function NOFLY()
        FLYING = false

        if flyKeyDown or flyKeyUp then
            flyKeyDown:Disconnect()
            flyKeyUp:Disconnect()
        end
        if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
            Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
        end

        pcall(function()
            workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
        end)
    end

    print('loaded fly')

    speeds = 1

    local _LocalPlayer2 = game:GetService('Players').LocalPlayer
    local _Character7 = game.Players.LocalPlayer.Character

    if _Character7 then
        _Character7:FindFirstChildWhichIsA('Humanoid')
    end

    nowe = false

    function mFLY()
        if nowe ~= true then
            nowe = true

            for _ = 1, speeds do
                spawn(function()
                    local _Heartbeat = game:GetService('RunService').Heartbeat

                    tpwalking = true

                    local _Character8 = game.Players.LocalPlayer.Character
                    local v1235

                    if _Character8 then
                        v1235 = _Character8:FindFirstChildWhichIsA('Humanoid')
                    else
                        v1235 = _Character8
                    end

                    while tpwalking and (_Heartbeat:Wait() and (_Character8 and (v1235 and v1235.Parent))) do
                        if v1235.MoveDirection.Magnitude > 0 then
                            _Character8:TranslateBy(v1235.MoveDirection)
                        end
                    end
                end)
            end

            game.Players.LocalPlayer.Character.Animate.Disabled = true

            local _Character9 = game.Players.LocalPlayer.Character
            local v1237 = _Character9:FindFirstChildOfClass('Humanoid') or _Character9:FindFirstChildOfClass('AnimationController')
            local v1238 = next
            local v1239, v1240 = v1237:GetPlayingAnimationTracks()

            while true do
                local v1241

                v1240, v1241 = v1238(v1239, v1240)

                if v1240 == nil then
                    break
                end

                v1241:AdjustSpeed(0)
            end

            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
            _LocalPlayer2.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
        else
            nowe = false

            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
            _LocalPlayer2.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
            _LocalPlayer2.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
        end
        if game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid').RigType ~= Enum.HumanoidRigType.R6 then
            local _LocalPlayer3 = game.Players.LocalPlayer
            local _UpperTorso = _LocalPlayer3.Character.UpperTorso
            local v1244 = {
                f = 0,
                b = 0,
                l = 0,
                r = 0,
            }
            local v1245 = {
                f = 0,
                b = 0,
                l = 0,
                r = 0,
            }
            local v1246 = 50
            local v1247 = 0
            local _BodyGyro2 = Instance.new('BodyGyro', _UpperTorso)

            _BodyGyro2.P = 90000
            _BodyGyro2.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
            _BodyGyro2.cframe = _UpperTorso.CFrame

            local _BodyVelocity2 = Instance.new('BodyVelocity', _UpperTorso)

            _BodyVelocity2.velocity = Vector3.new(0, 0.1, 0)
            _BodyVelocity2.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)

            if nowe == true then
                _LocalPlayer3.Character.Humanoid.PlatformStand = true
            end

            while nowe == true or game:GetService('Players').LocalPlayer.Character.Humanoid.Health == 0 do
                wait()

                if v1244.l + v1244.r ~= 0 or v1244.f + v1244.b ~= 0 then
                    v1247 = v1247 + 0.5 + v1247 / v1246

                    if v1246 < v1247 then
                        v1247 = v1246
                    end
                elseif v1244.l + v1244.r == 0 and (v1244.f + v1244.b == 0 and v1247 ~= 0) then
                    local v1250 = v1247 - 1

                    v1247 = v1250 < 0 and 0 or v1250
                end
                if v1244.l + v1244.r ~= 0 or v1244.f + v1244.b ~= 0 then
                    _BodyVelocity2.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v1244.f + v1244.b) + (game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v1244.l + v1244.r, (v1244.f + v1244.b) * 0.2, 0).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * v1247
                    v1245 = {
                        f = v1244.f,
                        b = v1244.b,
                        l = v1244.l,
                        r = v1244.r,
                    }
                elseif v1244.l + v1244.r ~= 0 or (v1244.f + v1244.b ~= 0 or v1247 == 0) then
                    _BodyVelocity2.velocity = Vector3.new(0, 0, 0)
                else
                    _BodyVelocity2.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v1245.f + v1245.b) + (game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v1245.l + v1245.r, (v1245.f + v1245.b) * 0.2, 0).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * v1247
                end

                _BodyGyro2.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((v1244.f + v1244.b) * 50 * v1247 / v1246), 0, 0)
            end

            _BodyGyro2:Destroy()
            _BodyVelocity2:Destroy()

            _LocalPlayer3.Character.Humanoid.PlatformStand = false
            game.Players.LocalPlayer.Character.Animate.Disabled = false
            tpwalking = false
        else
            local _LocalPlayer4 = game.Players.LocalPlayer
            local _Torso = _LocalPlayer4.Character.Torso
            local v1253 = {
                f = 0,
                b = 0,
                l = 0,
                r = 0,
            }
            local v1254 = {
                f = 0,
                b = 0,
                l = 0,
                r = 0,
            }
            local v1255 = 50
            local v1256 = 0
            local _BodyGyro3 = Instance.new('BodyGyro', _Torso)

            _BodyGyro3.P = 90000
            _BodyGyro3.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
            _BodyGyro3.cframe = _Torso.CFrame

            local _BodyVelocity3 = Instance.new('BodyVelocity', _Torso)

            _BodyVelocity3.velocity = Vector3.new(0, 0.1, 0)
            _BodyVelocity3.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)

            if nowe == true then
                _LocalPlayer4.Character.Humanoid.PlatformStand = true
            end

            while nowe == true or game:GetService('Players').LocalPlayer.Character.Humanoid.Health == 0 do
                game:GetService('RunService').RenderStepped:Wait()

                if v1253.l + v1253.r ~= 0 or v1253.f + v1253.b ~= 0 then
                    v1256 = v1256 + 0.5 + v1256 / v1255

                    if v1255 < v1256 then
                        v1256 = v1255
                    end
                elseif v1253.l + v1253.r == 0 and (v1253.f + v1253.b == 0 and v1256 ~= 0) then
                    local v1259 = v1256 - 1

                    v1256 = v1259 < 0 and 0 or v1259
                end
                if v1253.l + v1253.r ~= 0 or v1253.f + v1253.b ~= 0 then
                    _BodyVelocity3.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v1253.f + v1253.b) + (game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v1253.l + v1253.r, (v1253.f + v1253.b) * 0.2, 0).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * v1256
                    v1254 = {
                        f = v1253.f,
                        b = v1253.b,
                        l = v1253.l,
                        r = v1253.r,
                    }
                elseif v1253.l + v1253.r ~= 0 or (v1253.f + v1253.b ~= 0 or v1256 == 0) then
                    _BodyVelocity3.velocity = Vector3.new(0, 0, 0)
                else
                    _BodyVelocity3.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v1254.f + v1254.b) + (game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v1254.l + v1254.r, (v1254.f + v1254.b) * 0.2, 0).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * v1256
                end

                _BodyGyro3.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((v1253.f + v1253.b) * 50 * v1256 / v1255), 0, 0)
            end

            _BodyGyro3:Destroy()
            _BodyVelocity3:Destroy()

            _LocalPlayer4.Character.Humanoid.PlatformStand = false
            game.Players.LocalPlayer.Character.Animate.Disabled = false
            tpwalking = false
        end
    end

    addcmd('fly', {}, function(p1260, _)
        if p1260[1] and isNumber(p1260[1]) then
            iyflyspeed = p1260[1]
        end
        if nowe ~= false then
            if nowe == true then
                speeds = iyflyspeed or 1

                if nowe == true then
                    tpwalking = false

                    for _ = 1, speeds do
                        spawn(function()
                            local _Heartbeat2 = game:GetService('RunService').Heartbeat

                            tpwalking = true

                            local _Character10 = game.Players.LocalPlayer.Character
                            local v1263

                            if _Character10 then
                                v1263 = _Character10:FindFirstChildWhichIsA('Humanoid')
                            else
                                v1263 = _Character10
                            end

                            while tpwalking and (_Heartbeat2:Wait() and (_Character10 and (v1263 and v1263.Parent))) do
                                if v1263.MoveDirection.Magnitude > 0 then
                                    _Character10:TranslateBy(v1263.MoveDirection)
                                end
                            end
                        end)
                    end
                end
            end
        else
            speeds = iyflyspeed or 1

            wait()
            mFLY()
            wait()

            if nowe == true then
                tpwalking = false

                for _ = 1, speeds do
                    spawn(function()
                        local _Heartbeat3 = game:GetService('RunService').Heartbeat

                        tpwalking = true

                        local _Character11 = game.Players.LocalPlayer.Character
                        local v1266

                        if _Character11 then
                            v1266 = _Character11:FindFirstChildWhichIsA('Humanoid')
                        else
                            v1266 = _Character11
                        end

                        while tpwalking and (_Heartbeat3:Wait() and (_Character11 and (v1266 and v1266.Parent))) do
                            if v1266.MoveDirection.Magnitude > 0 then
                                _Character11:TranslateBy(v1266.MoveDirection)
                            end
                        end
                    end)
                end
            end
        end
    end)
    addcmd('flyspeed', {
        'flysp',
    }, function(p1267, _)
        local v1268 = p1267[1] or 1

        if isNumber(v1268) then
            speeds = v1268

            if nowe == true then
                tpwalking = false

                for _ = 1, speeds do
                    spawn(function()
                        local _Heartbeat4 = game:GetService('RunService').Heartbeat

                        tpwalking = true

                        local _Character12 = game.Players.LocalPlayer.Character
                        local v1271

                        if _Character12 then
                            v1271 = _Character12:FindFirstChildWhichIsA('Humanoid')
                        else
                            v1271 = _Character12
                        end

                        while tpwalking and (_Heartbeat4:Wait() and (_Character12 and (v1271 and v1271.Parent))) do
                            if v1271.MoveDirection.Magnitude > 0 then
                                _Character12:TranslateBy(v1271.MoveDirection)
                            end
                        end
                    end)
                end
            end
        end
    end)
    addcmd('unfly', {
        'nofly',
    }, function(_, _)
        if nowe == true then
            speeds = 1

            mFLY()
        end
    end)
    addcmd('novfly', {
        'unvehiclefly',
        'novehiclefly',
        'unvfly',
    }, function(_, _)
        NOFLY()
    end)
    addcmd('vfly', {
        'vehiclefly',
    }, function(p1272, _)
        NOFLY()
        wait()
        sFLY(true)

        if p1272[1] and isNumber(p1272[1]) then
            vehicleflyspeed = p1272[1]
        end
    end)
    addcmd('togglevfly', {}, function(_, _)
        if FLYING then
            NOFLY()
        else
            sFLY(true)
        end
    end)
    addcmd('vflyspeed', {
        'vflysp',
        'vehicleflyspeed',
        'vehicleflysp',
    }, function(p1273, _)
        local v1274 = p1273[1] or 1

        if isNumber(v1274) then
            vehicleflyspeed = v1274
        end
    end)
    addcmd('qefly', {
        'flyqe',
    }, function(p1275, _)
        if p1275[1] ~= 'false' then
            QEfly = true
        else
            QEfly = false
        end
    end)
    addcmd('togglefly', {}, function(_, _)
        if FLYING then
            NOFLY()
        else
            sFLY()
        end
    end)

    CFspeed = 50

    addcmd('cframefly', {
        'cfly',
    }, function(_, p1276)
        p1276.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true

        local _Head = p1276.Character:WaitForChild('Head')

        _Head.Anchored = true

        if CFloop then
            CFloop:Disconnect()
        end

        CFloop = RunService.Heartbeat:Connect(function(p1278)
            local v1279 = p1276.Character:FindFirstChildOfClass('Humanoid').MoveDirection * (CFspeed * p1278)
            local _CFrame2 = _Head.CFrame
            local _CFrame3 = workspace.CurrentCamera.CFrame
            local _Position3 = _CFrame2:ToObjectSpace(_CFrame3).Position
            local v1283 = _CFrame3 * CFrame.new(-_Position3.X, -_Position3.Y, -_Position3.Z + 1)
            local _Position4 = v1283.Position
            local _Position5 = _CFrame2.Position
            local v1286 = CFrame.new(_Position4, Vector3.new(_Position5.X, _Position4.Y, _Position5.Z)):VectorToObjectSpace(v1279)

            _Head.CFrame = CFrame.new(_Position5) * (v1283 - _Position4) * CFrame.new(v1286)
        end)
    end)
    addcmd('uncframefly', {
        'uncfly',
    }, function(_, p1287)
        if CFloop then
            CFloop:Disconnect()

            p1287.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
            p1287.Character:WaitForChild('Head').Anchored = false
        end
    end)
    addcmd('cframeflyspeed', {
        'cflyspeed',
    }, function(p1288, _)
        if isNumber(p1288[1]) then
            CFspeed = p1288[1]
        end
    end)

    Floating = false
    floatName = randomString()

    addcmd('float', {
        'platform',
    }, function(_, p1289)
        Floating = true

        local _Character13 = p1289.Character

        if _Character13 and not _Character13:FindFirstChild(floatName) then
            task.spawn(function()
                local _Part = Instance.new('Part')

                _Part.Name = floatName
                _Part.Parent = _Character13
                _Part.Transparency = 1
                _Part.Size = Vector3.new(2, 0.2, 1.5)
                _Part.Anchored = true

                local u1292 = -3.1

                _Part.CFrame = getRoot(_Character13).CFrame * CFrame.new(0, u1292, 0)

                notify('Float', 'Float Enabled (Q = down & E = up)')

                qUp = IYMouse.KeyUp:Connect(function(p1293)
                    if p1293 == 'q' then
                        u1292 = u1292 + 0.5
                    end
                end)
                eUp = IYMouse.KeyUp:Connect(function(p1294)
                    if p1294 == 'e' then
                        u1292 = u1292 - 0.5
                    end
                end)
                qDown = IYMouse.KeyDown:Connect(function(p1295)
                    if p1295 == 'q' then
                        u1292 = u1292 - 0.5
                    end
                end)
                eDown = IYMouse.KeyDown:Connect(function(p1296)
                    if p1296 == 'e' then
                        u1292 = u1292 + 0.5
                    end
                end)
                floatDied = p1289.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
                    FloatingFunc:Disconnect()
                    _Part:Destroy()
                    qUp:Disconnect()
                    eUp:Disconnect()
                    qDown:Disconnect()
                    eDown:Disconnect()
                    floatDied:Disconnect()
                end)

                local function v1297()
                    if _Character13:FindFirstChild(floatName) and getRoot(_Character13) then
                        _Part.CFrame = getRoot(_Character13).CFrame * CFrame.new(0, u1292, 0)
                    else
                        FloatingFunc:Disconnect()
                        _Part:Destroy()
                        qUp:Disconnect()
                        eUp:Disconnect()
                        qDown:Disconnect()
                        eDown:Disconnect()
                        floatDied:Disconnect()
                    end
                end

                FloatingFunc = RunService.Heartbeat:Connect(v1297)
            end)
        end
    end)
    addcmd('unfloat', {
        'nofloat',
        'unplatform',
        'noplatform',
    }, function(_, p1298)
        Floating = false

        local _Character14 = p1298.Character

        notify('Float', 'Float Disabled')

        if _Character14:FindFirstChild(floatName) then
            _Character14:FindFirstChild(floatName):Destroy()
        end
        if floatDied then
            FloatingFunc:Disconnect()
            qUp:Disconnect()
            eUp:Disconnect()
            qDown:Disconnect()
            eDown:Disconnect()
            floatDied:Disconnect()
        end
    end)
    addcmd('togglefloat', {}, function(_, _)
        if Floating then
            execCmd('unfloat')
        else
            execCmd('float')
        end
    end)

    swimming = false

    local _Gravity = workspace.Gravity
    local u1301 = nil

    addcmd('swim', {}, function(_, p1302)
        if not swimming and (p1302 and p1302.Character) and p1302.Character:FindFirstChildWhichIsA('Humanoid') then
            _Gravity = workspace.Gravity
            workspace.Gravity = 0

            local function v1303()
                workspace.Gravity = _Gravity
                swimming = false
            end

            local _Humanoid2 = p1302.Character:FindFirstChildWhichIsA('Humanoid')

            gravReset = _Humanoid2.Died:Connect(v1303)

            local v1305 = Enum.HumanoidStateType:GetEnumItems()

            table.remove(v1305, table.find(v1305, Enum.HumanoidStateType.None))

            local v1306, v1307, v1308 = pairs(v1305)

            while true do
                local v1309

                v1308, v1309 = v1306(v1307, v1308)

                if v1308 == nil then
                    break
                end

                _Humanoid2:SetStateEnabled(v1309, false)
            end

            _Humanoid2:ChangeState(Enum.HumanoidStateType.Swimming)

            u1301 = RunService.Heartbeat:Connect(function()
                pcall(function()
                    p1302.Character.HumanoidRootPart.Velocity = (_Humanoid2.MoveDirection ~= Vector3.new() or UserInputService:IsKeyDown(Enum.KeyCode.Space)) and p1302.Character.HumanoidRootPart.Velocity or Vector3.new()
                end)
            end)
            swimming = true
        end
    end)
    addcmd('unswim', {
        'noswim',
    }, function(_, p1310)
        if p1310 and p1310.Character and p1310.Character:FindFirstChildWhichIsA('Humanoid') then
            workspace.Gravity = _Gravity
            swimming = false

            if gravReset then
                gravReset:Disconnect()
            end
            if u1301 ~= nil then
                u1301:Disconnect()

                u1301 = nil
            end

            local _Humanoid3 = p1310.Character:FindFirstChildWhichIsA('Humanoid')
            local v1312 = Enum.HumanoidStateType:GetEnumItems()

            table.remove(v1312, table.find(v1312, Enum.HumanoidStateType.None))

            local v1313, v1314, v1315 = pairs(v1312)

            while true do
                local v1316

                v1315, v1316 = v1313(v1314, v1315)

                if v1315 == nil then
                    break
                end

                _Humanoid3:SetStateEnabled(v1316, true)
            end
        end
    end)
    addcmd('toggleswim', {}, function(_, _)
        if swimming then
            execCmd('unswim')
        else
            execCmd('swim')
        end
    end)
    addcmd('setwaypoint', {
        'swp',
        'setwp',
        'spos',
        'saveposition',
        'savepos',
    }, function(_, p1317)
        local v1318 = tostring(getstring(1))

        if getRoot(p1317.Character) then
            notify('Modified Waypoints', 'Created waypoint: ' .. getstring(1))

            local v1319 = getRoot(p1317.Character)

            WayPoints[#WayPoints + 1] = {
                NAME = v1318,
                COORD = {
                    math.floor(v1319.Position.X),
                    math.floor(v1319.Position.Y),
                    math.floor(v1319.Position.Z),
                },
                GAME = PlaceId,
            }

            if AllWaypoints ~= nil then
                AllWaypoints[#AllWaypoints + 1] = {
                    NAME = v1318,
                    COORD = {
                        math.floor(v1319.Position.X),
                        math.floor(v1319.Position.Y),
                        math.floor(v1319.Position.Z),
                    },
                    GAME = PlaceId,
                }
            end
        end

        refreshwaypoints()
        updatesaves()
    end)
    addcmd('waypointpos', {
        'wpp',
        'setwaypointposition',
        'setpos',
        'setwaypoint',
        'setwaypointpos',
    }, function(p1320, p1321)
        local v1322 = tostring(getstring(1))

        if getRoot(p1321.Character) then
            notify('Modified Waypoints', 'Created waypoint: ' .. getstring(1))

            WayPoints[#WayPoints + 1] = {
                NAME = v1322,
                COORD = {
                    p1320[2],
                    p1320[3],
                    p1320[4],
                },
                GAME = PlaceId,
            }

            if AllWaypoints ~= nil then
                AllWaypoints[#AllWaypoints + 1] = {
                    NAME = v1322,
                    COORD = {
                        p1320[2],
                        p1320[3],
                        p1320[4],
                    },
                    GAME = PlaceId,
                }
            end
        end

        refreshwaypoints()
        updatesaves()
    end)
    addcmd('waypoints', {
        'positions',
    }, function(_, _)
        if u277 == false then
            u277 = true

            Settings:TweenPosition(UDim2.new(0, 0, 0, 45), 'InOut', 'Quart', 0.5, true, nil)

            CMDsF.Visible = false
        end

        KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), 'InOut', 'Quart', 0.5, true, nil)
        AliasesFrame:TweenPosition(UDim2.new(0, 0, 0, 175), 'InOut', 'Quart', 0.5, true, nil)
        PluginsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), 'InOut', 'Quart', 0.5, true, nil)
        PositionsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), 'InOut', 'Quart', 0.5, true, nil)
        wait(0.5)

        SettingsHolder.Visible = false

        maximizeHolder()
    end)

    waypointParts = {}

    addcmd('showwaypoints', {
        'showwp',
        'showwps',
    }, function(_, _)
        execCmd('hidewaypoints')
        wait()

        local v1323, v1324, v1325 = pairs(WayPoints)

        while true do
            local v1326

            v1325, v1326 = v1323(v1324, v1325)

            if v1325 == nil then
                break
            end

            local v1327 = WayPoints[v1325].COORD[1]
            local v1328 = WayPoints[v1325].COORD[2]
            local v1329 = WayPoints[v1325].COORD[3]
            local _Part2 = Instance.new('Part')

            _Part2.Size = Vector3.new(5, 5, 5)
            _Part2.CFrame = CFrame.new(v1327, v1328, v1329)
            _Part2.Parent = workspace
            _Part2.Anchored = true
            _Part2.CanCollide = false

            table.insert(waypointParts, _Part2)

            local _BoxHandleAdornment4 = Instance.new('BoxHandleAdornment')

            _BoxHandleAdornment4.Adornee = _Part2
            _BoxHandleAdornment4.AlwaysOnTop = true
            _BoxHandleAdornment4.ZIndex = 10
            _BoxHandleAdornment4.Size = _Part2.Size
            _BoxHandleAdornment4.Parent = _Part2
        end

        local v1332, v1333, v1334 = pairs(pWayPoints)

        while true do
            local v1335

            v1334, v1335 = v1332(v1333, v1334)

            if v1334 == nil then
                break
            end

            local _BoxHandleAdornment5 = Instance.new('BoxHandleAdornment')

            _BoxHandleAdornment5.Adornee = pWayPoints[v1334].COORD[1]
            _BoxHandleAdornment5.AlwaysOnTop = true
            _BoxHandleAdornment5.ZIndex = 10
            _BoxHandleAdornment5.Size = pWayPoints[v1334].COORD[1].Size
            _BoxHandleAdornment5.Parent = pWayPoints[v1334].COORD[1]

            table.insert(waypointParts, _BoxHandleAdornment5)
        end
    end)
    addcmd('hidewaypoints', {
        'hidewp',
        'hidewps',
    }, function(_, _)
        local v1337, v1338, v1339 = pairs(waypointParts)

        while true do
            local v1340

            v1339, v1340 = v1337(v1338, v1339)

            if v1339 == nil then
                break
            end

            v1340:Destroy()
        end

        waypointParts = {}
    end)
    addcmd('waypoint', {
        'wp',
        'lpos',
        'loadposition',
        'loadpos',
    }, function(_, p1341)
        local v1342 = tostring(getstring(1))

        if p1341.Character then
            local v1343, v1344, v1345 = pairs(WayPoints)

            while true do
                local v1346

                v1345, v1346 = v1343(v1344, v1345)

                if v1345 == nil then
                    break
                end
                if tostring(WayPoints[v1345].NAME):lower() == tostring(v1342):lower() then
                    local v1347 = WayPoints[v1345].COORD[1]
                    local v1348 = WayPoints[v1345].COORD[2]
                    local v1349 = WayPoints[v1345].COORD[3]

                    getRoot(p1341.Character).CFrame = CFrame.new(v1347, v1348, v1349)
                end
            end

            local v1350, v1351, v1352 = pairs(pWayPoints)

            while true do
                local v1353

                v1352, v1353 = v1350(v1351, v1352)

                if v1352 == nil then
                    break
                end
                if tostring(pWayPoints[v1352].NAME):lower() == tostring(v1342):lower() then
                    getRoot(p1341.Character).CFrame = CFrame.new(pWayPoints[v1352].COORD[1].Position)
                end
            end
        end
    end)

    tweenSpeed = 1

    addcmd('tweenspeed', {
        'tspeed',
    }, function(p1354, _)
        local v1355 = p1354[1] or 1

        if tonumber(v1355) then
            tweenSpeed = tonumber(v1355)
        end
    end)
    addcmd('tweenwaypoint', {
        'twp',
    }, function(_, p1356)
        local v1357 = tostring(getstring(1))

        if p1356.Character then
            local v1358, v1359, v1360 = pairs(WayPoints)

            while true do
                local v1361

                v1360, v1361 = v1358(v1359, v1360)

                if v1360 == nil then
                    break
                end

                local v1362 = WayPoints[v1360].COORD[1]
                local v1363 = WayPoints[v1360].COORD[2]
                local v1364 = WayPoints[v1360].COORD[3]

                if tostring(WayPoints[v1360].NAME):lower() == tostring(v1357):lower() then
                    TweenService:Create(getRoot(p1356.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {
                        CFrame = CFrame.new(v1362, v1363, v1364),
                    }):Play()
                end
            end

            local v1365, v1366, v1367 = pairs(pWayPoints)

            while true do
                local v1368

                v1367, v1368 = v1365(v1366, v1367)

                if v1367 == nil then
                    break
                end
                if tostring(pWayPoints[v1367].NAME):lower() == tostring(v1357):lower() then
                    TweenService:Create(getRoot(p1356.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {
                        CFrame = CFrame.new(pWayPoints[v1367].COORD[1].Position),
                    }):Play()
                end
            end
        end
    end)
    addcmd('walktowaypoint', {
        'wtwp',
    }, function(_, p1369)
        local v1370 = tostring(getstring(1))

        if p1369.Character then
            local v1371, v1372, v1373 = pairs(WayPoints)

            while true do
                local v1374

                v1373, v1374 = v1371(v1372, v1373)

                if v1373 == nil then
                    break
                end

                local v1375 = WayPoints[v1373].COORD[1]
                local v1376 = WayPoints[v1373].COORD[2]
                local v1377 = WayPoints[v1373].COORD[3]

                if tostring(WayPoints[v1373].NAME):lower() == tostring(v1370):lower() then
                    if p1369.Character:FindFirstChildOfClass('Humanoid') and p1369.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                        p1369.Character:FindFirstChildOfClass('Humanoid').Sit = false

                        wait(0.1)
                    end

                    p1369.Character:FindFirstChildOfClass('Humanoid').WalkToPoint = Vector3.new(v1375, v1376, v1377)
                end
            end

            local v1378, v1379, v1380 = pairs(pWayPoints)

            while true do
                local v1381

                v1380, v1381 = v1378(v1379, v1380)

                if v1380 == nil then
                    break
                end
                if tostring(pWayPoints[v1380].NAME):lower() == tostring(v1370):lower() then
                    if p1369.Character:FindFirstChildOfClass('Humanoid') and p1369.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                        p1369.Character:FindFirstChildOfClass('Humanoid').Sit = false

                        wait(0.1)
                    end

                    p1369.Character:FindFirstChildOfClass('Humanoid').WalkToPoint = Vector3.new(pWayPoints[v1380].COORD[1].Position)
                end
            end
        end
    end)
    addcmd('deletewaypoint', {
        'dwp',
        'dpos',
        'deleteposition',
        'deletepos',
    }, function(_, _)
        local v1382, v1383, v1384 = pairs(WayPoints)

        while true do
            local v1385

            v1384, v1385 = v1382(v1383, v1384)

            if v1384 == nil then
                break
            end
            if v1385.NAME:lower() == tostring(getstring(1)):lower() then
                notify('Modified Waypoints', 'Deleted waypoint: ' .. v1385.NAME)
                table.remove(WayPoints, v1384)
            end
        end

        if AllWaypoints ~= nil and #AllWaypoints > 0 then
            local v1386, v1387, v1388 = pairs(AllWaypoints)

            while true do
                local v1389

                v1388, v1389 = v1386(v1387, v1388)

                if v1388 == nil then
                    break
                end
                if v1389.NAME:lower() == tostring(getstring(1)):lower() and (not v1389.GAME or v1389.GAME == PlaceId) then
                    table.remove(AllWaypoints, v1388)
                end
            end
        end

        local v1390, v1391, v1392 = pairs(pWayPoints)

        while true do
            local v1393

            v1392, v1393 = v1390(v1391, v1392)

            if v1392 == nil then
                break
            end
            if v1393.NAME:lower() == tostring(getstring(1)):lower() then
                notify('Modified Waypoints', 'Deleted waypoint: ' .. v1393.NAME)
                table.remove(pWayPoints, v1392)
            end
        end

        refreshwaypoints()
        updatesaves()
    end)
    addcmd('clearwaypoints', {
        'cwp',
        'clearpositions',
        'cpos',
        'clearpos',
    }, function(_, _)
        WayPoints = {}
        pWayPoints = {}

        refreshwaypoints()
        updatesaves()

        AllWaypoints = {}

        notify('Modified Waypoints', 'Removed all waypoints')
    end)
    addcmd('cleargamewaypoints', {
        'cgamewp',
    }, function(_, _)
        local v1394, v1395, v1396 = pairs(WayPoints)

        while true do
            local v1397

            v1396, v1397 = v1394(v1395, v1396)

            if v1396 == nil then
                break
            end
            if v1397.GAME == PlaceId then
                table.remove(WayPoints, v1396)
            end
        end

        if AllWaypoints ~= nil and #AllWaypoints > 0 then
            local v1398, v1399, v1400 = pairs(AllWaypoints)

            while true do
                local v1401

                v1400, v1401 = v1398(v1399, v1400)

                if v1400 == nil then
                    break
                end
                if v1401.GAME == PlaceId then
                    table.remove(AllWaypoints, v1400)
                end
            end
        end

        local v1402, v1403, v1404 = pairs(pWayPoints)

        while true do
            local v1405

            v1404, v1405 = v1402(v1403, v1404)

            if v1404 == nil then
                break
            end
            if v1405.GAME == PlaceId then
                table.remove(pWayPoints, v1404)
            end
        end

        refreshwaypoints()
        updatesaves()
        notify('Modified Waypoints', 'Deleted game waypoints')
    end)

    local u1406 = {
        inventory = Enum.CoreGuiType.Backpack,
        leaderboard = Enum.CoreGuiType.PlayerList,
        emotes = Enum.CoreGuiType.EmotesMenu,
    }
    local v1407, v1408, v1409 = ipairs(Enum.CoreGuiType:GetEnumItems())
    local u1410 = u665

    while true do
        local v1411

        v1409, v1411 = v1407(v1408, v1409)

        if v1409 == nil then
            break
        end

        u1406[v1411.Name:lower()] = v1411
    end

    addcmd('enable', {}, function(p1412, _)
        local v1413 = p1412[1]

        if v1413 then
            v1413 = p1412[1]:lower()
        end
        if v1413 then
            if v1413 == 'reset' then
                StarterGui:SetCore('ResetButtonCallback', true)
            else
                local v1414 = u1406[v1413]

                if v1414 then
                    StarterGui:SetCoreGuiEnabled(v1414, true)
                end
            end
        end
    end)
    addcmd('disable', {}, function(p1415, _)
        local v1416 = p1415[1]

        if v1416 then
            v1416 = p1415[1]:lower()
        end
        if v1416 then
            if v1416 == 'reset' then
                StarterGui:SetCore('ResetButtonCallback', false)
            else
                local v1417 = u1406[v1416]

                if v1417 then
                    StarterGui:SetCoreGuiEnabled(v1417, false)
                end
            end
        end
    end)

    local u1418 = {}

    addcmd('showguis', {}, function(_, p1419)
        local v1420, v1421, v1422 = pairs(p1419:FindFirstChildWhichIsA('PlayerGui'):GetDescendants())

        while true do
            local v1423

            v1422, v1423 = v1420(v1421, v1422)

            if v1422 == nil then
                break
            end
            if (v1423:IsA('Frame') or (v1423:IsA('ImageLabel') or v1423:IsA('ScrollingFrame'))) and not v1423.Visible then
                v1423.Visible = true

                if not FindInTable(u1418, v1423) then
                    table.insert(u1418, v1423)
                end
            end
        end
    end)
    addcmd('unshowguis', {}, function(_, _)
        local v1424, v1425, v1426 = pairs(u1418)

        while true do
            local v1427

            v1426, v1427 = v1424(v1425, v1426)

            if v1426 == nil then
                break
            end

            v1427.Visible = false
        end

        u1418 = {}
    end)

    local u1428 = {}

    addcmd('hideguis', {}, function(_, p1429)
        local v1430, v1431, v1432 = pairs(p1429:FindFirstChildWhichIsA('PlayerGui'):GetDescendants())

        while true do
            local v1433

            v1432, v1433 = v1430(v1431, v1432)

            if v1432 == nil then
                break
            end
            if (v1433:IsA('Frame') or (v1433:IsA('ImageLabel') or v1433:IsA('ScrollingFrame'))) and v1433.Visible then
                v1433.Visible = false

                if not FindInTable(u1428, v1433) then
                    table.insert(u1428, v1433)
                end
            end
        end
    end)
    addcmd('unhideguis', {}, function(_, _)
        local v1434, v1435, v1436 = pairs(u1428)

        while true do
            local v1437

            v1436, v1437 = v1434(v1435, v1436)

            if v1436 == nil then
                break
            end

            v1437.Visible = true
        end

        u1428 = {}
    end)

    function deleteGuisAtPos()
        pcall(function()
            local v1438 = Players.LocalPlayer.PlayerGui:GetGuiObjectsAtPosition(IYMouse.X, IYMouse.Y)
            local v1439, v1440, v1441 = pairs(v1438)

            while true do
                local v1442

                v1441, v1442 = v1439(v1440, v1441)

                if v1441 == nil then
                    break
                end
                if v1442.Visible == true then
                    v1442:Destroy()
                end
            end
        end)
    end

    local u1443 = nil

    addcmd('guidelete', {}, function(_, _)
        u1443 = UserInputService.InputBegan:Connect(function(p1444, p1445)
            if not p1445 and p1444.KeyCode == Enum.KeyCode.Backspace then
                deleteGuisAtPos()
            end
        end)

        notify('GUI Delete Enabled', 'Hover over a GUI and press backspace to delete it')
    end)
    addcmd('unguidelete', {
        'noguidelete',
    }, function(_, _)
        if u1443 then
            u1443:Disconnect()
        end

        notify('GUI Delete Disabled', 'GUI backspace delete has been disabled')
    end)

    local u1446 = StayOpen

    addcmd('hideiy', {}, function(p1447, _)
        u278 = true
        u1446 = StayOpen

        if StayOpen == true then
            StayOpen = false
            On.BackgroundTransparency = 1
        end

        u545 = 0

        minimizeHolder()

        if not p1447[1] or tostring(p1447[1]) ~= 'nonotify' then
            notify('IY Hidden', 'You can press the prefix key to access the command bar')
        end
    end)
    addcmd('showiy', {
        'unhideiy',
    }, function(_, _)
        u278 = false
        u545 = -20

        if u1446 then
            maximizeHolder()

            StayOpen = true
            On.BackgroundTransparency = 0
        else
            minimizeHolder()
        end
    end)
    addcmd('rec', {
        'record',
    }, function(_, _)
        return COREGUI:ToggleRecording()
    end)
    addcmd('screenshot', {
        'scrnshot',
    }, function(_, _)
        return COREGUI:TakeScreenshot()
    end)
    addcmd('togglefs', {
        'togglefullscreen',
    }, function(_, _)
        return GuiService:ToggleFullscreen()
    end)
    addcmd('inspect', {
        'examine',
    }, function(p1448, p1449)
        local v1450, v1451, v1452 = ipairs(getPlayer(p1448[1], p1449))

        while true do
            local v1453

            v1452, v1453 = v1450(v1451, v1452)

            if v1452 == nil then
                break
            end

            GuiService:CloseInspectMenu()
            GuiService:InspectPlayerFromUserId(Players[v1453].UserId)
        end
    end)
    addcmd('savegame', {
        'saveplace',
    }, function(_, _)
        if saveinstance then
            notify('Loading', 'Downloading game. This will take a while')

            if getsynasset then
                saveinstance()
            else
                saveinstance(game)
            end

            notify('Game Saved', 'Saved place to the workspace folder within your exploit folder.')
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing saveinstance)')
        end
    end)
    addcmd('clearerror', {
        'clearerrors',
    }, function(_, _)
        GuiService:ClearError()
    end)
    addcmd('clientantikick', {
        'antikick',
    }, function(_, _)
        if not hookmetamethod then
            return notify('Incompatible Exploit', 'Your exploit does not support this command (missing hookmetamethod)')
        end

        local _LocalPlayer5 = Players.LocalPlayer
        local u1455 = nil
        local u1456 = nil

        u1455 = hookmetamethod(game, '__index', function(p1457, p1458)
            if p1457 ~= _LocalPlayer5 or p1458:lower() ~= 'kick' then
                return u1455(p1457, p1458)
            else
                return error("Expected ':' not '.' calling member function Kick", 2)
            end
        end)
        u1456 = hookmetamethod(game, '__namecall', function(p1459, ...)
            if p1459 ~= _LocalPlayer5 or getnamecallmethod():lower() ~= 'kick' then
                return u1456(p1459, ...)
            end
        end)

        notify('Client Antikick', 'Client anti kick is now active (only effective on localscript kick)')
    end)

    allow_rj = true

    addcmd('clientantiteleport', {
        'antiteleport',
    }, function(_, _)
        if not hookmetamethod then
            return notify('Incompatible Exploit', 'Your exploit does not support this command (missing hookmetamethod)')
        end

        local u1460 = TeleportService
        local u1461 = nil
        local u1462 = nil

        u1461 = hookmetamethod(game, '__index', function(p1463, p1464)
            if p1463 == u1460 then
                if p1464:lower() == 'teleport' then
                    return error("Expected ':' not '.' calling member function Kick", 2)
                end
                if p1464 == 'TeleportToPlaceInstance' then
                    return error("Expected ':' not '.' calling member function TeleportToPlaceInstance", 2)
                end
            end

            return u1461(p1463, p1464)
        end)
        u1462 = hookmetamethod(game, '__namecall', function(p1465, ...)
            if (p1465 ~= u1460 or getnamecallmethod():lower() ~= 'teleport') and getnamecallmethod() ~= 'TeleportToPlaceInstance' then
                return u1462(p1465, ...)
            end
        end)

        notify('Client AntiTP', 'Client anti teleport is now active (only effective on localscript teleport)')
    end)
    addcmd('allowrejoin', {
        'allowrj',
    }, function(p1466, _)
        if p1466[1] and p1466[1] == 'false' then
            allow_rj = false

            notify('Client AntiTP', 'Allow rejoin set to false')
        else
            allow_rj = true

            notify('Client AntiTP', 'Allow rejoin set to true')
        end
    end)
    addcmd('cancelteleport', {
        'canceltp',
    }, function(_, _)
        TeleportService:TeleportCancel()
    end)
    addcmd('volume', {
        'vol',
    }, function(p1467, _)
        local v1468 = p1467[1] / 10

        UserSettings():GetService('UserGameSettings').MasterVolume = v1468
    end)
    addcmd('antilag', {
        'boostfps',
        'lowgraphics',
    }, function(_, _)
        local _Terrain = workspace:FindFirstChildOfClass('Terrain')

        _Terrain.WaterWaveSize = 0
        _Terrain.WaterWaveSpeed = 0
        _Terrain.WaterReflectance = 0
        _Terrain.WaterTransparency = 0
        Lighting.GlobalShadows = false
        Lighting.FogEnd = 9000000000
        settings().Rendering.QualityLevel = 1

        local v1470, v1471, v1472 = pairs(game:GetDescendants())

        while true do
            local v1473

            v1472, v1473 = v1470(v1471, v1472)

            if v1472 == nil then
                break
            end
            if v1473:IsA('Part') or (v1473:IsA('UnionOperation') or (v1473:IsA('MeshPart') or (v1473:IsA('CornerWedgePart') or v1473:IsA('TrussPart')))) then
                v1473.Material = 'Plastic'
                v1473.Reflectance = 0
            elseif v1473:IsA('Decal') then
                v1473.Transparency = 1
            elseif v1473:IsA('ParticleEmitter') or v1473:IsA('Trail') then
                v1473.Lifetime = NumberRange.new(0)
            elseif v1473:IsA('Explosion') then
                v1473.BlastPressure = 1
                v1473.BlastRadius = 1
            end
        end

        local v1474, v1475, v1476 = pairs(Lighting:GetDescendants())

        while true do
            local v1477

            v1476, v1477 = v1474(v1475, v1476)

            if v1476 == nil then
                break
            end
            if v1477:IsA('BlurEffect') or (v1477:IsA('SunRaysEffect') or (v1477:IsA('ColorCorrectionEffect') or (v1477:IsA('BloomEffect') or v1477:IsA('DepthOfFieldEffect')))) then
                v1477.Enabled = false
            end
        end

        workspace.DescendantAdded:Connect(function(p1478)
            task.spawn(function()
                if p1478:IsA('ForceField') then
                    RunService.Heartbeat:Wait()
                    p1478:Destroy()
                elseif p1478:IsA('Sparkles') then
                    RunService.Heartbeat:Wait()
                    p1478:Destroy()
                elseif p1478:IsA('Smoke') or p1478:IsA('Fire') then
                    RunService.Heartbeat:Wait()
                    p1478:Destroy()
                end
            end)
        end)
    end)
    addcmd('setfpscap', {
        'fpscap',
        'maxfps',
    }, function(p1479, _)
        if setfpscap and type(setfpscap) == 'function' then
            local v1480 = p1479[1] or 1000000

            if v1480 == 'none' then
                return setfpscap(1000000)
            elseif v1480 > 0 then
                return setfpscap(v1480)
            else
                return notify('Invalid argument', "Please provide a number above 0 or 'none'.")
            end
        else
            return notify('Incompatible Exploit', 'Your exploit does not support this command (missing setfpscap)')
        end
    end)
    addcmd('notify', {}, function(_, _)
        notify(getstring(1))
    end)
    addcmd('lastcommand', {
        'lastcmd',
    }, function(_, _)
        if cmdHistory[1]:sub(1, 11) ~= 'lastcommand' and cmdHistory[1]:sub(1, 7) ~= 'lastcmd' then
            execCmd(cmdHistory[1])
        end
    end)
    addcmd('esp', {}, function(_, p1481)
        if CHMSenabled then
            notify('ESP', 'Disable chams (nochams) before using esp')
        else
            ESPenabled = true

            local v1482, v1483, v1484 = pairs(Players:GetChildren())

            while true do
                local v1485

                v1484, v1485 = v1482(v1483, v1484)

                if v1484 == nil then
                    break
                end
                if v1485.ClassName == 'Player' and v1485.Name ~= p1481.Name then
                    ESP(v1485)
                end
            end
        end
    end)
    addcmd('noesp', {
        'unesp',
    }, function(_, _)
        ESPenabled = false

        local v1486, v1487, v1488 = pairs(COREGUI:GetChildren())

        while true do
            local v1489

            v1488, v1489 = v1486(v1487, v1488)

            if v1488 == nil then
                break
            end
            if string.sub(v1489.Name, -4) == '_ESP' then
                v1489:Destroy()
            end
        end
    end)
    addcmd('esptransparency', {}, function(p1490, _)
        espTransparency = p1490[1] and (isNumber(p1490[1]) and p1490[1]) or 0.3

        updatesaves()
    end)

    local u1491 = {}
    local u1492 = nil

    function partAdded(p1493)
        if #u1491 <= 0 then
            u1492:Disconnect()

            u1492 = nil
        elseif FindInTable(u1491, p1493.Name:lower()) then
            local _BoxHandleAdornment6 = Instance.new('BoxHandleAdornment')

            _BoxHandleAdornment6.Name = p1493.Name:lower() .. '_PESP'
            _BoxHandleAdornment6.Parent = p1493
            _BoxHandleAdornment6.Adornee = p1493
            _BoxHandleAdornment6.AlwaysOnTop = true
            _BoxHandleAdornment6.ZIndex = 0
            _BoxHandleAdornment6.Size = p1493.Size
            _BoxHandleAdornment6.Transparency = espTransparency
            _BoxHandleAdornment6.Color = BrickColor.new('Lime green')
        end
    end

    addcmd('partesp', {}, function(_, _)
        local v1495 = getstring(1):lower()

        if not FindInTable(u1491, v1495) then
            table.insert(u1491, v1495)

            local v1496, v1497, v1498 = pairs(workspace:GetDescendants())

            while true do
                local v1499

                v1498, v1499 = v1496(v1497, v1498)

                if v1498 == nil then
                    break
                end
                if v1499:IsA('BasePart') and v1499.Name:lower() == v1495 then
                    local _BoxHandleAdornment7 = Instance.new('BoxHandleAdornment')

                    _BoxHandleAdornment7.Name = v1495 .. '_PESP'
                    _BoxHandleAdornment7.Parent = v1499
                    _BoxHandleAdornment7.Adornee = v1499
                    _BoxHandleAdornment7.AlwaysOnTop = true
                    _BoxHandleAdornment7.ZIndex = 0
                    _BoxHandleAdornment7.Size = v1499.Size
                    _BoxHandleAdornment7.Transparency = espTransparency
                    _BoxHandleAdornment7.Color = BrickColor.new('Lime green')
                end
            end
        end
        if u1492 == nil then
            u1492 = workspace.DescendantAdded:Connect(partAdded)
        end
    end)
    addcmd('unpartesp', {
        'nopartesp',
    }, function(p1501, _)
        if p1501[1] then
            local v1502 = getstring(1):lower()

            if FindInTable(u1491, v1502) then
                table.remove(u1491, GetInTable(u1491, v1502))
            end

            local v1503, v1504, v1505 = pairs(workspace:GetDescendants())

            while true do
                local v1506

                v1505, v1506 = v1503(v1504, v1505)

                if v1505 == nil then
                    break
                end
                if v1506:IsA('BoxHandleAdornment') and v1506.Name == v1502 .. '_PESP' then
                    v1506:Destroy()
                end
            end
        else
            u1492:Disconnect()

            u1492 = nil
            u1491 = {}

            local v1507, v1508, v1509 = pairs(workspace:GetDescendants())

            while true do
                local v1510

                v1509, v1510 = v1507(v1508, v1509)

                if v1509 == nil then
                    break
                end
                if v1510:IsA('BoxHandleAdornment') and v1510.Name:sub(-5) == '_PESP' then
                    v1510:Destroy()
                end
            end
        end
    end)
    addcmd('chams', {}, function(_, p1511)
        if ESPenabled then
            notify('Chams', 'Disable ESP (noesp) before using chams')
        else
            CHMSenabled = true

            local v1512, v1513, v1514 = pairs(Players:GetChildren())

            while true do
                local v1515

                v1514, v1515 = v1512(v1513, v1514)

                if v1514 == nil then
                    break
                end
                if v1515.ClassName == 'Player' and v1515.Name ~= p1511.Name then
                    CHMS(v1515)
                end
            end
        end
    end)
    addcmd('nochams', {
        'unchams',
    }, function(_, _)
        CHMSenabled = false

        local v1516, v1517, v1518 = pairs(Players:GetChildren())

        while true do
            local v1519

            v1518, v1519 = v1516(v1517, v1518)

            if v1518 == nil then
                break
            end

            local v1520, v1521, v1522 = pairs(COREGUI:GetChildren())

            while true do
                local v1523

                v1522, v1523 = v1520(v1521, v1522)

                if v1522 == nil then
                    break
                end
                if v1523.Name == v1519.Name .. '_CHMS' then
                    v1523:Destroy()
                end
            end
        end
    end)
    addcmd('locate', {}, function(p1524, p1525)
        local v1526 = getPlayer(p1524[1], p1525)
        local v1527, v1528, v1529 = pairs(v1526)

        while true do
            local v1530

            v1529, v1530 = v1527(v1528, v1529)

            if v1529 == nil then
                break
            end

            Locate(Players[v1530])
        end
    end)
    addcmd('nolocate', {
        'unlocate',
    }, function(p1531, p1532)
        local v1533 = getPlayer(p1531[1], p1532)

        if p1531[1] then
            local v1534, v1535, v1536 = pairs(v1533)

            while true do
                local v1537

                v1536, v1537 = v1534(v1535, v1536)

                if v1536 == nil then
                    break
                end

                local v1538, v1539, v1540 = pairs(COREGUI:GetChildren())

                while true do
                    local v1541

                    v1540, v1541 = v1538(v1539, v1540)

                    if v1540 == nil then
                        break
                    end
                    if v1541.Name == Players[v1537].Name .. '_LC' then
                        v1541:Destroy()
                    end
                end
            end
        else
            local v1542, v1543, v1544 = pairs(COREGUI:GetChildren())

            while true do
                local v1545

                v1544, v1545 = v1542(v1543, v1544)

                if v1544 == nil then
                    break
                end
                if string.sub(v1545.Name, -3) == '_LC' then
                    v1545:Destroy()
                end
            end
        end
    end)

    viewing = nil

    addcmd('view', {
        'spectate',
    }, function(p1546, p1547)
        StopFreecam()

        local v1548 = getPlayer(p1546[1], p1547)
        local v1549, v1550, v1551 = pairs(v1548)

        while true do
            local u1552

            v1551, u1552 = v1549(v1550, v1551)

            if v1551 == nil then
                break
            end
            if viewDied then
                viewDied:Disconnect()
                viewChanged:Disconnect()
            end

            viewing = Players[u1552]
            workspace.CurrentCamera.CameraSubject = viewing.Character

            notify('Spectate', 'Viewing ' .. Players[u1552].Name)

            viewDied = Players[u1552].CharacterAdded:Connect(function()
                repeat
                    wait()
                until Players[u1552].Character ~= nil and getRoot(Players[u1552].Character)

                workspace.CurrentCamera.CameraSubject = viewing.Character
            end)
            viewChanged = workspace.CurrentCamera:GetPropertyChangedSignal('CameraSubject'):Connect(function()
                workspace.CurrentCamera.CameraSubject = viewing.Character
            end)
        end
    end)
    addcmd('viewpart', {
        'viewp',
    }, function(p1553, _)
        StopFreecam()

        if p1553[1] then
            local v1554, v1555, v1556 = pairs(workspace:GetDescendants())

            while true do
                local v1557

                v1556, v1557 = v1554(v1555, v1556)

                if v1556 == nil then
                    break
                end
                if v1557.Name:lower() == getstring(1):lower() and v1557:IsA('BasePart') then
                    wait(0.1)

                    workspace.CurrentCamera.CameraSubject = v1557
                end
            end
        end
    end)
    addcmd('unview', {
        'unspectate',
    }, function(_, p1558)
        StopFreecam()

        if viewing ~= nil then
            viewing = nil

            notify('Spectate', 'View turned off')
        end
        if viewDied then
            viewDied:Disconnect()
            viewChanged:Disconnect()
        end

        workspace.CurrentCamera.CameraSubject = p1558.Character
    end)

    fcRunning = false

    local _CurrentCamera2 = workspace.CurrentCamera

    workspace:GetPropertyChangedSignal('CurrentCamera'):Connect(function()
        local _CurrentCamera3 = workspace.CurrentCamera

        if _CurrentCamera3 then
            _CurrentCamera2 = _CurrentCamera3
        end
    end)

    local _Value = Enum.ContextActionPriority.High.Value

    Spring = {}
    Spring.__index = Spring

    function Spring.new(p1562, p1563)
        local v1564 = setmetatable({}, Spring)

        v1564.f = p1562
        v1564.p = p1563
        v1564.v = p1563 * 0

        return v1564
    end
    function Spring.Update(p1565, p1566, p1567)
        local v1568 = p1565.f * 2 * math.pi
        local _p = p1565.p
        local _v = p1565.v
        local v1571 = p1567 - _p
        local v1572 = math.exp(-v1568 * p1566)
        local v1573 = p1567 + (_v * p1566 - v1571 * (v1568 * p1566 + 1)) * v1572
        local v1574 = (v1568 * p1566 * (v1571 * v1568 - _v) + _v) * v1572

        p1565.p = v1573
        p1565.v = v1574

        return v1573
    end
    function Spring.Reset(p1575, p1576)
        p1575.p = p1576
        p1575.v = p1576 * 0
    end

    local u1577 = Vector3.new()
    local u1578 = Vector2.new()
    local u1579 = Spring.new(5, Vector3.new())
    local u1580 = Spring.new(5, Vector2.new())

    Input = {}
    keyboard = {
        W = 0,
        A = 0,
        S = 0,
        D = 0,
        E = 0,
        Q = 0,
        Up = 0,
        Down = 0,
        LeftShift = 0,
    }
    mouse = {
        Delta = Vector2.new(),
    }
    NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
    PAN_MOUSE_SPEED = Vector2.new(1, 1) * (math.pi / 64)
    NAV_ADJ_SPEED = 0.75
    NAV_SHIFT_MUL = 0.25
    navSpeed = 1

    function Input.Vel(p1581)
        navSpeed = math.clamp(navSpeed + p1581 * (keyboard.Up - keyboard.Down) * NAV_ADJ_SPEED, 0.01, 4)

        local v1582 = Vector3.new(keyboard.D - keyboard.A, keyboard.E - keyboard.Q, keyboard.S - keyboard.W) * NAV_KEYBOARD_SPEED
        local v1583 = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)

        return v1582 * (navSpeed * (v1583 and NAV_SHIFT_MUL or 1))
    end
    function Input.Pan(_)
        local v1584 = mouse.Delta * PAN_MOUSE_SPEED

        mouse.Delta = Vector2.new()

        return v1584
    end
    function Keypress(_, p1585, p1586)
        keyboard[p1586.KeyCode.Name] = p1585 == Enum.UserInputState.Begin and 1 or 0

        return Enum.ContextActionResult.Sink
    end
    function MousePan(_, _, p1587)
        local _Delta = p1587.Delta

        mouse.Delta = Vector2.new(-_Delta.y, -_Delta.x)

        return Enum.ContextActionResult.Sink
    end
    function Zero(p1589)
        local v1590, v1591, v1592 = pairs(p1589)

        while true do
            local v1593

            v1592, v1593 = v1590(v1591, v1592)

            if v1592 == nil then
                break
            end

            p1589[v1592] = v1593 * 0
        end
    end
    function Input.StartCapture()
        ContextActionService:BindActionAtPriority('FreecamKeyboard', Keypress, false, _Value, Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D, Enum.KeyCode.E, Enum.KeyCode.Q, Enum.KeyCode.Up, Enum.KeyCode.Down)
        ContextActionService:BindActionAtPriority('FreecamMousePan', MousePan, false, _Value, Enum.UserInputType.MouseMovement)
    end
    function Input.StopCapture()
        navSpeed = 1

        Zero(keyboard)
        Zero(mouse)
        ContextActionService:UnbindAction('FreecamKeyboard')
        ContextActionService:UnbindAction('FreecamMousePan')
    end
    function GetFocusDistance(p1594)
        local _ViewportSize = _CurrentCamera2.ViewportSize
        local v1596 = 2 * math.tan(cameraFov / 2)
        local v1597 = _ViewportSize.x / _ViewportSize.y * v1596
        local _rightVector = p1594.rightVector
        local _upVector = p1594.upVector
        local _lookVector = p1594.lookVector
        local v1601 = Vector3.new()
        local v1602 = 0.1
        local v1603 = 512

        for v1604 = 0, 1, 0.5 do
            local v1605 = v1604

            for v1606 = 0, 1, 0.5 do
                local v1607 = (v1605 - 0.5) * v1597
                local v1608 = (v1606 - 0.5) * v1596
                local v1609 = _rightVector * v1607 - _upVector * v1608 + _lookVector
                local v1610 = p1594.p + v1609 * v1602
                local _, v1611 = workspace:FindPartOnRay(Ray.new(v1610, v1609.unit * v1603))
                local _magnitude = (v1611 - v1610).magnitude

                if _magnitude < v1603 then
                    v1601 = v1609.unit
                    v1603 = _magnitude
                end
            end
        end

        return _lookVector:Dot(v1601) * v1603
    end

    local function u1618(p1613)
        local v1614 = u1579:Update(p1613, Input.Vel(p1613))
        local v1615 = u1580:Update(p1613, Input.Pan(p1613))
        local v1616 = math.sqrt(math.tan(math.rad(35)) / math.tan(math.rad(cameraFov / 2)))

        u1578 = u1578 + v1615 * Vector2.new(0.75, 1) * 8 * (p1613 / v1616)
        u1578 = Vector2.new(math.clamp(u1578.x, -math.rad(90), math.rad(90)), u1578.y % (2 * math.pi))

        local v1617 = CFrame.new(u1577) * CFrame.fromOrientation(u1578.x, u1578.y, 0) * CFrame.new(v1614 * Vector3.new(1, 1, 1) * 64 * p1613)

        u1577 = v1617.p
        _CurrentCamera2.CFrame = v1617
        _CurrentCamera2.Focus = v1617 * CFrame.new(0, 0, -GetFocusDistance(v1617))
        _CurrentCamera2.FieldOfView = cameraFov
    end

    local u1619 = {}

    mouseBehavior = ''
    mouseIconEnabled = ''
    cameraType = ''
    cameraFocus = ''
    cameraCFrame = ''
    cameraFieldOfView = ''

    function u1619.Push()
        cameraFieldOfView = _CurrentCamera2.FieldOfView
        _CurrentCamera2.FieldOfView = 70
        cameraType = _CurrentCamera2.CameraType
        _CurrentCamera2.CameraType = Enum.CameraType.Custom
        cameraCFrame = _CurrentCamera2.CFrame
        cameraFocus = _CurrentCamera2.Focus
        mouseIconEnabled = UserInputService.MouseIconEnabled
        UserInputService.MouseIconEnabled = true
        mouseBehavior = UserInputService.MouseBehavior
        UserInputService.MouseBehavior = Enum.MouseBehavior.Default
    end
    function u1619.Pop()
        _CurrentCamera2.FieldOfView = 70
        _CurrentCamera2.CameraType = cameraType
        cameraType = nil
        _CurrentCamera2.CFrame = cameraCFrame
        cameraCFrame = nil
        _CurrentCamera2.Focus = cameraFocus
        cameraFocus = nil
        UserInputService.MouseIconEnabled = mouseIconEnabled
        mouseIconEnabled = nil
        UserInputService.MouseBehavior = mouseBehavior
        mouseBehavior = nil
    end
    function StartFreecam(p1620)
        if fcRunning then
            StopFreecam()
        end

        local v1621 = p1620 or _CurrentCamera2.CFrame

        u1578 = Vector2.new()
        u1577 = v1621.p
        cameraFov = _CurrentCamera2.FieldOfView

        u1579:Reset(Vector3.new())
        u1580:Reset(Vector2.new())
        u1619.Push()
        RunService:BindToRenderStep('Freecam', Enum.RenderPriority.Camera.Value, u1618)
        Input.StartCapture()

        fcRunning = true
    end
    function StopFreecam()
        if fcRunning then
            Input.StopCapture()
            RunService:UnbindFromRenderStep('Freecam')
            u1619.Pop()

            workspace.Camera.FieldOfView = 70
            fcRunning = false
        end
    end

    addcmd('freecam', {
        'fc',
    }, function(_, _)
        StartFreecam()
    end)
    addcmd('freecampos', {
        'fcpos',
        'fcp',
        'freecamposition',
        'fcposition',
    }, function(p1622, _)
        if p1622[1] then
            local v1623 = CFrame.new(p1622[1], p1622[2], p1622[3])

            StartFreecam(v1623)
        end
    end)
    addcmd('freecamwaypoint', {
        'fcwp',
    }, function(_, p1624)
        local v1625 = tostring(getstring(1))

        if p1624.Character then
            local v1626, v1627, v1628 = pairs(WayPoints)

            while true do
                local v1629

                v1628, v1629 = v1626(v1627, v1628)

                if v1628 == nil then
                    break
                end

                local v1630 = WayPoints[v1628].COORD[1]
                local v1631 = WayPoints[v1628].COORD[2]
                local v1632 = WayPoints[v1628].COORD[3]

                if tostring(WayPoints[v1628].NAME):lower() == tostring(v1625):lower() then
                    StartFreecam(CFrame.new(v1630, v1631, v1632))
                end
            end

            local v1633, v1634, v1635 = pairs(pWayPoints)

            while true do
                local v1636

                v1635, v1636 = v1633(v1634, v1635)

                if v1635 == nil then
                    break
                end
                if tostring(pWayPoints[v1635].NAME):lower() == tostring(v1625):lower() then
                    StartFreecam(CFrame.new(pWayPoints[v1635].COORD[1].Position))
                end
            end
        end
    end)
    addcmd('freecamgoto', {
        'fcgoto',
        'freecamtp',
        'fctp',
    }, function(p1637, p1638)
        local v1639 = getPlayer(p1637[1], p1638)
        local v1640, v1641, v1642 = pairs(v1639)

        while true do
            local v1643

            v1642, v1643 = v1640(v1641, v1642)

            if v1642 == nil then
                break
            end

            StartFreecam(getRoot(Players[v1643].Character).CFrame)
        end
    end)
    addcmd('unfreecam', {
        'nofreecam',
        'unfc',
        'nofc',
    }, function(_, _)
        StopFreecam()
    end)
    addcmd('freecamspeed', {
        'fcspeed',
    }, function(p1644, _)
        local v1645 = p1644[1] or 1

        if isNumber(v1645) then
            NAV_KEYBOARD_SPEED = Vector3.new(v1645, v1645, v1645)
        end
    end)
    addcmd('notifyfreecamposition', {
        'notifyfcpos',
    }, function(_, _)
        if fcRunning then
            local _X4 = workspace.CurrentCamera.CFrame.Position.X
            local _Y2 = workspace.CurrentCamera.CFrame.Position.Y
            local _Z = workspace.CurrentCamera.CFrame.Position.Z
            local _format = string.format
            local _round = math.round

            notify('Current Position', _format('%s, %s, %s', _round(_X4), _round(_Y2), _round(_Z)))
        end
    end)
    addcmd('copyfreecamposition', {
        'copyfcpos',
    }, function(_, _)
        if fcRunning then
            local _X5 = workspace.CurrentCamera.CFrame.Position.X
            local _Y3 = workspace.CurrentCamera.CFrame.Position.Y
            local _Z2 = workspace.CurrentCamera.CFrame.Position.Z
            local _format2 = string.format
            local _round2 = math.round

            toClipboard(_format2('%s, %s, %s', _round2(_X5), _round2(_Y3), _round2(_Z2)))
        end
    end)
    addcmd('gotocamera', {
        'gotocam',
        'tocam',
    }, function(_, p1656)
        getRoot(p1656.Character).CFrame = workspace.Camera.CFrame
    end)
    addcmd('tweengotocamera', {
        'tweengotocam',
        'tgotocam',
        'ttocam',
    }, function(_, p1657)
        TweenService:Create(getRoot(p1657.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {
            CFrame = workspace.Camera.CFrame,
        }):Play()
    end)
    addcmd('fov', {}, function(p1658, _)
        local v1659 = p1658[1] or 70

        if isNumber(v1659) then
            workspace.CurrentCamera.FieldOfView = v1659
        end
    end)

    local _CameraMaxZoomDistance = Players.LocalPlayer.CameraMaxZoomDistance
    local _CameraMinZoomDistance = Players.LocalPlayer.CameraMinZoomDistance

    addcmd('lookat', {}, function(p1662, p1663)
        if p1663.CameraMaxZoomDistance ~= 0.5 then
            _CameraMaxZoomDistance = p1663.CameraMaxZoomDistance
            _CameraMinZoomDistance = p1663.CameraMinZoomDistance
        end

        p1663.CameraMaxZoomDistance = 0.5
        p1663.CameraMinZoomDistance = 0.5

        wait()

        local v1664 = getPlayer(p1662[1], p1663)
        local v1665, v1666, v1667 = pairs(v1664)

        while true do
            local v1668

            v1667, v1668 = v1665(v1666, v1667)

            if v1667 == nil then
                break
            end

            local _Character15 = Players[v1668].Character

            if _Character15 and _Character15:FindFirstChild('Head') then
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, _Character15.Head.CFrame.p)

                wait(0.1)
            end
        end

        p1663.CameraMaxZoomDistance = _CameraMaxZoomDistance
        p1663.CameraMinZoomDistance = _CameraMinZoomDistance
    end)
    addcmd('fixcam', {
        'restorecam',
    }, function(_, p1670)
        StopFreecam()
        execCmd('unview')
        workspace.CurrentCamera:remove()
        wait(0.1)

        repeat
            wait()
        until p1670.Character ~= nil

        workspace.CurrentCamera.CameraSubject = p1670.Character:FindFirstChildWhichIsA('Humanoid')
        workspace.CurrentCamera.CameraType = 'Custom'
        p1670.CameraMinZoomDistance = 0.5
        p1670.CameraMaxZoomDistance = 400
        p1670.CameraMode = 'Classic'
        p1670.Character.Head.Anchored = false
    end)
    addcmd('enableshiftlock', {
        'enablesl',
        'shiftlock',
    }, function(_, p1671)
        p1671.DevEnableMouseLock = true

        notify('Shiftlock', 'Shift lock is now available')
    end)
    addcmd('firstp', {}, function(_, p1672)
        p1672.CameraMode = 'LockFirstPerson'
    end)
    addcmd('thirdp', {}, function(_, p1673)
        p1673.CameraMode = 'Classic'
    end)
    addcmd('noclipcam', {
        'nccam',
    }, function(_, p1674)
        local v1675 = debug and debug.setconstant or setconstant
        local v1676 = debug and debug.getconstants or getconstants

        if not (v1675 and (getgc and v1676)) then
            return notify('Incompatible Exploit', 'Your exploit does not support this command (missing setconstant or getconstants or getgc)')
        end

        local _Popper = p1674.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper
        local v1678, v1679, v1680 = pairs(getgc())

        while true do
            local v1681

            v1680, v1681 = v1678(v1679, v1680)

            if v1680 == nil then
                break
            end
            if type(v1681) == 'function' and getfenv(v1681).script == _Popper then
                local v1682, v1683, v1684 = pairs(v1676(v1681))

                while true do
                    local v1685

                    v1684, v1685 = v1682(v1683, v1684)

                    if v1684 == nil then
                        break
                    end
                    if tonumber(v1685) ~= 0.25 then
                        if tonumber(v1685) == 0 then
                            v1675(v1681, v1684, 0.25)
                        end
                    else
                        v1675(v1681, v1684, 0)
                    end
                end
            end
        end
    end)
    addcmd('maxzoom', {}, function(p1686, p1687)
        p1687.CameraMaxZoomDistance = p1686[1]
    end)
    addcmd('minzoom', {}, function(p1688, p1689)
        p1689.CameraMinZoomDistance = p1688[1]
    end)
    addcmd('camdistance', {}, function(p1690, p1691)
        local _CameraMaxZoomDistance2 = p1691.CameraMaxZoomDistance
        local _CameraMinZoomDistance2 = p1691.CameraMinZoomDistance

        if _CameraMaxZoomDistance2 < tonumber(p1690[1]) then
            _CameraMaxZoomDistance2 = p1690[1]
        end

        p1691.CameraMaxZoomDistance = p1690[1]
        p1691.CameraMinZoomDistance = p1690[1]

        wait()

        p1691.CameraMaxZoomDistance = _CameraMaxZoomDistance2
        p1691.CameraMinZoomDistance = _CameraMinZoomDistance2
    end)
    addcmd('unlockws', {
        'unlockworkspace',
    }, function(_, _)
        local v1694, v1695, v1696 = pairs(workspace:GetDescendants())

        while true do
            local v1697

            v1696, v1697 = v1694(v1695, v1696)

            if v1696 == nil then
                break
            end
            if v1697:IsA('BasePart') then
                v1697.Locked = false
            end
        end
    end)
    addcmd('lockws', {
        'lockworkspace',
    }, function(_, _)
        local v1698, v1699, v1700 = pairs(workspace:GetDescendants())

        while true do
            local v1701

            v1700, v1701 = v1698(v1699, v1700)

            if v1700 == nil then
                break
            end
            if v1701:IsA('BasePart') then
                v1701.Locked = true
            end
        end
    end)
    addcmd('delete', {
        'remove',
    }, function(_, _)
        local v1702, v1703, v1704 = pairs(workspace:GetDescendants())

        while true do
            local v1705

            v1704, v1705 = v1702(v1703, v1704)

            if v1704 == nil then
                break
            end
            if v1705.Name:lower() == getstring(1):lower() then
                v1705:Destroy()
            end
        end

        notify('Item(s) Deleted', 'Deleted ' .. getstring(1))
    end)
    addcmd('deleteclass', {
        'removeclass',
        'deleteclassname',
        'removeclassname',
        'dc',
    }, function(_, _)
        local v1706, v1707, v1708 = pairs(workspace:GetDescendants())

        while true do
            local v1709

            v1708, v1709 = v1706(v1707, v1708)

            if v1708 == nil then
                break
            end
            if v1709.ClassName:lower() == getstring(1):lower() then
                v1709:Destroy()
            end
        end

        notify('Item(s) Deleted', 'Deleted items with ClassName ' .. getstring(1))
    end)
    addcmd('chardelete', {
        'charremove',
        'cd',
    }, function(_, p1710)
        local v1711, v1712, v1713 = pairs(p1710.Character:GetDescendants())

        while true do
            local v1714

            v1713, v1714 = v1711(v1712, v1713)

            if v1713 == nil then
                break
            end
            if v1714.Name:lower() == getstring(1):lower() then
                v1714:Destroy()
            end
        end

        notify('Item(s) Deleted', 'Deleted ' .. getstring(1))
    end)
    addcmd('chardeleteclass', {
        'charremoveclass',
        'chardeleteclassname',
        'charremoveclassname',
        'cdc',
    }, function(_, p1715)
        local v1716, v1717, v1718 = pairs(p1715.Character:GetDescendants())

        while true do
            local v1719

            v1718, v1719 = v1716(v1717, v1718)

            if v1718 == nil then
                break
            end
            if v1719.ClassName:lower() == getstring(1):lower() then
                v1719:Destroy()
            end
        end

        notify('Item(s) Deleted', 'Deleted items with ClassName ' .. getstring(1))
    end)
    addcmd('deletevelocity', {
        'dv',
        'removevelocity',
        'removeforces',
    }, function(_, p1720)
        local v1721, v1722, v1723 = pairs(p1720.Character:GetDescendants())

        while true do
            local v1724

            v1723, v1724 = v1721(v1722, v1723)

            if v1723 == nil then
                break
            end
            if v1724:IsA('BodyVelocity') or (v1724:IsA('BodyGyro') or (v1724:IsA('RocketPropulsion') or (v1724:IsA('BodyThrust') or (v1724:IsA('BodyAngularVelocity') or (v1724:IsA('AngularVelocity') or (v1724:IsA('BodyForce') or (v1724:IsA('VectorForce') or v1724:IsA('LineForce')))))))) then
                v1724:Destroy()
            end
        end
    end)
    addcmd('deleteinvisparts', {
        'deleteinvisibleparts',
        'dip',
    }, function(_, _)
        local v1725, v1726, v1727 = pairs(workspace:GetDescendants())

        while true do
            local v1728

            v1727, v1728 = v1725(v1726, v1727)

            if v1727 == nil then
                break
            end
            if v1728:IsA('BasePart') and (v1728.Transparency == 1 and v1728.CanCollide) then
                v1728:Destroy()
            end
        end
    end)

    local u1729 = {}

    addcmd('invisibleparts', {
        'invisparts',
    }, function(_, _)
        local v1730, v1731, v1732 = pairs(workspace:GetDescendants())

        while true do
            local v1733

            v1732, v1733 = v1730(v1731, v1732)

            if v1732 == nil then
                break
            end
            if v1733:IsA('BasePart') and v1733.Transparency == 1 then
                if not table.find(u1729, v1733) then
                    table.insert(u1729, v1733)
                end

                v1733.Transparency = 0
            end
        end
    end)
    addcmd('uninvisibleparts', {
        'uninvisparts',
    }, function(_, _)
        local v1734, v1735, v1736 = pairs(u1729)

        while true do
            local v1737

            v1736, v1737 = v1734(v1735, v1736)

            if v1736 == nil then
                break
            end

            v1737.Transparency = 1
        end

        u1729 = {}
    end)
    addcmd('btools', {}, function(_, p1738)
        for v1739 = 1, 4 do
            local _HopperBin = Instance.new('HopperBin')

            _HopperBin.BinType = v1739
            _HopperBin.Name = randomString()
            _HopperBin.Parent = p1738:FindFirstChildOfClass('Backpack')
        end
    end)
    addcmd('f3x', {
        'fex',
    }, function(_, _)
        loadstring(game:GetObjects('rbxassetid://6695644299')[1].Source)()
    end)
    addcmd('partpath', {
        'partname',
    }, function(_, _)
        selectPart()
    end)
    addcmd('antiafk', {
        'antiidle',
    }, function(p1741, _)
        local v1742 = getconnections or get_signal_cons

        if v1742 then
            local v1743, v1744, v1745 = pairs(v1742(Players.LocalPlayer.Idled))

            while true do
                local v1746

                v1745, v1746 = v1743(v1744, v1745)

                if v1745 == nil then
                    break
                end
                if v1746.Disable then
                    v1746:Disable()
                elseif v1746.Disconnect then
                    v1746:Disconnect()
                end
            end
        else
            Players.LocalPlayer.Idled:Connect(function()
                local _VirtualUser = game:GetService('VirtualUser')

                _VirtualUser:CaptureController()
                _VirtualUser:ClickButton2(Vector2.new())
            end)
        end
        if not p1741[1] or tostring(p1741[1]) ~= 'nonotify' then
            notify('Anti Idle', 'Anti idle is enabled')
        end
    end)
    addcmd('datalimit', {}, function(p1748, _)
        if tonumber(p1748[1]) then
            NetworkClient:SetOutgoingKBPSLimit(p1748[1])
        end
    end)
    addcmd('replicationlag', {
        'backtrack',
    }, function(p1749, _)
        if tonumber(p1749[1]) then
            settings():GetService('NetworkSettings').IncomingReplicationLag = p1749[1]
        end
    end)
    addcmd('noprompts', {
        'nopurchaseprompts',
    }, function(_, _)
        COREGUI.PurchasePrompt.Enabled = false
    end)
    addcmd('showprompts', {
        'showpurchaseprompts',
    }, function(_, _)
        COREGUI.PurchasePrompt.Enabled = true
    end)
    addcmd('age', {}, function(p1750, p1751)
        local v1752 = getPlayer(p1750[1], p1751)
        local v1753, v1754, v1755 = pairs(v1752)
        local v1756 = {}

        while true do
            local v1757

            v1755, v1757 = v1753(v1754, v1755)

            if v1755 == nil then
                break
            end

            local v1758 = Players[v1757]

            table.insert(v1756, v1758.Name .. "'s age is: " .. v1758.AccountAge)
        end

        notify('Account Age', table.concat(v1756, ',\n'))
    end)
    addcmd('chatage', {}, function(p1759, p1760)
        local v1761 = getPlayer(p1759[1], p1760)
        local v1762, v1763, v1764 = pairs(v1761)
        local v1765 = {}

        while true do
            local v1766

            v1764, v1766 = v1762(v1763, v1764)

            if v1764 == nil then
                break
            end

            local v1767 = Players[v1766]

            table.insert(v1765, v1767.Name .. "'s age is: " .. v1767.AccountAge)
        end

        local v1768 = table.concat(v1765, ', ')

        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v1768, 'All')
    end)
    addcmd('joindate', {
        'jd',
    }, function(p1769, p1770)
        local v1771 = getPlayer(p1769[1], p1770)

        notify('Loading', 'Hold on a sec')

        local v1772, v1773, v1774 = pairs(v1771)
        local v1775 = {}

        while true do
            local v1776

            v1774, v1776 = v1772(v1773, v1774)

            if v1774 == nil then
                break
            end

            local v1777 = game:HttpGet('https://users.roblox.com/v1/users/' .. Players[v1776].UserId)
            local v1778 = HttpService:JSONDecode(v1777).created:sub(1, 10)
            local v1779 = string.split(v1778, '-')

            table.insert(v1775, Players[v1776].Name .. ' joined: ' .. v1779[2] .. '/' .. v1779[3] .. '/' .. v1779[1])
        end

        notify('Join Date (Month/Day/Year)', table.concat(v1775, ',\n'))
    end)
    addcmd('chatjoindate', {
        'cjd',
    }, function(p1780, p1781)
        local v1782 = getPlayer(p1780[1], p1781)

        notify('Loading', 'Hold on a sec')

        local v1783, v1784, v1785 = pairs(v1782)
        local v1786 = {}

        while true do
            local v1787

            v1785, v1787 = v1783(v1784, v1785)

            if v1785 == nil then
                break
            end

            local v1788 = game:HttpGet('https://users.roblox.com/v1/users/' .. Players[v1787].UserId)
            local v1789 = HttpService:JSONDecode(v1788).created:sub(1, 10)
            local v1790 = string.split(v1789, '-')

            table.insert(v1786, Players[v1787].Name .. ' joined: ' .. v1790[2] .. '/' .. v1790[3] .. '/' .. v1790[1])
        end

        local v1791 = table.concat(v1786, ', ')

        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v1791, 'All')
    end)
    addcmd('copyname', {
        'copyuser',
    }, function(p1792, p1793)
        local v1794 = getPlayer(p1792[1], p1793)
        local v1795, v1796, v1797 = pairs(v1794)

        while true do
            local v1798

            v1797, v1798 = v1795(v1796, v1797)

            if v1797 == nil then
                break
            end

            local v1799 = tostring(Players[v1798].Name)

            toClipboard(v1799)
        end
    end)
    addcmd('userid', {
        'id',
    }, function(p1800, p1801)
        local v1802 = getPlayer(p1800[1], p1801)
        local v1803, v1804, v1805 = pairs(v1802)

        while true do
            local v1806

            v1805, v1806 = v1803(v1804, v1805)

            if v1805 == nil then
                break
            end

            local v1807 = tostring(Players[v1806].UserId)

            notify('User ID', v1807)
        end
    end)
    addcmd('copyid', {
        'copyuserid',
    }, function(p1808, p1809)
        local v1810 = getPlayer(p1808[1], p1809)
        local v1811, v1812, v1813 = pairs(v1810)

        while true do
            local v1814

            v1813, v1814 = v1811(v1812, v1813)

            if v1813 == nil then
                break
            end

            local v1815 = tostring(Players[v1814].UserId)

            toClipboard(v1815)
        end
    end)
    addcmd('creatorid', {
        'creator',
    }, function(_, p1816)
        if game.CreatorType ~= Enum.CreatorType.User then
            if game.CreatorType == Enum.CreatorType.Group then
                local _Id = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id

                p1816.UserId = _Id

                notify('Creator ID', _Id)
            end
        else
            notify('Creator ID', game.CreatorId)
        end
    end)
    addcmd('copycreatorid', {
        'copycreator',
    }, function(_, _)
        if game.CreatorType ~= Enum.CreatorType.User then
            if game.CreatorType == Enum.CreatorType.Group then
                local _Id2 = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id

                toClipboard(_Id2)
                notify('Copied ID', 'Copied creator ID to clipboard')
            end
        else
            toClipboard(game.CreatorId)
            notify('Copied ID', 'Copied creator ID to clipboard')
        end
    end)
    addcmd('setcreatorid', {
        'setcreator',
    }, function(_, p1819)
        if game.CreatorType ~= Enum.CreatorType.User then
            if game.CreatorType == Enum.CreatorType.Group then
                local _Id3 = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id

                p1819.UserId = _Id3

                notify('Set ID', 'Set UserId to ' .. _Id3)
            end
        else
            p1819.UserId = game.CreatorId

            notify('Set ID', 'Set UserId to ' .. game.CreatorId)
        end
    end)
    addcmd('appearanceid', {
        'aid',
    }, function(p1821, p1822)
        local v1823 = getPlayer(p1821[1], p1822)
        local v1824, v1825, v1826 = pairs(v1823)

        while true do
            local v1827

            v1826, v1827 = v1824(v1825, v1826)

            if v1826 == nil then
                break
            end

            local v1828 = tostring(Players[v1827].CharacterAppearanceId)

            notify('Appearance ID', v1828)
        end
    end)
    addcmd('copyappearanceid', {
        'caid',
    }, function(p1829, p1830)
        local v1831 = getPlayer(p1829[1], p1830)
        local v1832, v1833, v1834 = pairs(v1831)

        while true do
            local v1835

            v1834, v1835 = v1832(v1833, v1834)

            if v1834 == nil then
                break
            end

            local v1836 = tostring(Players[v1835].CharacterAppearanceId)

            toClipboard(v1836)
        end
    end)
    addcmd('norender', {}, function(_, _)
        RunService:Set3dRenderingEnabled(false)
    end)
    addcmd('render', {}, function(_, _)
        RunService:Set3dRenderingEnabled(true)
    end)
    addcmd('2022materials', {
        'use2022materials',
    }, function(_, _)
        if sethidden then
            sethidden(MaterialService, 'Use2022Materials', true)
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing sethiddenproperty)')
        end
    end)
    addcmd('un2022materials', {
        'unuse2022materials',
    }, function(_, _)
        if sethidden then
            sethidden(MaterialService, 'Use2022Materials', false)
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing sethiddenproperty)')
        end
    end)
    addcmd('goto', {
        'to',
    }, function(p1837, p1838)
        local v1839 = getPlayer(p1837[1], p1838)
        local v1840, v1841, v1842 = pairs(v1839)

        while true do
            local v1843

            v1842, v1843 = v1840(v1841, v1842)

            if v1842 == nil then
                break
            end
            if Players[v1843].Character ~= nil then
                if p1838.Character:FindFirstChildOfClass('Humanoid') and p1838.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p1838.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                getRoot(p1838.Character).CFrame = getRoot(Players[v1843].Character).CFrame + Vector3.new(3, 1, 0)
            end
        end

        execCmd('breakvelocity')
    end)
    addcmd('tweengoto', {
        'tgoto',
        'tto',
        'tweento',
    }, function(p1844, p1845)
        local v1846 = getPlayer(p1844[1], p1845)
        local v1847, v1848, v1849 = pairs(v1846)

        while true do
            local v1850

            v1849, v1850 = v1847(v1848, v1849)

            if v1849 == nil then
                break
            end
            if Players[v1850].Character ~= nil then
                if p1845.Character:FindFirstChildOfClass('Humanoid') and p1845.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p1845.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                TweenService:Create(getRoot(p1845.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {
                    CFrame = getRoot(Players[v1850].Character).CFrame + Vector3.new(3, 1, 0),
                }):Play()
            end
        end

        execCmd('breakvelocity')
    end)
    addcmd('vehiclegoto', {
        'vgoto',
        'vtp',
        'vehicletp',
    }, function(p1851, p1852)
        local v1853 = getPlayer(p1851[1], p1852)
        local v1854, v1855, v1856 = pairs(v1853)

        while true do
            local v1857

            v1856, v1857 = v1854(v1855, v1856)

            if v1856 == nil then
                break
            end
            if Players[v1857].Character ~= nil then
                p1852.Character:FindFirstChildOfClass('Humanoid').SeatPart:FindFirstAncestorWhichIsA('Model'):MoveTo(getRoot(Players[v1857].Character).Position)
            end
        end
    end)
    addcmd('pulsetp', {
        'ptp',
    }, function(p1858, p1859)
        local v1860 = getPlayer(p1858[1], p1859)
        local v1861, v1862, v1863 = pairs(v1860)

        while true do
            local v1864

            v1863, v1864 = v1861(v1862, v1863)

            if v1863 == nil then
                break
            end
            if Players[v1864].Character ~= nil then
                local _CFrame4 = getRoot(p1859.Character).CFrame
                local v1866 = p1858[2] or 1

                if p1859.Character:FindFirstChildOfClass('Humanoid') and p1859.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p1859.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                getRoot(p1859.Character).CFrame = getRoot(Players[v1864].Character).CFrame + Vector3.new(3, 1, 0)

                wait(v1866)

                getRoot(p1859.Character).CFrame = _CFrame4
            end
        end

        execCmd('breakvelocity')
    end)

    local u1867 = {}

    addcmd('vehiclenoclip', {
        'vnoclip',
    }, function(_, p1868)
        u1867 = {}

        local _Parent = p1868.Character:FindFirstChildOfClass('Humanoid').SeatPart.Parent

        while true do
            if _Parent.ClassName ~= 'Model' then
                _Parent = _Parent.Parent
            end
            if _Parent.ClassName == 'Model' then
                wait(0.1)
                execCmd('noclip')

                local v1870, v1871, v1872 = pairs(_Parent:GetDescendants())

                while true do
                    local v1873

                    v1872, v1873 = v1870(v1871, v1872)

                    if v1872 == nil then
                        break
                    end
                    if v1873:IsA('BasePart') and v1873.CanCollide then
                        table.insert(u1867, v1873)

                        v1873.CanCollide = false
                    end
                end

                return
            end
        end
    end)
    addcmd('vehicleclip', {
        'vclip',
        'unvnoclip',
        'unvehiclenoclip',
    }, function(_, _)
        execCmd('clip')

        local v1874, v1875, v1876 = pairs(u1867)

        while true do
            local v1877

            v1876, v1877 = v1874(v1875, v1876)

            if v1876 == nil then
                break
            end

            v1877.CanCollide = true
        end

        u1867 = {}
    end)
    addcmd('togglevnoclip', {}, function(_, _)
        if Clip then
            execCmd('vnoclip')
        else
            execCmd('vclip')
        end
    end)
    addcmd('clientbring', {
        'cbring',
    }, function(p1878, p1879)
        local v1880 = getPlayer(p1878[1], p1879)
        local v1881, v1882, v1883 = pairs(v1880)

        while true do
            local v1884

            v1883, v1884 = v1881(v1882, v1883)

            if v1883 == nil then
                break
            end
            if Players[v1884].Character ~= nil then
                if Players[v1884].Character:FindFirstChildOfClass('Humanoid') then
                    Players[v1884].Character:FindFirstChildOfClass('Humanoid').Sit = false
                end

                wait()

                getRoot(Players[v1884].Character).CFrame = getRoot(p1879.Character).CFrame + Vector3.new(3, 1, 0)
            end
        end
    end)

    local u1885 = {}

    addcmd('loopbring', {}, function(p1886, p1887)
        local u1888 = getPlayer(p1886[1], p1887)
        local v1889, v1890, v1891 = pairs(u1888)

        while true do
            local u1892

            v1891, u1892 = v1889(v1890, v1891)

            if v1891 == nil then
                break
            end

            task.spawn(function()
                if Players[u1892].Name == p1887.Name or FindInTable(u1885, Players[u1892].Name) then
                    return
                else
                    table.insert(u1885, Players[u1892].Name)

                    local _Name3 = Players[u1892].Name
                    local _ = Players[u1892].Character
                    local v1894 = not (p1886[2] and isNumber(p1886[2])) and 3 or p1886[2]
                    local v1895

                    if p1886[3] and isNumber(p1886[3]) then
                        v1895 = p1886[3]
                    else
                        v1895 = 0
                    end

                    while true do
                        local v1896, v1897, v1898 = pairs(u1888)

                        while true do
                            local v1899

                            v1898, v1899 = v1896(v1897, v1898)

                            if v1898 == nil then
                                break
                            end
                            if Players:FindFirstChild(u1892) then
                                local _Character16 = Players[u1892].Character

                                if _Character16 ~= nil and (Players[u1892].Character ~= nil and (getRoot(_Character16) and (p1887.Character ~= nil and getRoot(p1887.Character)))) then
                                    getRoot(_Character16).CFrame = getRoot(p1887.Character).CFrame + Vector3.new(v1894, 1, 0)
                                end

                                wait(v1895)
                            else
                                local v1901, v1902, v1903 = pairs(u1885)

                                while true do
                                    local v1904

                                    v1903, v1904 = v1901(v1902, v1903)

                                    if v1903 == nil then
                                        break
                                    end
                                    if v1904 == _Name3 then
                                        table.remove(u1885, v1903)
                                    end
                                end
                            end
                        end

                        if not FindInTable(u1885, _Name3) then
                        end
                    end
                end
            end)
        end
    end)
    addcmd('unloopbring', {
        'noloopbring',
    }, function(p1905, p1906)
        local v1907 = getPlayer(p1905[1], p1906)
        local v1908, v1909, v1910 = pairs(v1907)

        while true do
            local u1911

            v1910, u1911 = v1908(v1909, v1910)

            if v1910 == nil then
                break
            end

            task.spawn(function()
                local v1912, v1913, v1914 = pairs(u1885)

                while true do
                    local v1915

                    v1914, v1915 = v1912(v1913, v1914)

                    if v1914 == nil then
                        break
                    end
                    if v1915 == Players[u1911].Name then
                        table.remove(u1885, v1914)
                    end
                end
            end)
        end
    end)

    local u1916 = false
    local u1917 = false

    addcmd('walkto', {
        'follow',
    }, function(p1918, p1919)
        local v1920 = getPlayer(p1918[1], p1919)
        local v1921, v1922, v1923 = pairs(v1920)

        while true do
            local v1924

            v1923, v1924 = v1921(v1922, v1923)

            if v1923 == nil then
                break
            end
            if Players[v1924].Character ~= nil then
                if p1919.Character:FindFirstChildOfClass('Humanoid') and p1919.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p1919.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                u1916 = true

                repeat
                    wait()
                    p1919.Character:FindFirstChildOfClass('Humanoid'):MoveTo(getRoot(Players[v1924].Character).Position)
                until Players[v1924].Character == nil or (not getRoot(Players[v1924].Character) or u1916 == false)
            end
        end
    end)
    addcmd('pathfindwalkto', {
        'pathfindfollow',
    }, function(p1925, p1926)
        u1916 = false

        wait()

        local v1927 = getPlayer(p1925[1], p1926)
        local _Humanoid4 = Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
        local u1929 = PathService:CreatePath()
        local v1930, v1931, v1932 = pairs(v1927)

        while true do
            local u1933

            v1932, u1933 = v1930(v1931, v1932)

            if v1932 == nil then
                return
            end
            if Players[u1933].Character ~= nil then
            end
        end

        if p1926.Character:FindFirstChildOfClass('Humanoid') and p1926.Character:FindFirstChildOfClass('Humanoid').SeatPart then
            p1926.Character:FindFirstChildOfClass('Humanoid').Sit = false

            wait(0.1)
        end

        u1916 = true

        wait()

        local v1941, _ = pcall(function()
            u1929:ComputeAsync(getRoot(p1926.Character).Position, getRoot(Players[u1933].Character).Position)

            local v1934 = u1929:GetWaypoints()
            local v1935, v1936, v1937 = pairs(v1934)

            while true do
                local v1938

                v1937, v1938 = v1935(v1936, v1937)

                if v1937 == nil then
                    break
                end

                local _Position6 = v1938.Position

                _Humanoid4:MoveTo(_Position6)

                repeat
                    local _magnitude2 = (_Position6 - _Humanoid4.Parent.PrimaryPart.Position).magnitude

                    wait()
                until _magnitude2 <= 5
            end
        end)

        if not v1941 then
            p1926.Character:FindFirstChildOfClass('Humanoid'):MoveTo(getRoot(Players[u1933].Character).Position)
        end
        if Players[u1933].Character == nil or (not getRoot(Players[u1933].Character) or u1916 == false) then
        else
        end
    end)
    addcmd('pathfindwalktowaypoint', {
        'pathfindwalktowp',
    }, function(_, p1942)
        u1917 = false

        wait()

        local v1943 = tostring(getstring(1))
        local _Humanoid5 = Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
        local u1945 = PathService:CreatePath()

        if not p1942.Character then
            return
        end

        local v1946, v1947, v1948 = pairs(WayPoints)
        local v1949

        v1948, v1949 = v1946(v1947, v1948)

        if v1948 ~= nil then
        end

        local v1950, v1951, v1952 = pairs(pWayPoints)
        local v1953

        v1952, v1953 = v1950(v1951, v1952)

        if v1952 == nil then
        end
        if tostring(pWayPoints[v1952].NAME):lower() ~= tostring(v1943):lower() then
        else
        end
        if p1942.Character:FindFirstChildOfClass('Humanoid') and p1942.Character:FindFirstChildOfClass('Humanoid').SeatPart then
            p1942.Character:FindFirstChildOfClass('Humanoid').Sit = false

            wait(0.1)
        end

        local _Position7 = pWayPoints[v1952].COORD[1].Position

        u1917 = true

        wait()

        local v1962, _ = pcall(function()
            u1945:ComputeAsync(getRoot(p1942.Character).Position, _Position7)

            local v1955 = u1945:GetWaypoints()
            local v1956, v1957, v1958 = pairs(v1955)

            while true do
                local v1959

                v1958, v1959 = v1956(v1957, v1958)

                if v1958 == nil then
                    break
                end

                local _Position8 = v1959.Position

                _Humanoid5:MoveTo(_Position8)

                repeat
                    local _magnitude3 = (_Position8 - _Humanoid5.Parent.PrimaryPart.Position).magnitude

                    wait()
                until _magnitude3 <= 5
            end
        end)

        if not v1962 then
            p1942.Character:FindFirstChildOfClass('Humanoid'):MoveTo(_Position7)
        end
        if p1942.Character and u1917 ~= false then
        end
        if tostring(WayPoints[v1948].NAME):lower() ~= tostring(v1943):lower() then
        else
        end
        if p1942.Character:FindFirstChildOfClass('Humanoid') and p1942.Character:FindFirstChildOfClass('Humanoid').SeatPart then
            p1942.Character:FindFirstChildOfClass('Humanoid').Sit = false

            wait(0.1)
        end

        local u1963 = Vector3.new(WayPoints[v1948].COORD[1], WayPoints[v1948].COORD[2], WayPoints[v1948].COORD[3])

        u1917 = true

        wait()

        local v1971, _ = pcall(function()
            u1945:ComputeAsync(getRoot(p1942.Character).Position, u1963)

            local v1964 = u1945:GetWaypoints()
            local v1965, v1966, v1967 = pairs(v1964)

            while true do
                local v1968

                v1967, v1968 = v1965(v1966, v1967)

                if v1967 == nil then
                    break
                end

                local _Position9 = v1968.Position

                _Humanoid5:MoveTo(_Position9)

                repeat
                    local _magnitude4 = (_Position9 - _Humanoid5.Parent.PrimaryPart.Position).magnitude

                    wait()
                until _magnitude4 <= 5
            end
        end)

        if not v1971 then
            p1942.Character:FindFirstChildOfClass('Humanoid'):MoveTo(u1963)
        end
        if p1942.Character and u1917 ~= false then
        else
        end
    end)
    addcmd('unwalkto', {
        'nowalkto',
        'unfollow',
        'nofollow',
    }, function(_, _)
        u1916 = false
        u1917 = false
    end)
    addcmd('freeze', {
        'fr',
    }, function(p1972, p1973)
        local v1974 = getPlayer(p1972[1], p1973)

        if v1974 ~= nil then
            local v1975, v1976, v1977 = pairs(v1974)

            while true do
                local u1978

                v1977, u1978 = v1975(v1976, v1977)

                if v1977 == nil then
                    break
                end

                task.spawn(function()
                    local v1979 = next
                    local v1980, v1981 = Players[u1978].Character:GetDescendants()

                    while true do
                        local v1982

                        v1981, v1982 = v1979(v1980, v1981)

                        if v1981 == nil then
                            break
                        end
                        if v1982:IsA('BasePart') and not v1982.Anchored then
                            v1982.Anchored = true
                        end
                    end
                end)
            end
        end
    end)
    addcmd('thaw', {
        'unfreeze',
        'unfr',
    }, function(p1983, p1984)
        local v1985 = getPlayer(p1983[1], p1984)

        if v1985 ~= nil then
            local v1986, v1987, v1988 = pairs(v1985)

            while true do
                local u1989

                v1988, u1989 = v1986(v1987, v1988)

                if v1988 == nil then
                    break
                end

                task.spawn(function()
                    local v1990 = next
                    local v1991, v1992 = Players[u1989].Character:GetDescendants()

                    while true do
                        local v1993

                        v1992, v1993 = v1990(v1991, v1992)

                        if v1992 == nil then
                            break
                        end
                        if v1993.Name ~= floatName and (v1993:IsA('BasePart') and v1993.Anchored) then
                            v1993.Anchored = false
                        end
                    end
                end)
            end
        end
    end)

    oofing = false

    addcmd('loopoof', {}, function(_, _)
        oofing = true

        wait(0.1)

        local v1994, v1995, v1996 = pairs(Players:GetPlayers())

        if v2001.Character ~= nil and v2001.Character:FindFirstChild('Head') then
            local v1997, v1998, v1999 = pairs(v2001.Character.Head:GetChildren())

            while true do
                local v2000

                v1999, v2000 = v1997(v1998, v1999)

                if v1999 == nil then
                    break
                end
                if v2000:IsA('Sound') then
                    v2000.Playing = true
                end
            end
        end

        local v2001

        v1996, v2001 = v1994(v1995, v1996)

        if v1996 ~= nil then
        else
        end
        if oofing == false then
            return
        end
    end)
    addcmd('unloopoof', {}, function(_, _)
        oofing = false
    end)

    local u2002 = false

    addcmd('muteboombox', {}, function(p2003, p2004)
        if not u2002 and SoundService.RespectFilteringEnabled then
            u2002 = true

            notify('RespectFilteringEnabled', 'RespectFilteringEnabled is set to true (the command will still work but may only be clientsided)')
        end

        local v2005 = getPlayer(p2003[1], p2004)

        if v2005 ~= nil then
            local v2006, v2007, v2008 = pairs(v2005)

            while true do
                local u2009

                v2008, u2009 = v2006(v2007, v2008)

                if v2008 == nil then
                    break
                end

                task.spawn(function()
                    local v2010 = next
                    local v2011, v2012 = Players[u2009].Character:GetDescendants()

                    while true do
                        local v2013

                        v2012, v2013 = v2010(v2011, v2012)

                        if v2012 == nil then
                            break
                        end
                        if v2013:IsA('Sound') and v2013.Playing == true then
                            v2013.Playing = false
                        end
                    end

                    local v2014 = next
                    local v2015, v2016 = Players[u2009]:FindFirstChildOfClass('Backpack'):GetDescendants()

                    while true do
                        local v2017

                        v2016, v2017 = v2014(v2015, v2016)

                        if v2016 == nil then
                            break
                        end
                        if v2017:IsA('Sound') and v2017.Playing == true then
                            v2017.Playing = false
                        end
                    end
                end)
            end
        end
    end)
    addcmd('unmuteboombox', {}, function(p2018, p2019)
        if not u2002 and SoundService.RespectFilteringEnabled then
            u2002 = true

            notify('RespectFilteringEnabled', 'RespectFilteringEnabled is set to true (the command will still work but may only be clientsided)')
        end

        local v2020 = getPlayer(p2018[1], p2019)

        if v2020 ~= nil then
            local v2021, v2022, v2023 = pairs(v2020)

            while true do
                local u2024

                v2023, u2024 = v2021(v2022, v2023)

                if v2023 == nil then
                    break
                end

                task.spawn(function()
                    local v2025 = next
                    local v2026, v2027 = Players[u2024].Character:GetDescendants()

                    while true do
                        local v2028

                        v2027, v2028 = v2025(v2026, v2027)

                        if v2027 == nil then
                            break
                        end
                        if v2028:IsA('Sound') and v2028.Playing == false then
                            v2028.Playing = true
                        end
                    end
                end)
            end
        end
    end)
    addcmd('reset', {}, function(_, p2029)
        p2029.Character:FindFirstChildOfClass('Humanoid'):ChangeState(Enum.HumanoidStateType.Dead)
    end)
    addcmd('freezeanims', {}, function(_, p2030)
        local v2031 = (p2030.Character:FindFirstChildOfClass('Humanoid') or p2030.Character:FindFirstChildOfClass('AnimationController')):GetPlayingAnimationTracks()
        local v2032, v2033, v2034 = pairs(v2031)

        while true do
            local v2035

            v2034, v2035 = v2032(v2033, v2034)

            if v2034 == nil then
                break
            end

            v2035:AdjustSpeed(0)
        end
    end)
    addcmd('unfreezeanims', {}, function(_, p2036)
        local v2037 = (p2036.Character:FindFirstChildOfClass('Humanoid') or p2036.Character:FindFirstChildOfClass('AnimationController')):GetPlayingAnimationTracks()
        local v2038, v2039, v2040 = pairs(v2037)

        while true do
            local v2041

            v2040, v2041 = v2038(v2039, v2040)

            if v2040 == nil then
                break
            end

            v2041:AdjustSpeed(1)
        end
    end)
    addcmd('respawn', {}, function(_, p2042)
        respawn(p2042)
    end)
    addcmd('refresh', {
        're',
    }, function(_, p2043)
        refresh(p2043)
    end)
    addcmd('god', {}, function(_, p2044)
        local _CurrentCamera4 = workspace.CurrentCamera
        local _CFrame5 = _CurrentCamera4.CFrame
        local _Character17 = p2044.Character
        local v2048

        if _Character17 then
            v2048 = _Character17:FindFirstChildWhichIsA('Humanoid')
        else
            v2048 = _Character17
        end

        local v2049 = v2048:Clone()

        p2044.Character = nil
        v2049.Parent = _Character17

        v2049:SetStateEnabled(15, false)
        v2049:SetStateEnabled(1, false)
        v2049:SetStateEnabled(0, false)
        v2048:Destroy()

        v2049.BreakJointsOnDeath = true

        local v2050 = wait()

        if not v2050 then
            _CFrame5 = v2050
        end

        _CurrentCamera4.CFrame = _CFrame5
        _CurrentCamera4.CameraSubject = v2049
        p2044.Character = _Character17
        v2049.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

        local _Animate = _Character17:FindFirstChild('Animate')

        if _Animate then
            _Animate.Disabled = true

            wait()

            _Animate.Disabled = false
        end

        v2049.Health = v2049.MaxHealth
    end)

    invisRunning = false

    addcmd('invisible', {
        'invis',
    }, function(_, p2052)
        if invisRunning then
            return
        else
            invisRunning = true

            repeat
                wait(0.1)
            until p2052.Character

            local _Character18 = p2052.Character

            _Character18.Archivable = true

            local u2054 = false
            local u2055 = true
            local u2056 = _Character18:Clone()

            u2056.Parent = Lighting

            local _FallenPartsDestroyHeight = workspace.FallenPartsDestroyHeight

            u2056.Name = ''

            local u2062 = RunService.Stepped:Connect(function()
                pcall(function()
                    local v2058 = tostring(_FallenPartsDestroyHeight):find('-') and true or false
                    local _Position10 = p2052.Character.HumanoidRootPart.Position
                    local v2060 = tostring(_Position10):split(', ')

                    tonumber(v2060[1])

                    local v2061 = tonumber(v2060[2])

                    tonumber(v2060[3])

                    if v2058 == true then
                        if v2061 <= _FallenPartsDestroyHeight then
                            Respawn()
                        end
                    elseif v2058 == false and _FallenPartsDestroyHeight <= v2061 then
                        Respawn()
                    end
                end)
            end)
            local v2063, v2064, v2065 = pairs(u2056:GetDescendants())

            while true do
                local v2066

                v2065, v2066 = v2063(v2064, v2065)

                if v2065 == nil then
                    break
                end
                if v2066:IsA('BasePart') then
                    if v2066.Name ~= 'HumanoidRootPart' then
                        v2066.Transparency = 0.5
                    else
                        v2066.Transparency = 1
                    end
                end
            end

            function Respawn()
                u2055 = false

                if u2054 ~= true then
                    if u2054 == false then
                        pcall(function()
                            p2052.Character = _Character18

                            wait()

                            _Character18.Parent = workspace

                            _Character18:FindFirstChildWhichIsA('Humanoid'):Destroy()
                            TurnVisible()
                        end)
                    end
                else
                    pcall(function()
                        p2052.Character = _Character18

                        wait()

                        _Character18.Parent = workspace

                        _Character18:FindFirstChildWhichIsA('Humanoid'):Destroy()

                        u2054 = false
                        u2056.Parent = nil
                        invisRunning = false
                    end)
                end
            end

            local u2067 = nil

            u2067 = u2056:FindFirstChildOfClass('Humanoid').Died:Connect(function()
                Respawn()
                u2067:Disconnect()
            end)

            if u2054 ~= true then
                local u2068 = true
                local _CFrame6 = workspace.CurrentCamera.CFrame
                local _CFrame7 = p2052.Character.HumanoidRootPart.CFrame

                _Character18:MoveTo(Vector3.new(0, math.pi * 1000000, 0))

                workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable

                wait(0.2)

                workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                _Character18.Parent = Lighting
                u2056.Parent = workspace
                u2056.HumanoidRootPart.CFrame = _CFrame7
                p2052.Character = u2056

                execCmd('fixcam')

                p2052.Character.Animate.Disabled = true
                p2052.Character.Animate.Disabled = false

                function TurnVisible()
                    if u2068 ~= false then
                        u2062:Disconnect()
                        u2067:Disconnect()

                        _CFrame6 = workspace.CurrentCamera.CFrame
                        _Character18 = _Character18

                        local _CFrame8 = p2052.Character.HumanoidRootPart.CFrame

                        _Character18.HumanoidRootPart.CFrame = _CFrame8

                        u2056:Destroy()

                        p2052.Character = _Character18
                        _Character18.Parent = workspace
                        u2068 = false
                        p2052.Character.Animate.Disabled = true
                        p2052.Character.Animate.Disabled = false
                        u2067 = _Character18:FindFirstChildOfClass('Humanoid').Died:Connect(function()
                            Respawn()
                            u2067:Disconnect()
                        end)
                        invisRunning = false
                    end
                end

                notify('Invisible', 'You now appear invisible to other players')
            end
        end
    end)
    addcmd('visible', {
        'vis',
    }, function(_, _)
        TurnVisible()
    end)
    addcmd('toggleinvis', {}, function(_, _)
        if invisRunning then
            execCmd('visible')
        else
            execCmd('invisible')
        end
    end)
    addcmd('toolinvisible', {
        'toolinvis',
        'tinvis',
    }, function(_, _)
        local _Character19 = Players.LocalPlayer.Character
        local u2073 = false
        local _Part3 = Instance.new('Part')

        _Part3.Anchored = true
        _Part3.CanCollide = true
        _Part3.Size = Vector3.new(10, 1, 10)
        _Part3.Position = Vector3.new(0, 10000, 0)
        _Part3.Parent = workspace

        local u2078 = _Part3.Touched:connect(function(p2075)
            if p2075.Parent.Name == Players.LocalPlayer.Name and u2073 == false then
                u2073 = true

                local function v2077()
                    local v2076 = _Character19.HumanoidRootPart:Clone()

                    wait(0.25)
                    _Character19.HumanoidRootPart:Destroy()

                    v2076.Parent = _Character19

                    _Character19:MoveTo(loc)

                    u2073 = false
                end

                if _Character19 then
                    v2077()
                end
            end
        end)

        repeat
            wait()
        until _Character19

        local u2079 = nil

        u2079 = Players.LocalPlayer.CharacterAdded:connect(function(_)
            u2078:Disconnect()
            _Part3:Destroy()
            u2079:Disconnect()
        end)
        loc = _Character19.HumanoidRootPart.Position

        local v2080 = _Character19

        _Character19.MoveTo(v2080, _Part3.Position + Vector3.new(0, 0.5, 0))
    end)
    addcmd('strengthen', {}, function(p2081, p2082)
        local v2083, v2084, v2085 = pairs(p2082.Character:GetDescendants())

        while true do
            local v2086

            v2085, v2086 = v2083(v2084, v2085)

            if v2085 == nil then
                break
            end
            if v2086.ClassName == 'Part' then
                if p2081[1] then
                    v2086.CustomPhysicalProperties = PhysicalProperties.new(p2081[1], 0.3, 0.5)
                else
                    v2086.CustomPhysicalProperties = PhysicalProperties.new(100, 0.3, 0.5)
                end
            end
        end
    end)
    addcmd('weaken', {}, function(p2087, p2088)
        local v2089, v2090, v2091 = pairs(p2088.Character:GetDescendants())

        while true do
            local v2092

            v2091, v2092 = v2089(v2090, v2091)

            if v2091 == nil then
                break
            end
            if v2092.ClassName == 'Part' then
                if p2087[1] then
                    v2092.CustomPhysicalProperties = PhysicalProperties.new(-p2087[1], 0.3, 0.5)
                else
                    v2092.CustomPhysicalProperties = PhysicalProperties.new(0, 0.3, 0.5)
                end
            end
        end
    end)
    addcmd('unweaken', {
        'unstrengthen',
    }, function(_, p2093)
        local v2094, v2095, v2096 = pairs(p2093.Character:GetDescendants())

        while true do
            local v2097

            v2096, v2097 = v2094(v2095, v2096)

            if v2096 == nil then
                break
            end
            if v2097.ClassName == 'Part' then
                v2097.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
            end
        end
    end)
    addcmd('breakvelocity', {}, function(_, p2098)
        local u2099 = false
        local v2100 = Vector3.new(0, 0, 0)

        delay(1, function()
            u2099 = true
        end)

        while not u2099 do
            local v2101, v2102, v2103 = ipairs(p2098.Character:GetDescendants())

            while true do
                local v2104

                v2103, v2104 = v2101(v2102, v2103)

                if v2103 == nil then
                    break
                end
                if v2104:IsA('BasePart') then
                    v2104.RotVelocity = v2100
                    v2104.Velocity = v2100
                end
            end

            wait()
        end
    end)
    addcmd('jpower', {
        'jumppower',
        'jp',
    }, function(p2105, p2106)
        local v2107 = p2105[1] or 50

        if isNumber(v2107) then
            if p2106.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
                p2106.Character:FindFirstChildOfClass('Humanoid').JumpPower = v2107
            else
                p2106.Character:FindFirstChildOfClass('Humanoid').JumpHeight = v2107
            end
        end
    end)
    addcmd('maxslopeangle', {
        'msa',
    }, function(p2108, p2109)
        local v2110 = p2108[1] or 89

        if isNumber(v2110) then
            p2109.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle = v2110
        end
    end)
    addcmd('gravity', {
        'grav',
    }, function(p2111, _)
        local v2112 = p2111[1] or 196.2

        if isNumber(v2112) then
            workspace.Gravity = v2112
        end
    end)
    addcmd('hipheight', {
        'hheight',
    }, function(p2113, p2114)
        local v2115

        if r15(p2114) then
            v2115 = p2113[1] or 2.1
        else
            v2115 = p2113[1] or 0
        end

        p2114.Character:FindFirstChildOfClass('Humanoid').HipHeight = v2115
    end)
    addcmd('dance', {}, function(_, p2116)
        if r15(p2116) then
            notify('R6 Required', 'This command requires the r6 rig type')
        else
            local v2117 = {
                '27789359',
                '30196114',
                '248263260',
                '45834924',
                '33796059',
                '28488254',
                '52155728',
            }
            local _Animation = Instance.new('Animation')

            _Animation.AnimationId = 'rbxassetid://' .. v2117[math.random(1, #v2117)]
            animTrack = p2116.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(_Animation)

            animTrack:Play()
        end
    end)
    addcmd('undance', {
        'nodance',
    }, function(_, _)
        animTrack:Stop()
        animTrack:Destroy()
    end)
    addcmd('nolimbs', {
        'rlimbs',
    }, function(_, p2119)
        if r15(p2119) then
            local v2120, v2121, v2122 = pairs(p2119.Character:GetChildren())

            while true do
                local v2123

                v2122, v2123 = v2120(v2121, v2122)

                if v2122 == nil then
                    break
                end
                if v2123:IsA('BasePart') and v2123.Name == 'RightUpperLeg' or (v2123.Name == 'LeftUpperLeg' or (v2123.Name == 'RightUpperArm' or v2123.Name == 'LeftUpperArm')) then
                    v2123:Destroy()
                end
            end
        else
            local v2124, v2125, v2126 = pairs(p2119.Character:GetChildren())

            while true do
                local v2127

                v2126, v2127 = v2124(v2125, v2126)

                if v2126 == nil then
                    break
                end
                if v2127:IsA('BasePart') and v2127.Name == 'Right Leg' or (v2127.Name == 'Left Leg' or (v2127.Name == 'Right Arm' or v2127.Name == 'Left Arm')) then
                    v2127:Destroy()
                end
            end
        end
    end)
    addcmd('nohead', {
        'rhead',
        'headless',
    }, function(_, _)
        if sethidden then
            local _LocalPlayer6 = Players.LocalPlayer
            local _Character20 = _LocalPlayer6.Character

            if tostring(_Character20:FindFirstChildOfClass('Humanoid').RigType) ~= 'Enum.HumanoidRigType.R6' then
                local _ = tostring(_Character20:FindFirstChildOfClass('Humanoid').RigType) ~= 'Enum.HumanoidRigType.R15'
            end

            local _ = Players.LocalPlayer
            local _Model2 = Instance.new('Model')
            local _Humanoid6 = Instance.new('Humanoid')
            local _Model3 = Instance.new('Model')
            local _Humanoid7 = Instance.new('Humanoid')

            _Model2.Parent = workspace
            _Humanoid6.Parent = _Model2
            _Model3.Parent = workspace
            _Humanoid7.Parent = _Model3
            _LocalPlayer6.Character = _Model2

            wait(2)

            _Character20:FindFirstChildOfClass('Humanoid').Animator.Parent = _Humanoid7

            _Character20:FindFirstChildOfClass('Humanoid'):Destroy()
            _Character20.Head:Destroy()
            wait(5)

            Players.LocalPlayer.Character = _Character20

            local _Humanoid8 = Instance.new('Humanoid')

            _Humanoid8.Parent = _Character20
            _Character20:FindFirstChildOfClass('Humanoid').Jump = true
            _Humanoid7.Animator.Parent = _Humanoid8
            _Character20.Animate.Disabled = true

            wait()

            _Character20.Animate.Disabled = false

            wait()

            if rig ~= 1 then
                if rig == 2 then
                    _Humanoid8.HipHeight = 2.19
                end
            else
                _Humanoid8.HipHeight = 0
            end
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing sethiddenproperty)')
        end
    end)
    addcmd('noarms', {
        'rarms',
    }, function(_, p2135)
        if r15(p2135) then
            local v2136, v2137, v2138 = pairs(p2135.Character:GetChildren())

            while true do
                local v2139

                v2138, v2139 = v2136(v2137, v2138)

                if v2138 == nil then
                    break
                end
                if v2139:IsA('BasePart') and v2139.Name == 'RightUpperArm' or v2139.Name == 'LeftUpperArm' then
                    v2139:Destroy()
                end
            end
        else
            local v2140, v2141, v2142 = pairs(p2135.Character:GetChildren())

            while true do
                local v2143

                v2142, v2143 = v2140(v2141, v2142)

                if v2142 == nil then
                    break
                end
                if v2143:IsA('BasePart') and v2143.Name == 'Right Arm' or v2143.Name == 'Left Arm' then
                    v2143:Destroy()
                end
            end
        end
    end)
    addcmd('nolegs', {
        'rlegs',
    }, function(_, p2144)
        if r15(p2144) then
            local v2145, v2146, v2147 = pairs(p2144.Character:GetChildren())

            while true do
                local v2148

                v2147, v2148 = v2145(v2146, v2147)

                if v2147 == nil then
                    break
                end
                if v2148:IsA('BasePart') and v2148.Name == 'RightUpperLeg' or v2148.Name == 'LeftUpperLeg' then
                    v2148:Destroy()
                end
            end
        else
            local v2149, v2150, v2151 = pairs(p2144.Character:GetChildren())

            while true do
                local v2152

                v2151, v2152 = v2149(v2150, v2151)

                if v2151 == nil then
                    break
                end
                if v2152:IsA('BasePart') and v2152.Name == 'Right Leg' or v2152.Name == 'Left Leg' then
                    v2152:Destroy()
                end
            end
        end
    end)
    addcmd('sit', {}, function(_, p2153)
        p2153.Character:FindFirstChildOfClass('Humanoid').Sit = true
    end)
    addcmd('lay', {
        'laydown',
    }, function(_, p2154)
        local _Character21 = p2154.Character

        if _Character21 then
            _Character21 = p2154.Character:FindFirstChildOfClass('Humanoid')
        end
        if _Character21 then
            _Character21.Sit = true

            task.wait(0.1)

            _Character21.RootPart.CFrame = _Character21.RootPart.CFrame * CFrame.Angles(math.pi * 0.5, 0, 0)

            local v2156, v2157, v2158 = ipairs(_Character21:GetPlayingAnimationTracks())

            while true do
                local v2159

                v2158, v2159 = v2156(v2157, v2158)

                if v2158 == nil then
                    break
                end

                v2159:Stop()
            end
        end
    end)
    addcmd('sitwalk', {}, function(_, p2160)
        local _Animate2 = p2160.Character.Animate
        local _AnimationId = _Animate2.sit:FindFirstChildOfClass('Animation').AnimationId

        _Animate2.idle:FindFirstChildOfClass('Animation').AnimationId = _AnimationId
        _Animate2.walk:FindFirstChildOfClass('Animation').AnimationId = _AnimationId
        _Animate2.run:FindFirstChildOfClass('Animation').AnimationId = _AnimationId
        _Animate2.jump:FindFirstChildOfClass('Animation').AnimationId = _AnimationId

        if r15(p2160) then
            p2160.Character:FindFirstChildOfClass('Humanoid').HipHeight = 0.5
        else
            p2160.Character:FindFirstChildOfClass('Humanoid').HipHeight = -1.5
        end
    end)

    function noSitFunc()
        wait()

        if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit then
            Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit = false
        end
    end

    addcmd('nosit', {}, function(_, p2163)
        if noSit then
            noSit:Disconnect()
            nositDied:Disconnect()
        end

        noSit = Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal('Sit'):Connect(noSitFunc)
        nositDied = p2163.CharacterAdded:Connect(function()
            repeat
                wait()
            until p2163.Character ~= nil and p2163.Character:FindFirstChildOfClass('Humanoid')

            noSit:Disconnect()

            noSit = Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal('Sit'):Connect(noSitFunc)
        end)
    end)
    addcmd('unnosit', {}, function(_, _)
        if noSit then
            noSit:Disconnect()
            nositDied:Disconnect()
        end
    end)
    addcmd('jump', {}, function(_, p2164)
        p2164.Character:FindFirstChildOfClass('Humanoid'):ChangeState(Enum.HumanoidStateType.Jumping)
    end)

    local u2165 = nil
    local u2166 = false

    addcmd('infjump', {
        'infinitejump',
    }, function(_, p2167)
        if u2165 then
            u2165:Disconnect()
        end

        u2166 = false
        u2165 = UserInputService.JumpRequest:Connect(function()
            if not u2166 then
                u2166 = true

                p2167.Character:FindFirstChildOfClass('Humanoid'):ChangeState(Enum.HumanoidStateType.Jumping)
                wait()

                u2166 = false
            end
        end)
    end)
    addcmd('uninfjump', {
        'uninfinitejump',
        'noinfjump',
        'noinfinitejump',
    }, function(_, _)
        if u2165 then
            u2165:Disconnect()
        end

        u2166 = false
    end)

    local u2168 = nil

    addcmd('flyjump', {}, function(_, _)
        if u2168 then
            u2168:Disconnect()
        end

        u2168 = UserInputService.JumpRequest:Connect(function(_)
            Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState(Enum.HumanoidStateType.Jumping)
        end)
    end)
    addcmd('unflyjump', {
        'noflyjump',
    }, function(_, _)
        if u2168 then
            u2168:Disconnect()
        end
    end)

    local u2169 = {}

    addcmd('autojump', {
        'ajump',
    }, function(_, p2170)
        local _Character22 = p2170.Character
        local u2172

        if _Character22 then
            u2172 = _Character22:FindFirstChildWhichIsA('Humanoid')
        else
            u2172 = _Character22
        end

        local function u2173()
            if _Character22 and u2172 and (workspace:FindPartOnRay(Ray.new(u2172.RootPart.Position - Vector3.new(0, 1.5, 0), u2172.RootPart.CFrame.lookVector * 3), u2172.Parent) or workspace:FindPartOnRay(Ray.new(u2172.RootPart.Position + Vector3.new(0, 1.5, 0), u2172.RootPart.CFrame.lookVector * 3), u2172.Parent)) then
                u2172.Jump = true
            end
        end

        u2173()

        local v2174 = u2169

        if u2169.ajLoop then
            u2169.ajLoop:Disconnect()
        end

        v2174.ajLoop = RunService.RenderStepped:Connect(u2173)

        local v2175 = u2169

        if u2169.ajCA then
            u2169.ajCA:Disconnect()
        end

        v2175.ajCA = p2170.CharacterAdded:Connect(function(p2176)
            u2172 = p2176:WaitForChild('Humanoid')
            _Character22 = p2176

            u2173()

            local v2177 = u2169

            if u2169.ajLoop then
                u2169.ajLoop:Disconnect()
            end

            v2177.ajLoop = RunService.RenderStepped:Connect(u2173)
        end)
    end)
    addcmd('unautojump', {
        'noautojump',
        'noajump',
        'unajump',
    }, function(_, _)
        local v2178 = u2169

        if u2169.ajLoop then
            u2169.ajLoop:Disconnect()
        end

        v2178.ajLoop = nil

        local v2179 = u2169

        if u2169.ajCA then
            u2169.ajCA:Disconnect()
        end

        v2179.ajCA = nil
    end)
    addcmd('edgejump', {
        'ejump',
    }, function(_, p2180)
        local _Character23 = p2180.Character
        local u2182

        if _Character23 then
            u2182 = _Character23:FindFirstChildWhichIsA('Humanoid')
        else
            u2182 = _Character23
        end

        local u2183 = nil
        local u2184 = nil
        local u2185 = nil

        local function u2186()
            if _Character23 and u2182 then
                u2184 = u2183
                u2183 = u2182:GetState()

                if u2184 ~= u2183 and (u2183 == Enum.HumanoidStateType.Freefall and u2184 ~= Enum.HumanoidStateType.Jumping) then
                    _Character23.HumanoidRootPart.CFrame = u2185
                    _Character23.HumanoidRootPart.Velocity = Vector3.new(_Character23.HumanoidRootPart.Velocity.X, u2182.JumpPower or u2182.JumpHeight, _Character23.HumanoidRootPart.Velocity.Z)
                end

                u2185 = _Character23.HumanoidRootPart.CFrame
            end
        end

        u2186()

        local v2187 = u2169

        if u2169.ejLoop then
            u2169.ejLoop:Disconnect()
        end

        v2187.ejLoop = RunService.RenderStepped:Connect(u2186)

        local v2188 = u2169

        if u2169.ejCA then
            u2169.ejCA:Disconnect()
        end

        v2188.ejCA = p2180.CharacterAdded:Connect(function(p2189)
            u2182 = p2189:WaitForChild('Humanoid')
            _Character23 = p2189

            u2186()

            local v2190 = u2169

            if u2169.ejLoop then
                u2169.ejLoop:Disconnect()
            end

            v2190.ejLoop = RunService.RenderStepped:Connect(u2186)
        end)
    end)
    addcmd('unedgejump', {
        'noedgejump',
        'noejump',
        'unejump',
    }, function(_, _)
        local v2191 = u2169

        if u2169.ejLoop then
            u2169.ejLoop:Disconnect()
        end

        v2191.ejLoop = nil

        local v2192 = u2169

        if u2169.ejCA then
            u2169.ejCA:Disconnect()
        end

        v2192.ejCA = nil
    end)
    addcmd('team', {}, function(_, p2193)
        local v2194, v2195, v2196 = pairs(Teams:GetChildren())
        local v2197 = nil

        while true do
            local v2198

            v2196, v2198 = v2194(v2195, v2196)

            if v2196 == nil then
                break
            end
            if v2198.Name:lower():find(getstring(1)) == 1 then
                v2197 = v2198
            end
        end

        p2193.Team = v2197
    end)
    addcmd('nobgui', {
        'unbgui',
        'nobillboardgui',
        'unbillboardgui',
        'noname',
        'rohg',
    }, function(_, p2199)
        local v2200, v2201, v2202 = pairs(p2199.Character:GetDescendants())

        while true do
            local v2203

            v2202, v2203 = v2200(v2201, v2202)

            if v2202 == nil then
                break
            end
            if v2203:IsA('BillboardGui') or v2203:IsA('SurfaceGui') then
                v2203:Destroy()
            end
        end
    end)
    addcmd('loopnobgui', {
        'loopunbgui',
        'loopnobillboardgui',
        'loopunbillboardgui',
        'loopnoname',
        'looprohg',
    }, function(_, p2204)
        local v2205, v2206, v2207 = pairs(p2204.Character:GetDescendants())

        while true do
            local v2208

            v2207, v2208 = v2205(v2206, v2207)

            if v2207 == nil then
                break
            end
            if v2208:IsA('BillboardGui') or v2208:IsA('SurfaceGui') then
                v2208:Destroy()
            end
        end

        charPartTrigger = p2204.Character.DescendantAdded:Connect(function(p2209)
            if p2209:IsA('BillboardGui') or p2209:IsA('SurfaceGui') then
                wait()
                p2209:Destroy()
            end
        end)
    end)
    addcmd('unloopnobgui', {
        'unloopunbgui',
        'unloopnobillboardgui',
        'unloopunbillboardgui',
        'unloopnoname',
        'unlooprohg',
    }, function(_, _)
        if charPartTrigger then
            charPartTrigger:Disconnect()
        end
    end)
    addcmd('spasm', {}, function(_, p2210)
        if r15(p2210) then
            notify('R6 Required', 'This command requires the r6 rig type')
        else
            local _Character24 = p2210.Character

            SpasmAnim = Instance.new('Animation')
            SpasmAnim.AnimationId = 'rbxassetid://33796059'
            Spasm = _Character24:FindFirstChildOfClass('Humanoid'):LoadAnimation(SpasmAnim)

            Spasm:Play()
            Spasm:AdjustSpeed(99)
        end
    end)
    addcmd('unspasm', {
        'nospasm',
    }, function(_, _)
        Spasm:Stop()
        SpasmAnim:Destroy()
    end)
    addcmd('headthrow', {}, function(_, p2212)
        if r15(p2212) then
            notify('R6 Required', 'This command requires the r6 rig type')
        else
            local _Animation2 = Instance.new('Animation')

            _Animation2.AnimationId = 'rbxassetid://35154961'

            local v2214 = p2212.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(_Animation2)

            v2214:Play(0)
            v2214:AdjustSpeed(1)
        end
    end)
    addcmd('animation', {
        'anim',
    }, function(p2215, p2216)
        if r15(p2216) then
            notify('R6 Required', 'This command requires the r6 rig type')
        else
            local _Character25 = p2216.Character
            local v2218 = tostring(p2215[1])
            local _Animation3 = Instance.new('Animation')

            _Animation3.AnimationId = 'rbxassetid://' .. v2218

            local v2220 = _Character25:FindFirstChildOfClass('Humanoid'):LoadAnimation(_Animation3)

            v2220:Play()

            if p2215[2] then
                v2220:AdjustSpeed(tostring(p2215[2]))
            end
        end
    end)
    addcmd('noanim', {}, function(_, p2221)
        p2221.Character.Animate.Disabled = true
    end)
    addcmd('reanim', {}, function(_, p2222)
        p2222.Character.Animate.Disabled = false
    end)
    addcmd('animspeed', {}, function(p2223, p2224)
        local _Character26 = p2224.Character
        local v2226 = _Character26:FindFirstChildOfClass('Humanoid') or _Character26:FindFirstChildOfClass('AnimationController')
        local v2227 = next
        local v2228, v2229 = v2226:GetPlayingAnimationTracks()

        while true do
            local v2230

            v2229, v2230 = v2227(v2228, v2229)

            if v2229 == nil then
                break
            end

            v2230:AdjustSpeed(tonumber(p2223[1] or 1))
        end
    end)
    addcmd('copyanimation', {
        'copyanim',
        'copyemote',
    }, function(p2231, p2232)
        local v2233 = getPlayer(p2231[1], p2232)
        local v2234, v2235, v2236 = ipairs(v2233)

        while true do
            local v2237

            v2236, v2237 = v2234(v2235, v2236)

            if v2236 == nil then
                break
            end

            local _ = Players[v2237].Character
            local v2238, v2239, v2240 = pairs(p2232.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks())

            while true do
                local v2241

                v2240, v2241 = v2238(v2239, v2240)

                if v2240 == nil then
                    break
                end

                v2241:Stop()
            end

            local v2242, v2243, v2244 = pairs(Players[v2237].Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks())

            while true do
                local u2245

                v2244, u2245 = v2242(v2243, v2244)

                if v2244 == nil then
                    break
                end
                if not string.find(u2245.Animation.AnimationId, '507768375') then
                    local u2246 = p2232.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(u2245.Animation)
                    local v2247 = u2246

                    u2246.Play(v2247, 0.1, 1, u2245.Speed)

                    u2246.TimePosition = u2245.TimePosition

                    task.spawn(function()
                        u2245.Stopped:Wait()
                        u2246:Stop()
                        u2246:Destroy()
                    end)
                end
            end
        end
    end)
    addcmd('stopanimations', {
        'stopanims',
        'stopanim',
    }, function(_, p2248)
        local _Character27 = p2248.Character
        local v2250 = _Character27:FindFirstChildOfClass('Humanoid') or _Character27:FindFirstChildOfClass('AnimationController')
        local v2251 = next
        local v2252, v2253 = v2250:GetPlayingAnimationTracks()

        while true do
            local v2254

            v2253, v2254 = v2251(v2252, v2253)

            if v2253 == nil then
                break
            end

            v2254:Stop()
        end
    end)
    addcmd('refreshanimations', {
        'refreshanimation',
        'refreshanims',
        'refreshanim',
    }, function(_, p2255)
        local v2256 = p2255.Character or p2255.CharacterAdded:Wait()
        local v2257

        if v2256 then
            v2257 = v2256:WaitForChild('Humanoid', 15)
        else
            v2257 = v2256
        end
        if v2256 then
            v2256 = v2256:WaitForChild('Animate', 15)
        end
        if not (v2257 and v2256) then
            return notify('Refresh Animations', 'Failed to get Animate/Humanoid')
        end

        v2256.Disabled = true

        local v2258, v2259, v2260 = ipairs(v2257:GetPlayingAnimationTracks())

        while true do
            local v2261

            v2260, v2261 = v2258(v2259, v2260)

            if v2260 == nil then
                break
            end

            v2261:Stop()
        end

        v2256.Disabled = false
    end)
    addcmd('allowcustomanim', {
        'allowcustomanimations',
    }, function(_, _)
        StarterPlayer.AllowCustomAnimations = true

        execCmd('refreshanimations')
    end)
    addcmd('unallowcustomanim', {
        'unallowcustomanimations',
    }, function(_, _)
        StarterPlayer.AllowCustomAnimations = false

        execCmd('refreshanimations')
    end)
    addcmd('loopanimation', {
        'loopanim',
    }, function(_, p2262)
        local _Character28 = p2262.Character

        if _Character28 then
            _Character28 = _Character28:FindFirstChildWhichIsA('Humanoid')
        end

        local v2264, v2265, v2266 = ipairs(_Character28:GetPlayingAnimationTracks())

        while true do
            local v2267

            v2266, v2267 = v2264(v2265, v2266)

            if v2266 == nil then
                break
            end

            v2267.Looped = true
        end
    end)
    addcmd('tpposition', {
        'tppos',
    }, function(p2268, p2269)
        if #p2268 >= 3 then
            local v2270 = tonumber(p2268[1])
            local v2271 = tonumber(p2268[2])
            local v2272 = tonumber(p2268[3])
            local _Character29 = p2269.Character

            if _Character29 and getRoot(_Character29) then
                getRoot(_Character29).CFrame = CFrame.new(v2270, v2271, v2272)
            end
        end
    end)
    addcmd('tweentpposition', {
        'ttppos',
    }, function(p2274, p2275)
        if #p2274 >= 3 then
            local v2276 = tonumber(p2274[1])
            local v2277 = tonumber(p2274[2])
            local v2278 = tonumber(p2274[3])
            local _Character30 = p2275.Character

            if _Character30 and getRoot(_Character30) then
                TweenService:Create(getRoot(p2275.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {
                    CFrame = CFrame.new(v2276, v2277, v2278),
                }):Play()
            end
        end
    end)
    addcmd('offset', {}, function(p2280, p2281)
        if #p2280 >= 3 then
            if p2281.Character then
                p2281.Character:TranslateBy(Vector3.new(tonumber(p2280[1]) or 0, tonumber(p2280[2]) or 0, tonumber(p2280[3]) or 0))
            end
        end
    end)
    addcmd('tweenoffset', {
        'toffset',
    }, function(p2282, p2283)
        if #p2282 >= 3 then
            local v2284 = tonumber(p2282[1])
            local v2285 = tonumber(p2282[2])
            local v2286 = tonumber(p2282[3])
            local _Character31 = p2283.Character

            if _Character31 and getRoot(_Character31) then
                TweenService:Create(getRoot(p2283.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {
                    CFrame = CFrame.new(v2284, v2285, v2286),
                }):Play()
            end
        end
    end)
    addcmd('clickteleport', {}, function(_, p2288)
        if p2288 == Players.LocalPlayer then
            notify('Click TP', 'Go to Settings>Keybinds>Add to set up click tp')
        end
    end)
    addcmd('tptool', {
        'teleporttool',
    }, function(_, p2289)
        local _Tool = Instance.new('Tool')

        _Tool.Name = 'Teleport Tool'
        _Tool.RequiresHandle = false
        _Tool.Parent = p2289.Backpack

        _Tool.Activated:Connect(function()
            local v2291 = p2289.Character or workspace:FindFirstChild(p2289.Name)
            local v2292

            if v2291 then
                v2292 = v2291:FindFirstChild('HumanoidRootPart')
            else
                v2292 = v2291
            end
            if not (v2291 and v2292) then
                return warn('Failed to find HumanoidRootPart')
            end

            v2292.CFrame = CFrame.new(IYMouse.Hit.X, IYMouse.Hit.Y + 3, IYMouse.Hit.Z, select(4, v2292.CFrame:components()))
        end)
    end)
    addcmd('clickdelete', {}, function(_, p2293)
        if p2293 == Players.LocalPlayer then
            notify('Click Delete', 'Go to Settings>Keybinds>Add to set up click delete')
        end
    end)
    addcmd('getposition', {
        'getpos',
        'notifypos',
        'notifyposition',
    }, function(p2294, p2295)
        local v2296 = getPlayer(p2294[1], p2295)
        local v2297, v2298, v2299 = pairs(v2296)

        while true do
            local v2300

            v2299, v2300 = v2297(v2298, v2299)

            if v2299 == nil then
                break
            end

            local _Character32 = Players[v2300].Character

            if _Character32 then
                _Character32 = getRoot(_Character32) or _Character32:FindFirstChildWhichIsA('BasePart')
            end
            if _Character32 then
                _Character32 = _Character32.Position
            end
            if not _Character32 then
                return notify('Getposition Error', 'Missing character')
            end

            local v2302 = math.round(_Character32.X) .. ', ' .. math.round(_Character32.Y) .. ', ' .. math.round(_Character32.Z)

            notify('Current Position', v2302)
        end
    end)
    addcmd('copyposition', {
        'copypos',
    }, function(p2303, p2304)
        local v2305 = getPlayer(p2303[1], p2304)
        local v2306, v2307, v2308 = pairs(v2305)

        while true do
            local v2309

            v2308, v2309 = v2306(v2307, v2308)

            if v2308 == nil then
                break
            end

            local _Character33 = Players[v2309].Character

            if _Character33 then
                _Character33 = getRoot(_Character33) or _Character33:FindFirstChildWhichIsA('BasePart')
            end
            if _Character33 then
                _Character33 = _Character33.Position
            end
            if not _Character33 then
                return notify('Getposition Error', 'Missing character')
            end

            local v2311 = math.round(_Character33.X) .. ', ' .. math.round(_Character33.Y) .. ', ' .. math.round(_Character33.Z)

            toClipboard(v2311)
        end
    end)
    addcmd('walktopos', {
        'walktoposition',
    }, function(p2312, p2313)
        if p2313.Character:FindFirstChildOfClass('Humanoid') and p2313.Character:FindFirstChildOfClass('Humanoid').SeatPart then
            p2313.Character:FindFirstChildOfClass('Humanoid').Sit = false

            wait(0.1)
        end

        p2313.Character:FindFirstChildOfClass('Humanoid').WalkToPoint = Vector3.new(p2312[1], p2312[2], p2312[3])
    end)
    addcmd('speed', {
        'ws',
        'walkspeed',
    }, function(p2314, p2315)
        if p2314[2] then
            local v2316 = p2314[2] or 16

            if isNumber(v2316) then
                p2315.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = v2316
            end
        else
            local v2317 = p2314[1] or 16

            if isNumber(v2317) then
                p2315.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = v2317
            end
        end
    end)
    addcmd('spoofspeed', {
        'spoofws',
        'spoofwalkspeed',
    }, function(p2318, p2319)
        if p2318[1] and isNumber(p2318[1]) then
            if hookmetamethod then
                local _Character34 = p2319.Character
                local u2321 = nil
                local u2322 = nil

                u2322 = hookmetamethod(game, '__index', function(p2323, p2324)
                    local v2325 = p2324:gsub('\0', '')

                    if (v2325 == 'WalkSpeed' or v2325 == 'walkSpeed') and (p2323:IsA('Humanoid') and (p2323:IsDescendantOf(_Character34) and not checkcaller())) then
                        return u2321 or p2318[1]
                    else
                        return u2322(p2323, p2324)
                    end
                end)

                local u2326 = nil

                u2326 = hookmetamethod(game, '__newindex', function(p2327, p2328, p2329)
                    local v2330 = string.gsub(p2328, '\0', '')

                    if v2330 ~= 'WalkSpeed' and v2330 ~= 'walkSpeed' or (not p2327:IsA('Humanoid') or (not p2327:IsDescendantOf(_Character34) or checkcaller())) then
                        return u2326(p2327, p2328, p2329)
                    end

                    u2321 = tonumber(p2329)

                    return u2321
                end)
            else
                notify('Incompatible Exploit', 'Your exploit does not support this command (missing hookmetamethod)')
            end
        end
    end)
    addcmd('loopspeed', {
        'loopws',
    }, function(p2331, p2332)
        local v2333 = p2331[1] or 16
        local u2334 = p2331[2] and (p2331[2] or 16) or v2333

        if isNumber(u2334) then
            local u2335 = p2332.Character or workspace:FindFirstChild(p2332.Name)
            local u2336

            if u2335 then
                u2336 = u2335:FindFirstChildWhichIsA('Humanoid')
            else
                u2336 = u2335
            end

            local function u2337()
                if u2335 and u2336 then
                    u2336.WalkSpeed = u2334
                end
            end

            u2337()

            local v2338 = u2169

            if u2169.wsLoop then
                u2169.wsLoop:Disconnect()
            end

            local v2339 = u2336

            v2338.wsLoop = u2336.GetPropertyChangedSignal(v2339, 'WalkSpeed'):Connect(u2337)

            local v2340 = u2169

            if u2169.wsCA then
                u2169.wsCA:Disconnect()
            end

            v2340.wsCA = p2332.CharacterAdded:Connect(function(p2341)
                u2336 = p2341:WaitForChild('Humanoid')
                u2335 = p2341

                u2337()

                local v2342 = u2169

                if u2169.wsLoop then
                    u2169.wsLoop:Disconnect()
                end

                v2342.wsLoop = u2336:GetPropertyChangedSignal('WalkSpeed'):Connect(u2337)
            end)
        end
    end)
    addcmd('unloopspeed', {
        'unloopws',
    }, function(_, _)
        local v2343 = u2169

        if u2169.wsLoop then
            u2169.wsLoop:Disconnect()
        end

        v2343.wsLoop = nil

        local v2344 = u2169

        if u2169.wsCA then
            u2169.wsCA:Disconnect()
        end

        v2344.wsCA = nil
    end)
    addcmd('spoofjumppower', {
        'spoofjp',
    }, function(p2345, p2346)
        if p2345[1] and isNumber(p2345[1]) then
            if hookmetamethod then
                local _Character35 = p2346.Character
                local u2348 = nil
                local u2349 = nil

                u2349 = hookmetamethod(game, '__index', function(p2350, p2351)
                    local v2352 = p2351:gsub('\0', '')

                    if (v2352 == 'JumpPower' or v2352 == 'jumpPower') and (p2350:IsA('Humanoid') and (p2350:IsDescendantOf(_Character35) and not checkcaller())) then
                        return u2348 or p2345[1]
                    else
                        return u2349(p2350, p2351)
                    end
                end)

                local u2353 = nil

                u2353 = hookmetamethod(game, '__newindex', function(p2354, p2355, p2356)
                    local v2357 = string.gsub(p2355, '\0', '')

                    if v2357 ~= 'JumpPower' and v2357 ~= 'jumpPower' or (not p2354:IsA('Humanoid') or (not p2354:IsDescendantOf(_Character35) or checkcaller())) then
                        return u2353(p2354, p2355, p2356)
                    end

                    u2348 = tonumber(p2356)

                    return u2348
                end)
            else
                notify('Incompatible Exploit', 'Your exploit does not support this command (missing hookmetamethod)')
            end
        end
    end)
    addcmd('loopjumppower', {
        'loopjp',
        'loopjpower',
    }, function(p2358, p2359)
        local u2360 = p2358[1] or 50

        if isNumber(u2360) then
            local u2361 = p2359.Character or workspace:FindFirstChild(p2359.Name)
            local u2362

            if u2361 then
                u2362 = u2361:FindFirstChildWhichIsA('Humanoid')
            else
                u2362 = u2361
            end

            local function u2363()
                if u2361 and u2362 then
                    if p2359.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
                        p2359.Character:FindFirstChildOfClass('Humanoid').JumpPower = u2360
                    else
                        p2359.Character:FindFirstChildOfClass('Humanoid').JumpHeight = u2360
                    end
                end
            end

            u2363()

            local v2364 = u2169

            if u2169.jpLoop then
                u2169.jpLoop:Disconnect()
            end

            local v2365 = u2362

            v2364.jpLoop = u2362.GetPropertyChangedSignal(v2365, 'JumpPower'):Connect(u2363)

            local v2366 = u2169

            if u2169.jpCA then
                u2169.jpCA:Disconnect()
            end

            v2366.jpCA = p2359.CharacterAdded:Connect(function(p2367)
                u2362 = p2367:WaitForChild('Humanoid')
                u2361 = p2367

                u2363()

                local v2368 = u2169

                if u2169.jpLoop then
                    u2169.jpLoop:Disconnect()
                end

                v2368.jpLoop = u2362:GetPropertyChangedSignal('JumpPower'):Connect(u2363)
            end)
        end
    end)
    addcmd('unloopjumppower', {
        'unloopjp',
        'unloopjpower',
    }, function(_, p2369)
        local v2370 = p2369.Character or workspace:FindFirstChild(p2369.Name)
        local v2371

        if v2370 then
            v2371 = v2370:FindFirstChildWhichIsA('Humanoid')
        else
            v2371 = v2370
        end

        local v2372 = u2169

        if u2169.jpLoop then
            u2169.jpLoop:Disconnect()
        end

        v2372.jpLoop = nil

        local v2373 = u2169

        if u2169.jpCA then
            u2169.jpCA:Disconnect()
        end

        v2373.jpCA = nil

        if v2370 and v2371 then
            if p2369.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
                p2369.Character:FindFirstChildOfClass('Humanoid').JumpPower = 50
            else
                p2369.Character:FindFirstChildOfClass('Humanoid').JumpHeight = 50
            end
        end
    end)
    addcmd('tools', {
        'gears',
    }, function(_, p2374)
        local function u2381(p2375)
            local v2376, v2377, v2378 = pairs(p2375:GetChildren())

            while true do
                local v2379

                v2378, v2379 = v2376(v2377, v2378)

                if v2378 == nil then
                    break
                end
                if v2379:IsA('Tool') or v2379:IsA('HopperBin') then
                    local v2380 = p2374

                    v2379:Clone().Parent = v2380:FindFirstChildOfClass('Backpack')
                end

                u2381(v2379)
            end
        end

        u2381(Lighting)

        local function u2388(p2382)
            local v2383, v2384, v2385 = pairs(p2382:GetChildren())

            while true do
                local v2386

                v2385, v2386 = v2383(v2384, v2385)

                if v2385 == nil then
                    break
                end
                if v2386:IsA('Tool') or v2386:IsA('HopperBin') then
                    local v2387 = p2374

                    v2386:Clone().Parent = v2387:FindFirstChildOfClass('Backpack')
                end

                u2388(v2386)
            end
        end

        u2388(ReplicatedStorage)
        notify('Tools', 'Copied tools from ReplicatedStorage and Lighting')
    end)
    addcmd('notools', {
        'rtools',
        'clrtools',
        'removetools',
        'deletetools',
        'dtools',
    }, function(_, p2389)
        local v2390, v2391, v2392 = pairs(p2389:FindFirstChildOfClass('Backpack'):GetDescendants())

        while true do
            local v2393

            v2392, v2393 = v2390(v2391, v2392)

            if v2392 == nil then
                break
            end
            if v2393:IsA('Tool') or v2393:IsA('HopperBin') then
                v2393:Destroy()
            end
        end

        local v2394, v2395, v2396 = pairs(p2389.Character:GetDescendants())

        while true do
            local v2397

            v2396, v2397 = v2394(v2395, v2396)

            if v2396 == nil then
                break
            end
            if v2397:IsA('Tool') or v2397:IsA('HopperBin') then
                v2397:Destroy()
            end
        end
    end)
    addcmd('deleteselectedtool', {
        'dst',
    }, function(_, p2398)
        local v2399, v2400, v2401 = pairs(p2398.Character:GetDescendants())

        while true do
            local v2402

            v2401, v2402 = v2399(v2400, v2401)

            if v2401 == nil then
                break
            end
            if v2402:IsA('Tool') or v2402:IsA('HopperBin') then
                v2402:Destroy()
            end
        end
    end)
    addcmd('console', {}, function(_, _)
        notify('Loading', 'Hold on a sec')

        local _, v2403 = pcall(function()
            return game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/console.lua', true)
        end)
        local v2404, _ = loadstring(v2403)

        if typeof(v2404) == 'function' then
            local v2405, v2406 = pcall(v2404)

            if not v2405 then
                if printconsole then
                    printconsole(v2406)
                elseif printoutput then
                    printoutput(v2406)
                end
            end

            wait(1)
            notify('Console', 'Press F9 to open the console')
        end
    end)
    addcmd('explorer', {
        'dex',
    }, function(_, _)
        notify('Loading', 'Hold on a sec')
        loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))()
    end)
    addcmd('olddex', {
        'odex',
    }, function(_, _)
        notify('Loading old explorer', 'Hold on a sec')

        local v2410 = (function(p2407)
            local v2408 = {}
            local v2409 = p2407 and InsertService:LoadLocalAsset(p2407)

            if v2409 then
                table.insert(v2408, v2409)
            end

            return v2408
        end)('rbxassetid://10055842438')[1]

        v2410.Parent = PARENT;

        (function(p2411, _)
            local function u2428(p2412, p2413)
                local v2414 = {}
                local u2424 = {
                    script = p2413,
                    getupvalue = function(_, _)
                        return nil
                    end,
                    getreg = function()
                        return {}
                    end,
                    getprops = getprops or function(p2415)
                        if not getproperties then
                            return {}
                        end

                        local v2416 = getproperties(p2415)

                        if not (v2416[1] and gethiddenproperty) then
                            return v2416
                        end

                        local v2417, v2418, v2419 = pairs(v2416)
                        local v2420 = {}

                        while true do
                            local v2421

                            v2419, v2421 = v2417(v2418, v2419)

                            if v2419 == nil then
                                break
                            end

                            local v2422, v2423 = pcall(gethiddenproperty, p2415, v2421)

                            if v2422 then
                                v2420[v2421] = v2423
                            end
                        end

                        return v2420
                    end,
                }

                setmetatable(v2414, {
                    __index = function(_, p2425)
                        return u2424[p2425] == nil and getgenv()[p2425] or u2424[p2425]
                    end,
                    __newindex = function(_, p2426, p2427)
                        if u2424[p2426] ~= nil then
                            u2424[p2426] = p2427
                        else
                            getgenv()[p2426] = p2427
                        end
                    end,
                })
                pcall(setfenv, p2412, v2414)

                return p2412
            end
            local function u2431(_, p2429)
                if p2429:IsA('LocalScript') then
                    task.spawn(function()
                        local v2430 = p2429

                        u2428(loadstring(p2429.Source, '=' .. v2430:GetFullName()), p2429)()
                    end)
                end

                table.foreach(p2429:GetChildren(), u2431)
            end

            u2431(nil, p2411)
        end)(v2410)
    end)
    addcmd('remotespy', {
        'rspy',
    }, function(_, _)
        notify('Loading', 'Hold on a sec')
        loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua'))()
    end)
    addcmd('audiologger', {
        'alogger',
    }, function(_, _)
        notify('Loading', 'Hold on a sec')
        loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/audiologger.lua', true))()
    end)

    local u2432 = nil

    addcmd('loopgoto', {}, function(p2433, p2434)
        local v2435 = getPlayer(p2433[1], p2434)
        local v2436, v2437, v2438 = pairs(v2435)
        local v2439

        v2438, v2439 = v2436(v2437, v2438)

        if v2438 == nil then
            return
        end

        u2432 = nil

        if p2434.Character:FindFirstChildOfClass('Humanoid') and p2434.Character:FindFirstChildOfClass('Humanoid').SeatPart then
            p2434.Character:FindFirstChildOfClass('Humanoid').Sit = false

            wait(0.1)
        end

        u2432 = Players[v2439]

        local v2440 = not (p2433[2] and isNumber(p2433[2])) and 3 or p2433[2]
        local v2441

        if p2433[3] and isNumber(p2433[3]) then
            v2441 = p2433[3]
        else
            v2441 = 0
        end

        while true do
            if true then
                if Players:FindFirstChild(v2439) then
                    if Players[v2439].Character ~= nil then
                        getRoot(p2434.Character).CFrame = getRoot(Players[v2439].Character).CFrame + Vector3.new(v2440, 1, 0)
                    end

                    wait(v2441)
                else
                    u2432 = nil
                end
            end
            if u2432 ~= Players[v2439] then
            end
        end
    end)
    addcmd('unloopgoto', {
        'noloopgoto',
    }, function(_, _)
        u2432 = nil
    end)
    addcmd('headsit', {}, function(p2442, p2443)
        local v2444 = getPlayer(p2442[1], p2443)

        if headSit then
            headSit:Disconnect()
        end

        local v2445, v2446, v2447 = pairs(v2444)

        while true do
            local u2448

            v2447, u2448 = v2445(v2446, v2447)

            if v2447 == nil then
                break
            end

            p2443.Character:FindFirstChildOfClass('Humanoid').Sit = true
            headSit = RunService.Heartbeat:Connect(function()
                if Players:FindFirstChild(Players[u2448].Name) and (Players[u2448].Character ~= nil and (getRoot(Players[u2448].Character) and getRoot(p2443.Character))) and p2443.Character:FindFirstChildOfClass('Humanoid').Sit == true then
                    getRoot(p2443.Character).CFrame = getRoot(Players[u2448].Character).CFrame * CFrame.Angles(0, math.rad(0), 0) * CFrame.new(0, 1.6, 0.4)
                else
                    headSit:Disconnect()
                end
            end)
        end
    end)
    addcmd('chat', {
        'say',
    }, function(_, _)
        local v2449 = getstring(1)

        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v2449, 'All')
    end)

    spamming = false
    spamspeed = 1

    addcmd('spam', {}, function(_, _)
        spamming = true

        local v2450 = getstring(1)

        repeat
            wait(spamspeed)
            ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v2450, 'All')
        until spamming == false
    end)
    addcmd('nospam', {
        'unspam',
    }, function(_, _)
        spamming = false
    end)
    addcmd('whisper', {
        'pm',
    }, function(p2451, p2452)
        local v2453 = getPlayer(p2451[1], p2452)
        local v2454, v2455, v2456 = pairs(v2453)

        while true do
            local u2457

            v2456, u2457 = v2454(v2455, v2456)

            if v2456 == nil then
                break
            end

            task.spawn(function()
                local _Name4 = Players[u2457].Name
                local v2459 = getstring(2)

                ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer('/w ' .. _Name4 .. ' ' .. v2459, 'All')
            end)
        end
    end)

    pmspamming = {}

    addcmd('pmspam', {}, function(p2460, p2461)
        local v2462 = getPlayer(p2460[1], p2461)
        local v2463, v2464, v2465 = pairs(v2462)

        while true do
            local u2466

            v2465, u2466 = v2463(v2464, v2465)

            if v2465 == nil then
                break
            end

            task.spawn(function()
                local _Name5 = Players[u2466].Name

                if FindInTable(pmspamming, _Name5) then
                    return
                end

                table.insert(pmspamming, _Name5)

                local v2468 = getstring(2)

                while true do
                    if Players:FindFirstChild(u2466) then
                        wait(spamspeed)
                        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer('/w ' .. _Name5 .. ' ' .. v2468, 'All')
                    else
                        local v2469, v2470, v2471 = pairs(pmspamming)

                        while true do
                            local v2472

                            v2471, v2472 = v2469(v2470, v2471)

                            if v2471 == nil then
                                break
                            end
                            if v2472 == _Name5 then
                                table.remove(pmspamming, v2471)
                            end
                        end
                    end
                    if not FindInTable(pmspamming, _Name5) then
                        return
                    end
                end
            end)
        end
    end)
    addcmd('nopmspam', {
        'unpmspam',
    }, function(p2473, p2474)
        local v2475 = getPlayer(p2473[1], p2474)
        local v2476, v2477, v2478 = pairs(v2475)

        while true do
            local u2479

            v2478, u2479 = v2476(v2477, v2478)

            if v2478 == nil then
                break
            end

            task.spawn(function()
                local v2480, v2481, v2482 = pairs(pmspamming)

                while true do
                    local v2483

                    v2482, v2483 = v2480(v2481, v2482)

                    if v2482 == nil then
                        break
                    end
                    if v2483 == Players[u2479].Name then
                        table.remove(pmspamming, v2482)
                    end
                end
            end)
        end
    end)
    addcmd('spamspeed', {}, function(p2484, _)
        local v2485 = p2484[1] or 1

        if isNumber(v2485) then
            spamspeed = v2485
        end
    end)
    addcmd('bubblechat', {}, function(_, _)
        ChatService.BubbleChatEnabled = true
    end)
    addcmd('unbubblechat', {
        'nobubblechat',
    }, function(_, _)
        ChatService.BubbleChatEnabled = false
    end)
    addcmd('safechat', {}, function(_, p2486)
        p2486:SetSuperSafeChat(true)
    end)
    addcmd('nosafechat', {
        'disablesafechat',
        'unsafechat',
    }, function(_, p2487)
        p2487:SetSuperSafeChat(false)
    end)
    addcmd('blockhead', {}, function(_, p2488)
        p2488.Character.Head:FindFirstChildOfClass('SpecialMesh'):Destroy()
    end)
    addcmd('blockhats', {}, function(_, p2489)
        local v2490, v2491, v2492 = pairs(p2489.Character:FindFirstChildOfClass('Humanoid'):GetAccessories())

        while true do
            local v2493

            v2492, v2493 = v2490(v2491, v2492)

            if v2492 == nil then
                break
            end

            local v2494, v2495, v2496 = pairs(v2493:GetDescendants())

            while true do
                local v2497

                v2496, v2497 = v2494(v2495, v2496)

                if v2496 == nil then
                    break
                end
                if v2497:IsA('SpecialMesh') then
                    v2497:Destroy()
                end
            end
        end
    end)
    addcmd('blocktool', {}, function(_, p2498)
        local v2499, v2500, v2501 = pairs(p2498.Character:GetChildren())

        while true do
            local v2502

            v2501, v2502 = v2499(v2500, v2501)

            if v2501 == nil then
                break
            end
            if v2502:IsA('Tool') or v2502:IsA('HopperBin') then
                local v2503, v2504, v2505 = pairs(v2502:GetDescendants())

                while true do
                    local v2506

                    v2505, v2506 = v2503(v2504, v2505)

                    if v2505 == nil then
                        break
                    end
                    if v2506:IsA('SpecialMesh') then
                        v2506:Destroy()
                    end
                end
            end
        end
    end)
    addcmd('creeper', {}, function(_, p2507)
        if r15(p2507) then
            p2507.Character.Head:FindFirstChildOfClass('SpecialMesh'):Destroy()
            p2507.Character.LeftUpperArm:Destroy()
            p2507.Character.RightUpperArm:Destroy()
            p2507.Character:FindFirstChildOfClass('Humanoid'):RemoveAccessories()
        else
            p2507.Character.Head:FindFirstChildOfClass('SpecialMesh'):Destroy()
            p2507.Character['Left Arm']:Destroy()
            p2507.Character['Right Arm']:Destroy()
            p2507.Character:FindFirstChildOfClass('Humanoid'):RemoveAccessories()
        end
    end)

    function getTorso(p2508)
        local v2509 = p2508 or Players.LocalPlayer.Character

        return v2509:FindFirstChild('Torso') or v2509:FindFirstChild('UpperTorso') or (v2509:FindFirstChild('LowerTorso') or v2509:FindFirstChild('HumanoidRootPart'))
    end

    addcmd('bang', {
        'rape',
    }, function(p2510, p2511)
        execCmd('unbang')
        wait()

        local v2512 = getPlayer(p2510[1], p2511)
        local v2513, v2514, v2515 = pairs(v2512)

        while true do
            local v2516

            v2515, v2516 = v2513(v2514, v2515)

            if v2515 == nil then
                break
            end

            bangAnim = Instance.new('Animation')

            if r15(p2511) then
                bangAnim.AnimationId = 'rbxassetid://5918726674'
            else
                bangAnim.AnimationId = 'rbxassetid://148840371'
            end

            bang = p2511.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(bangAnim)

            bang:Play(0.1, 1, 1)

            if p2510[2] then
                bang:AdjustSpeed(p2510[2])
            else
                bang:AdjustSpeed(3)
            end

            local _Name6 = Players[v2516].Name

            bangDied = p2511.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
                bangLoop = bangLoop:Disconnect()

                bang:Stop()
                bangAnim:Destroy()
                bangDied:Disconnect()
            end)

            local u2518 = CFrame.new(0, 0, 1.1)

            bangLoop = RunService.Stepped:Connect(function()
                pcall(function()
                    local v2519 = getTorso(Players[_Name6].Character)

                    getRoot(Players.LocalPlayer.Character).CFrame = v2519.CFrame * u2518
                end)
            end)
        end
    end)
    addcmd('unbang', {
        'unrape',
    }, function(_, _)
        if bangLoop then
            bangLoop = bangLoop:Disconnect()

            bangDied:Disconnect()
            bang:Stop()
            bangAnim:Destroy()
        end
    end)
    addcmd('carpet', {}, function(p2520, p2521)
        if r15(p2521) then
            notify('R6 Required', 'This command requires the r6 rig type')
        else
            execCmd('uncarpet')
            wait()

            local v2522 = getPlayer(p2520[1], p2521)
            local v2523, v2524, v2525 = pairs(v2522)

            while true do
                local v2526

                v2525, v2526 = v2523(v2524, v2525)

                if v2525 == nil then
                    break
                end

                carpetAnim = Instance.new('Animation')
                carpetAnim.AnimationId = 'rbxassetid://282574440'
                carpet = p2521.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(carpetAnim)

                carpet:Play(0.1, 1, 1)

                local _Name7 = Players[v2526].Name

                carpetDied = p2521.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
                    carpetLoop:Disconnect()
                    carpet:Stop()
                    carpetAnim:Destroy()
                    carpetDied:Disconnect()
                end)
                carpetLoop = RunService.Heartbeat:Connect(function()
                    pcall(function()
                        getRoot(Players.LocalPlayer.Character).CFrame = getRoot(Players[_Name7].Character).CFrame
                    end)
                end)
            end
        end
    end)
    addcmd('uncarpet', {
        'nocarpet',
    }, function(_, _)
        if carpetLoop then
            carpetLoop:Disconnect()
            carpetDied:Disconnect()
            carpet:Stop()
            carpetAnim:Destroy()
        end
    end)
    addcmd('friend', {}, function(p2528, p2529)
        local v2530 = getPlayer(p2528[1], p2529)
        local v2531, v2532, v2533 = pairs(v2530)

        while true do
            local v2534

            v2533, v2534 = v2531(v2532, v2533)

            if v2533 == nil then
                break
            end

            p2529:RequestFriendship(v2534)
        end
    end)
    addcmd('unfriend', {}, function(p2535, p2536)
        local v2537 = getPlayer(p2535[1], p2536)
        local v2538, v2539, v2540 = pairs(v2537)

        while true do
            local v2541

            v2540, v2541 = v2538(v2539, v2540)

            if v2540 == nil then
                break
            end

            p2536:RevokeFriendship(v2541)
        end
    end)
    addcmd('bringpart', {}, function(_, p2542)
        local v2543, v2544, v2545 = pairs(workspace:GetDescendants())

        while true do
            local v2546

            v2545, v2546 = v2543(v2544, v2545)

            if v2545 == nil then
                break
            end
            if v2546.Name:lower() == getstring(1):lower() and v2546:IsA('BasePart') then
                v2546.CFrame = getRoot(p2542.Character).CFrame
            end
        end
    end)
    addcmd('bringpartclass', {
        'bpc',
    }, function(_, p2547)
        local v2548, v2549, v2550 = pairs(workspace:GetDescendants())

        while true do
            local v2551

            v2550, v2551 = v2548(v2549, v2550)

            if v2550 == nil then
                break
            end
            if v2551.ClassName:lower() == getstring(1):lower() and v2551:IsA('BasePart') then
                v2551.CFrame = getRoot(p2547.Character).CFrame
            end
        end
    end)

    gotopartDelay = 0.1

    addcmd('gotopart', {
        'topart',
    }, function(_, p2552)
        local v2553, v2554, v2555 = pairs(workspace:GetDescendants())

        while true do
            local v2556

            v2555, v2556 = v2553(v2554, v2555)

            if v2555 == nil then
                break
            end
            if v2556.Name:lower() == getstring(1):lower() and v2556:IsA('BasePart') then
                if p2552.Character:FindFirstChildOfClass('Humanoid') and p2552.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p2552.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                wait(gotopartDelay)

                getRoot(p2552.Character).CFrame = v2556.CFrame
            end
        end
    end)
    addcmd('tweengotopart', {
        'tgotopart',
        'ttopart',
    }, function(_, p2557)
        local v2558, v2559, v2560 = pairs(workspace:GetDescendants())

        while true do
            local v2561

            v2560, v2561 = v2558(v2559, v2560)

            if v2560 == nil then
                break
            end
            if v2561.Name:lower() == getstring(1):lower() and v2561:IsA('BasePart') then
                if p2557.Character:FindFirstChildOfClass('Humanoid') and p2557.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p2557.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                wait(gotopartDelay)
                TweenService:Create(getRoot(p2557.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {
                    CFrame = v2561.CFrame,
                }):Play()
            end
        end
    end)
    addcmd('gotopartclass', {
        'gpc',
    }, function(_, p2562)
        local v2563, v2564, v2565 = pairs(workspace:GetDescendants())

        while true do
            local v2566

            v2565, v2566 = v2563(v2564, v2565)

            if v2565 == nil then
                break
            end
            if v2566.ClassName:lower() == getstring(1):lower() and v2566:IsA('BasePart') then
                if p2562.Character:FindFirstChildOfClass('Humanoid') and p2562.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p2562.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                wait(gotopartDelay)

                getRoot(p2562.Character).CFrame = v2566.CFrame
            end
        end
    end)
    addcmd('tweengotopartclass', {
        'tgpc',
    }, function(_, p2567)
        local v2568, v2569, v2570 = pairs(workspace:GetDescendants())

        while true do
            local v2571

            v2570, v2571 = v2568(v2569, v2570)

            if v2570 == nil then
                break
            end
            if v2571.ClassName:lower() == getstring(1):lower() and v2571:IsA('BasePart') then
                if p2567.Character:FindFirstChildOfClass('Humanoid') and p2567.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p2567.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                wait(gotopartDelay)
                TweenService:Create(getRoot(p2567.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {
                    CFrame = v2571.CFrame,
                }):Play()
            end
        end
    end)
    addcmd('gotomodel', {
        'tomodel',
    }, function(_, p2572)
        local v2573, v2574, v2575 = pairs(workspace:GetDescendants())

        while true do
            local v2576

            v2575, v2576 = v2573(v2574, v2575)

            if v2575 == nil then
                break
            end
            if v2576.Name:lower() == getstring(1):lower() and v2576:IsA('Model') then
                if p2572.Character:FindFirstChildOfClass('Humanoid') and p2572.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p2572.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                wait(gotopartDelay)

                getRoot(p2572.Character).CFrame = v2576:GetModelCFrame()
            end
        end
    end)
    addcmd('tweengotomodel', {
        'tgotomodel',
        'ttomodel',
    }, function(_, p2577)
        local v2578, v2579, v2580 = pairs(workspace:GetDescendants())

        while true do
            local v2581

            v2580, v2581 = v2578(v2579, v2580)

            if v2580 == nil then
                break
            end
            if v2581.Name:lower() == getstring(1):lower() and v2581:IsA('Model') then
                if p2577.Character:FindFirstChildOfClass('Humanoid') and p2577.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p2577.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                wait(gotopartDelay)
                TweenService:Create(getRoot(p2577.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {
                    CFrame = v2581:GetModelCFrame(),
                }):Play()
            end
        end
    end)
    addcmd('gotopartdelay', {}, function(p2582, _)
        local v2583 = p2582[1] or 0.1

        if isNumber(v2583) then
            gotopartDelay = v2583
        end
    end)
    addcmd('noclickdetectorlimits', {
        'nocdlimits',
        'removecdlimits',
    }, function(_, _)
        local v2584, v2585, v2586 = ipairs(workspace:GetDescendants())

        while true do
            local v2587

            v2586, v2587 = v2584(v2585, v2586)

            if v2586 == nil then
                break
            end
            if v2587:IsA('ClickDetector') then
                v2587.MaxActivationDistance = math.huge
            end
        end
    end)
    addcmd('fireclickdetectors', {
        'firecd',
        'firecds',
    }, function(p2588, _)
        if fireclickdetector then
            if p2588[1] then
                local v2589 = getstring(1)
                local v2590, v2591, v2592 = ipairs(workspace:GetDescendants())

                while true do
                    local v2593

                    v2592, v2593 = v2590(v2591, v2592)

                    if v2592 == nil then
                        break
                    end
                    if v2593:IsA('ClickDetector') and v2593.Name == v2589 then
                        fireclickdetector(v2593)
                    end
                end
            else
                local v2594, v2595, v2596 = ipairs(workspace:GetDescendants())

                while true do
                    local v2597

                    v2596, v2597 = v2594(v2595, v2596)

                    if v2596 == nil then
                        break
                    end
                    if v2597:IsA('ClickDetector') then
                        fireclickdetector(v2597)
                    end
                end
            end
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing fireclickdetector)')
        end
    end)
    addcmd('noproximitypromptlimits', {
        'nopplimits',
        'removepplimits',
    }, function(_, _)
        local v2598, v2599, v2600 = pairs(workspace:GetDescendants())

        while true do
            local v2601

            v2600, v2601 = v2598(v2599, v2600)

            if v2600 == nil then
                break
            end
            if v2601:IsA('ProximityPrompt') then
                v2601.MaxActivationDistance = math.huge
            end
        end
    end)
    addcmd('fireproximityprompts', {
        'firepp',
    }, function(p2602, _)
        if fireclickdetector then
            if p2602[1] then
                local v2603 = getstring(1)
                local v2604, v2605, v2606 = ipairs(workspace:GetDescendants())

                while true do
                    local v2607

                    v2606, v2607 = v2604(v2605, v2606)

                    if v2606 == nil then
                        break
                    end
                    if v2607:IsA('ProximityPrompt') and v2607.Name == v2603 then
                        fireproximityprompt(v2607)
                    end
                end
            else
                local v2608, v2609, v2610 = ipairs(workspace:GetDescendants())

                while true do
                    local v2611

                    v2610, v2611 = v2608(v2609, v2610)

                    if v2610 == nil then
                        break
                    end
                    if v2611:IsA('ProximityPrompt') then
                        fireproximityprompt(v2611)
                    end
                end
            end
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing fireproximityprompt)')
        end
    end)

    local u2612 = nil

    addcmd('instantproximityprompts', {
        'instantpp',
    }, function(_, _)
        if fireproximityprompt then
            execCmd('uninstantproximityprompts')
            wait(0.1)

            u2612 = ProximityPromptService.PromptButtonHoldBegan:Connect(function(p2613)
                fireproximityprompt(p2613)
            end)
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing fireproximityprompt)')
        end
    end)
    addcmd('uninstantproximityprompts', {
        'uninstantpp',
    }, function(_, _)
        if u2612 ~= nil then
            u2612:Disconnect()

            u2612 = nil
        end
    end)
    addcmd('notifyping', {
        'ping',
    }, function(_, p2614)
        notify('Ping', math.round(p2614:GetNetworkPing() * 1000) .. 'ms')
    end)
    addcmd('grabtools', {}, function(_, p2615)
        local _Humanoid9 = p2615.Character:FindFirstChildWhichIsA('Humanoid')
        local v2617, v2618, v2619 = ipairs(workspace:GetChildren())

        while true do
            local v2620

            v2619, v2620 = v2617(v2618, v2619)

            if v2619 == nil then
                break
            end
            if p2615.Character and (v2620:IsA('BackpackItem') and v2620:FindFirstChild('Handle')) then
                _Humanoid9:EquipTool(v2620)
            end
        end

        if grabtoolsFunc then
            grabtoolsFunc:Disconnect()
        end

        grabtoolsFunc = workspace.ChildAdded:Connect(function(p2621)
            if p2615.Character and (p2621:IsA('BackpackItem') and p2621:FindFirstChild('Handle')) then
                _Humanoid9:EquipTool(p2621)
            end
        end)

        notify('Grabtools', 'Picking up any dropped tools')
    end)
    addcmd('nograbtools', {
        'ungrabtools',
    }, function(_, _)
        if grabtoolsFunc then
            grabtoolsFunc:Disconnect()
        end

        notify('Grabtools', 'Grabtools has been disabled')
    end)

    local u2622 = {}

    addcmd('removespecifictool', {}, function(p2623, p2624)
        if p2623[1] and p2624:FindFirstChildOfClass('Backpack') then
            local u2625 = string.lower(getstring(1))

            u2622[u2625] = RunService.RenderStepped:Connect(function()
                if p2624:FindFirstChildOfClass('Backpack') then
                    local v2626, v2627, v2628 = pairs(p2624:FindFirstChildOfClass('Backpack'):GetChildren())

                    while true do
                        local v2629

                        v2628, v2629 = v2626(v2627, v2628)

                        if v2628 == nil then
                            break
                        end
                        if v2629.Name:lower() == u2625 then
                            v2629:Remove()
                        end
                    end
                end
            end)
        end
    end)
    addcmd('unremovespecifictool', {}, function(p2630, _)
        if p2630[1] then
            local v2631 = string.lower(getstring(1))

            if u2622[v2631] ~= nil then
                u2622[v2631]:Disconnect()

                u2622[v2631] = nil
            end
        end
    end)
    addcmd('clearremovespecifictool', {}, function(_, _)
        local v2632, v2633, v2634 = pairs(u2622)

        while true do
            v2634 = v2632(v2633, v2634)

            if v2634 == nil then
                break
            end

            u2622[v2634]:Disconnect()

            u2622[v2634] = nil
        end
    end)
    addcmd('light', {}, function(p2635, p2636)
        local _PointLight = Instance.new('PointLight')

        _PointLight.Parent = getRoot(p2636.Character)
        _PointLight.Range = 30

        if p2635[1] then
            _PointLight.Brightness = p2635[2]
            _PointLight.Range = p2635[1]
        else
            _PointLight.Brightness = 5
        end
    end)
    addcmd('unlight', {
        'nolight',
    }, function(_, p2638)
        local v2639, v2640, v2641 = pairs(p2638.Character:GetDescendants())

        while true do
            local v2642

            v2641, v2642 = v2639(v2640, v2641)

            if v2641 == nil then
                break
            end
            if v2642.ClassName == 'PointLight' then
                v2642:Destroy()
            end
        end
    end)
    addcmd('copytools', {}, function(p2643, p2644)
        local v2645 = getPlayer(p2643[1], p2644)
        local v2646, v2647, v2648 = pairs(v2645)

        while true do
            local u2649

            v2648, u2649 = v2646(v2647, v2648)

            if v2648 == nil then
                break
            end

            task.spawn(function()
                local v2650, v2651, v2652 = pairs(Players[u2649]:FindFirstChildOfClass('Backpack'):GetChildren())

                while true do
                    local v2653

                    v2652, v2653 = v2650(v2651, v2652)

                    if v2652 == nil then
                        break
                    end
                    if v2653:IsA('Tool') or v2653:IsA('HopperBin') then
                        local v2654 = p2644

                        v2653:Clone().Parent = v2654:FindFirstChildOfClass('Backpack')
                    end
                end
            end)
        end
    end)
    addcmd('naked', {}, function(_, p2655)
        local v2656, v2657, v2658 = pairs(p2655.Character:GetDescendants())

        while true do
            local v2659

            v2658, v2659 = v2656(v2657, v2658)

            if v2658 == nil then
                break
            end
            if v2659:IsA('Clothing') or v2659:IsA('ShirtGraphic') then
                v2659:Destroy()
            end
        end
    end)
    addcmd('noface', {
        'removeface',
    }, function(_, p2660)
        local v2661, v2662, v2663 = pairs(p2660.Character:GetDescendants())

        while true do
            local v2664

            v2663, v2664 = v2661(v2662, v2663)

            if v2663 == nil then
                break
            end
            if v2664:IsA('Decal') and v2664.Name == 'face' then
                v2664:Destroy()
            end
        end
    end)
    addcmd('spawnpoint', {
        'spawn',
    }, function(p2665, p2666)
        spawnpos = getRoot(p2666.Character).CFrame
        spawnpoint = true
        spDelay = tonumber(p2665[1]) or 0.1

        notify('Spawn Point', 'Spawn point created at ' .. tostring(spawnpos))
    end)
    addcmd('nospawnpoint', {
        'nospawn',
        'removespawnpoint',
    }, function(_, _)
        spawnpoint = false

        notify('Spawn Point', 'Removed spawn point')
    end)
    addcmd('flashback', {
        'diedtp',
    }, function(_, p2667)
        if u1410 ~= nil then
            if p2667.Character:FindFirstChildOfClass('Humanoid') and p2667.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                p2667.Character:FindFirstChildOfClass('Humanoid').Sit = false

                wait(0.1)
            end

            getRoot(p2667.Character).CFrame = u1410
        end
    end)
    addcmd('hatspin', {
        'spinhats',
    }, function(p2668, p2669)
        execCmd('unhatspin')
        wait(0.5)

        local v2670, v2671, v2672 = pairs(p2669.Character:FindFirstChildOfClass('Humanoid'):GetAccessories())

        while true do
            local v2673

            v2672, v2673 = v2670(v2671, v2672)

            if v2672 == nil then
                break
            end

            local _BodyPosition = Instance.new('BodyPosition')

            _BodyPosition.Name = randomString()
            _BodyPosition.Parent = v2673.Handle

            local _BodyAngularVelocity = Instance.new('BodyAngularVelocity')

            _BodyAngularVelocity.Name = randomString()
            _BodyAngularVelocity.Parent = v2673.Handle

            v2673.Handle:FindFirstChildOfClass('Weld'):Destroy()

            if p2668[1] then
                _BodyAngularVelocity.AngularVelocity = Vector3.new(0, p2668[1], 0)
                _BodyAngularVelocity.MaxTorque = Vector3.new(0, p2668[1] * 2, 0)
            else
                _BodyAngularVelocity.AngularVelocity = Vector3.new(0, 100, 0)
                _BodyAngularVelocity.MaxTorque = Vector3.new(0, 200, 0)
            end

            _BodyPosition.P = 30000
            _BodyPosition.D = 50
            spinhats = RunService.Stepped:Connect(function()
                pcall(function()
                    _BodyPosition.Position = Players.LocalPlayer.Character.Head.Position
                end)
            end)
        end
    end)
    addcmd('unhatspin', {
        'unspinhats',
    }, function(_, p2676)
        if spinhats then
            spinhats:Disconnect()
        end

        local v2677, v2678, v2679 = pairs(p2676.Character:FindFirstChildOfClass('Humanoid'):GetAccessories())

        while true do
            local v2680

            v2679, v2680 = v2677(v2678, v2679)

            if v2679 == nil then
                break
            end

            v2680.Parent = workspace

            local v2681, v2682, v2683 = pairs(v2680.Handle)

            while true do
                local v2684

                v2683, v2684 = v2681(v2682, v2683)

                if v2683 == nil then
                    break
                end
                if v2684:IsA('BodyPosition') or v2684:IsA('BodyAngularVelocity') then
                    v2684:Destroy()
                end
            end

            wait()

            v2680.Parent = p2676.Character
        end
    end)
    addcmd('clearhats', {
        'cleanhats',
    }, function(_, _)
        if firetouchinterest then
            local _LocalPlayer7 = Players.LocalPlayer
            local _Character36 = _LocalPlayer7.Character
            local _CFrame9 = _Character36:FindFirstChild('HumanoidRootPart').CFrame
            local v2688, v2689, v2690 = ipairs(workspace:GetChildren())
            local v2691 = {}

            while true do
                local v2692

                v2690, v2692 = v2688(v2689, v2690)

                if v2690 == nil then
                    break
                end
                if v2692:IsA('Accessory') then
                    table.insert(v2691, v2692)
                end
            end

            local v2693, v2694, v2695 = ipairs(_Character36:FindFirstChildOfClass('Humanoid'):GetAccessories())

            while true do
                local v2696

                v2695, v2696 = v2693(v2694, v2695)

                if v2695 == nil then
                    break
                end

                v2696:Destroy()
            end

            for v2697 = 1, #v2691 do
                local _ = v2697

                repeat
                    RunService.Heartbeat:wait()
                until v2691[v2697]

                firetouchinterest(v2691[v2697].Handle, _Character36:FindFirstChild('HumanoidRootPart'), 0)

                repeat
                    RunService.Heartbeat:wait()
                until _Character36:FindFirstChildOfClass('Accessory')

                _Character36:FindFirstChildOfClass('Accessory'):Destroy()

                repeat
                    RunService.Heartbeat:wait()
                until not _Character36:FindFirstChildOfClass('Accessory')
            end

            execCmd('reset')
            _LocalPlayer7.CharacterAdded:Wait()

            for _ = 1, 20 do
                RunService.Heartbeat:Wait()

                if _LocalPlayer7.Character:FindFirstChild('HumanoidRootPart') then
                    _LocalPlayer7.Character:FindFirstChild('HumanoidRootPart').CFrame = _CFrame9
                end
            end
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing firetouchinterest)')
        end
    end)
    addcmd('vr', {}, function(_, _)
        notify('Loading', 'Hold on a sec')
        loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/vr.lua'))()
    end)
    addcmd('split', {}, function(_, p2698)
        if r15(p2698) then
            p2698.Character.UpperTorso.Waist:Destroy()
        else
            notify('R15 Required', 'This command requires the r15 rig type')
        end
    end)
    addcmd('nilchar', {}, function(_, p2699)
        if p2699.Character ~= nil then
            p2699.Character.Parent = nil
        end
    end)
    addcmd('unnilchar', {
        'nonilchar',
    }, function(_, p2700)
        if p2700.Character ~= nil then
            p2700.Character.Parent = workspace
        end
    end)
    addcmd('noroot', {
        'removeroot',
        'rroot',
    }, function(_, p2701)
        if p2701.Character ~= nil then
            local _Character37 = Players.LocalPlayer.Character

            _Character37.Parent = nil

            _Character37.HumanoidRootPart:Destroy()

            _Character37.Parent = workspace
        end
    end)
    addcmd('replaceroot', {
        'replacerootpart',
    }, function(_, p2703)
        if p2703.Character ~= nil and p2703.Character:FindFirstChild('HumanoidRootPart') then
            local _Character38 = p2703.Character
            local _Parent2 = _Character38.Parent
            local v2706

            if _Character38 then
                v2706 = _Character38:FindFirstChild('HumanoidRootPart')
            else
                v2706 = _Character38
            end

            local _CFrame10 = v2706.CFrame

            _Character38.Parent = game

            local v2708 = v2706:Clone()

            v2708.Parent = _Character38

            v2706:Destroy()

            v2708.CFrame = _CFrame10
            _Character38.Parent = _Parent2
        end
    end)
    addcmd('clearcharappearance', {
        'clearchar',
        'clrchar',
    }, function(_, p2709)
        p2709:ClearCharacterAppearance()
    end)
    addcmd('equiptools', {}, function(_, p2710)
        local v2711, v2712, v2713 = pairs(p2710:FindFirstChildOfClass('Backpack'):GetChildren())

        while true do
            local v2714

            v2713, v2714 = v2711(v2712, v2713)

            if v2713 == nil then
                break
            end
            if v2714:IsA('Tool') or v2714:IsA('HopperBin') then
                v2714.Parent = p2710.Character
            end
        end
    end)
    addcmd('unequiptools', {}, function(_, p2715)
        p2715.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
    end)

    local function u2727(p2716)
        local v2717 = p2716 or Players.LocalPlayer
        local v2718, v2719, v2720 = ipairs(v2717.Character and (v2717.Character:GetChildren() or {}) or {})
        local v2721 = {}

        while true do
            local v2722

            v2720, v2722 = v2718(v2719, v2720)

            if v2720 == nil then
                break
            end
            if v2722:IsA('BackpackItem') and v2722:FindFirstChild('Handle') then
                v2721[#v2721 + 1] = v2722
            end
        end

        local v2723, v2724, v2725 = ipairs(v2717.Backpack:GetChildren())

        while true do
            local v2726

            v2725, v2726 = v2723(v2724, v2725)

            if v2725 == nil then
                break
            end
            if v2726:IsA('BackpackItem') and v2726:FindFirstChild('Handle') then
                v2721[#v2721 + 1] = v2726
            end
        end

        return v2721
    end

    addcmd('dupetools', {
        'clonetools',
    }, function(p2728, p2729)
        local v2730 = tonumber(p2728[1]) or 1
        local _Position11 = p2729.Character.HumanoidRootPart.Position
        local v2732 = Vector3.new(math.random(-200000, 200000), 200000, math.random(-200000, 200000))
        local u2733 = {}

        for v2734 = 1, v2730 do
            local _Humanoid10 = p2729.Character:WaitForChild('Humanoid')

            wait(0.1, _Humanoid10.Parent:MoveTo(v2732))

            _Humanoid10.RootPart.Anchored = p2729:ClearCharacterAppearance(wait(0.1)) or true

            local v2736 = u2727(p2729)
            local _ = v2734

            while#v2736 > 0 do
                local v2737, v2738, v2739 = ipairs(v2736)

                while true do
                    local u2740

                    v2739, u2740 = v2737(v2738, v2739)

                    if v2739 == nil then
                        break
                    end

                    task.spawn(function()
                        for _ = 1, 25 do
                            u2740.Parent = p2729.Character
                            u2740.Handle.Anchored = true
                        end
                        for _ = 1, 5 do
                            u2740.Parent = workspace
                        end

                        table.insert(u2733, u2740.Handle)
                    end)
                end

                v2736 = u2727(p2729)
            end

            wait(0.1)

            p2729.Character = p2729.Character:Destroy()

            p2729.CharacterAdded:Wait():WaitForChild('Humanoid').Parent:MoveTo(v2730 == v2734 and _Position11 and _Position11 or v2732, wait(0.1))

            if v2734 == v2730 or v2734 % 5 == 0 then
                local _HumanoidRootPart = p2729.Character.HumanoidRootPart

                if type(firetouchinterest) ~= 'function' then
                    local v2742, v2743, v2744 = ipairs(u2733)

                    while true do
                        local u2745

                        v2744, u2745 = v2742(v2743, v2744)

                        if v2744 == nil then
                            break
                        end

                        task.spawn(function()
                            local _CanCollide = u2745.CanCollide

                            u2745.CanCollide = false
                            u2745.Anchored = false

                            for _ = 1, 10 do
                                u2745.CFrame = _HumanoidRootPart.CFrame

                                wait()
                            end

                            u2745.CanCollide = _CanCollide
                        end)
                    end
                else
                    local v2747, v2748, v2749 = ipairs(u2733)

                    while true do
                        local v2750

                        v2749, v2750 = v2747(v2748, v2749)

                        if v2749 == nil then
                            break
                        end

                        firetouchinterest(v2750, _HumanoidRootPart, 1, firetouchinterest(v2750, _HumanoidRootPart, 0))

                        v2750.Anchored = false
                    end
                end

                wait(0.1)

                u2733 = {}
            end

            v2732 = v2732 + Vector3.new(10, math.random(-5, 5), 0)
        end
    end)

    local _RenderStepped = RunService.RenderStepped

    addcmd('givetool', {
        'givetools',
    }, function(p2752, p2753)
        local _Character39 = Players[getPlayer(p2752[1], p2753)[1] ].Character

        workspace.CurrentCamera.CameraSubject = _Character39

        local v2755 = p2753.Character or workspace:FindFirstChild(p2753.Name)
        local v2756

        if v2755 then
            v2756 = v2755:FindFirstChildWhichIsA('Humanoid')
        else
            v2756 = v2755
        end

        local v2757

        if v2756 then
            v2757 = v2756.RootPart
        else
            v2757 = v2756
        end

        local _CFrame11 = v2757.CFrame
        local v2759 = v2756:Destroy() or v2756:Clone()

        v2759.Parent = v2755

        v2759:ClearAllChildren()
        p2753:ClearCharacterAppearance()
        task.spawn(function()
            local _RootPart2 = p2753.CharacterAdded:Wait():WaitForChild('Humanoid').RootPart
            local v2761 = wait()

            if v2761 then
                v2761 = _CFrame11
            end

            _RootPart2.CFrame = v2761
        end)

        local v2762 = getRoot(_Character39)

        while v2755 and (v2755.Parent and (v2762 and v2762.Parent)) do
            local v2763, v2764, v2765 = ipairs(v2755:GetChildren())
            local v2766 = false

            while true do
                local v2767

                v2765, v2767 = v2763(v2764, v2765)

                if v2765 == nil then
                    break
                end
                if v2767:IsA('BackpackItem') and v2767:FindFirstChild('Handle') then
                    firetouchinterest(v2767.Handle, v2762, 0)
                    firetouchinterest(v2767.Handle, v2762, 1)

                    v2766 = true
                end
            end

            if not v2766 then
                break
            end

            v2757.CFrame = v2762.CFrame

            _RenderStepped:Wait()
        end

        execCmd('re')
    end)
    addcmd('touchinterests', {
        'touchinterest',
        'firetouchinterests',
        'firetouchinterest',
    }, function(p2768, p2769)
        if firetouchinterest then
            local u2770 = getRoot(p2769.Character) or p2769.Character:FindFirstChildWhichIsA('BasePart')

            local function v2773(p2771)
                local _Part4 = p2771:FindFirstAncestorWhichIsA('Part')

                if _Part4 then
                    if firetouchinterest then
                        task.spawn(function()
                            firetouchinterest(_Part4, u2770, 1)
                            wait()
                            firetouchinterest(_Part4, u2770, 0)
                        end)
                    end

                    _Part4.CFrame = u2770.CFrame
                end
            end

            if p2768[1] then
                local v2774 = getstring(1)
                local v2775, v2776, v2777 = ipairs(workspace:GetDescendants())

                while true do
                    local v2778

                    v2777, v2778 = v2775(v2776, v2777)

                    if v2777 == nil then
                        break
                    end
                    if v2778:IsA('TouchTransmitter') and v2778.Name == v2774 then
                        v2773(v2778)
                    end
                end
            else
                local v2779, v2780, v2781 = ipairs(workspace:GetDescendants())

                while true do
                    local v2782

                    v2781, v2782 = v2779(v2780, v2781)

                    if v2781 == nil then
                        break
                    end
                    if v2782:IsA('TouchTransmitter') then
                        v2773(v2782)
                    end
                end
            end
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing firetouchinterest)')
        end
    end)
    addcmd('fullbright', {
        'fb',
        'fullbrightness',
    }, function(_, _)
        Lighting.Brightness = 2
        Lighting.ClockTime = 14
        Lighting.FogEnd = 100000
        Lighting.GlobalShadows = false
        Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
    end)
    addcmd('loopfullbright', {
        'loopfb',
    }, function(_, _)
        if brightLoop then
            brightLoop:Disconnect()
        end

        brightLoop = RunService.RenderStepped:Connect(function()
            Lighting.Brightness = 2
            Lighting.ClockTime = 14
            Lighting.FogEnd = 100000
            Lighting.GlobalShadows = false
            Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        end)
    end)
    addcmd('unloopfullbright', {
        'unloopfb',
    }, function(_, _)
        if brightLoop then
            brightLoop:Disconnect()
        end
    end)
    addcmd('ambient', {}, function(p2783, _)
        Lighting.Ambient = Color3.new(p2783[1], p2783[2], p2783[3])
        Lighting.OutdoorAmbient = Color3.new(p2783[1], p2783[2], p2783[3])
    end)
    addcmd('day', {}, function(_, _)
        Lighting.ClockTime = 14
    end)
    addcmd('night', {}, function(_, _)
        Lighting.ClockTime = 0
    end)
    addcmd('nofog', {}, function(_, _)
        Lighting.FogEnd = 100000

        local v2784, v2785, v2786 = pairs(Lighting:GetDescendants())

        while true do
            local v2787

            v2786, v2787 = v2784(v2785, v2786)

            if v2786 == nil then
                break
            end
            if v2787:IsA('Atmosphere') then
                v2787:Destroy()
            end
        end
    end)
    addcmd('brightness', {}, function(p2788, _)
        Lighting.Brightness = p2788[1]
    end)
    addcmd('globalshadows', {
        'gshadows',
    }, function(_, _)
        Lighting.GlobalShadows = true
    end)
    addcmd('unglobalshadows', {
        'nogshadows',
        'ungshadows',
        'noglobalshadows',
    }, function(_, _)
        Lighting.GlobalShadows = false
    end)

    origsettings = {
        abt = Lighting.Ambient,
        oabt = Lighting.OutdoorAmbient,
        brt = Lighting.Brightness,
        time = Lighting.ClockTime,
        fe = Lighting.FogEnd,
        fs = Lighting.FogStart,
        gs = Lighting.GlobalShadows,
    }

    addcmd('restorelighting', {
        'rlighting',
    }, function(_, _)
        Lighting.Ambient = origsettings.abt
        Lighting.OutdoorAmbient = origsettings.oabt
        Lighting.Brightness = origsettings.brt
        Lighting.ClockTime = origsettings.time
        Lighting.FogEnd = origsettings.fe
        Lighting.FogStart = origsettings.fs
        Lighting.GlobalShadows = origsettings.gs
    end)
    addcmd('stun', {
        'platformstand',
    }, function(_, p2789)
        p2789.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
    end)
    addcmd('unstun', {
        'nostun',
        'unplatformstand',
        'noplatformstand',
    }, function(_, p2790)
        p2790.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
    end)
    addcmd('norotate', {
        'noautorotate',
    }, function(_, p2791)
        p2791.Character:FindFirstChildOfClass('Humanoid').AutoRotate = false
    end)
    addcmd('unnorotate', {
        'autorotate',
    }, function(_, p2792)
        p2792.Character:FindFirstChildOfClass('Humanoid').AutoRotate = true
    end)
    addcmd('enablestate', {}, function(p2793, p2794)
        local v2795 = p2793[1]

        if not tonumber(v2795) then
            local _ = Enum.HumanoidStateType[p2793[1] ]
        end

        p2794.Character:FindFirstChildOfClass('Humanoid'):SetStateEnabled(v2795, true)
    end)
    addcmd('disablestate', {}, function(p2796, p2797)
        local v2798 = p2796[1]

        if not tonumber(v2798) then
            local _ = Enum.HumanoidStateType[p2796[1] ]
        end

        p2797.Character:FindFirstChildOfClass('Humanoid'):SetStateEnabled(v2798, false)
    end)
    addcmd('drophats', {
        'drophat',
    }, function(_, p2799)
        if p2799.Character then
            local v2800, v2801, v2802 = pairs(p2799.Character:FindFirstChildOfClass('Humanoid'):GetAccessories())

            while true do
                local v2803

                v2802, v2803 = v2800(v2801, v2802)

                if v2802 == nil then
                    break
                end

                v2803.Parent = workspace
            end
        end
    end)
    addcmd('deletehats', {
        'nohats',
        'rhats',
    }, function(_, p2804)
        local v2805 = next
        local v2806, v2807 = p2804.Character:GetDescendants()

        while true do
            local v2808

            v2807, v2808 = v2805(v2806, v2807)

            if v2807 == nil then
                break
            end
            if v2808:IsA('Accessory') then
                local v2809 = next
                local v2810, v2811 = v2808:GetDescendants()

                while true do
                    local v2812

                    v2811, v2812 = v2809(v2810, v2811)

                    if v2811 == nil then
                        break
                    end
                    if v2812:IsA('Weld') then
                        v2812:Destroy()
                    end
                end
            end
        end
    end)
    addcmd('droptools', {
        'droptool',
    }, function(_, _)
        local v2813, v2814, v2815 = pairs(Players.LocalPlayer.Backpack:GetChildren())

        while true do
            local v2816

            v2815, v2816 = v2813(v2814, v2815)

            if v2815 == nil then
                break
            end
            if v2816:IsA('Tool') then
                v2816.Parent = Players.LocalPlayer.Character
            end
        end

        wait()

        local v2817, v2818, v2819 = pairs(Players.LocalPlayer.Character:GetChildren())

        while true do
            local v2820

            v2819, v2820 = v2817(v2818, v2819)

            if v2819 == nil then
                break
            end
            if v2820:IsA('Tool') then
                v2820.Parent = workspace
            end
        end
    end)
    addcmd('droppabletools', {}, function(_, p2821)
        if p2821.Character then
            local v2822, v2823, v2824 = pairs(p2821.Character:GetChildren())

            while true do
                local v2825

                v2824, v2825 = v2822(v2823, v2824)

                if v2824 == nil then
                    break
                end
                if v2825:IsA('Tool') then
                    v2825.CanBeDropped = true
                end
            end
        end
        if p2821:FindFirstChildOfClass('Backpack') then
            local v2826, v2827, v2828 = pairs(p2821:FindFirstChildOfClass('Backpack'):GetChildren())

            while true do
                local v2829

                v2828, v2829 = v2826(v2827, v2828)

                if v2828 == nil then
                    break
                end
                if v2829:IsA('Tool') then
                    v2829.CanBeDropped = true
                end
            end
        end
    end)

    local u2830 = ''
    local u2831 = ''

    addcmd('reach', {}, function(p2832, p2833)
        execCmd('unreach')
        wait()

        local v2834, v2835, v2836 = pairs(p2833.Character:GetDescendants())

        while true do
            local v2837

            v2836, v2837 = v2834(v2835, v2836)

            if v2836 == nil then
                break
            end
            if v2837:IsA('Tool') then
                if p2832[1] then
                    u2830 = v2837.Handle.Size
                    u2831 = v2837.GripPos

                    local _SelectionBox3 = Instance.new('SelectionBox')

                    _SelectionBox3.Name = 'SelectionBoxCreated'
                    _SelectionBox3.Parent = v2837.Handle
                    _SelectionBox3.Adornee = v2837.Handle
                    v2837.Handle.Massless = true
                    v2837.Handle.Size = Vector3.new(0.5, 0.5, p2832[1])
                    v2837.GripPos = Vector3.new(0, 0, 0)

                    p2833.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
                else
                    u2830 = v2837.Handle.Size
                    u2831 = v2837.GripPos

                    local _SelectionBox4 = Instance.new('SelectionBox')

                    _SelectionBox4.Name = 'SelectionBoxCreated'
                    _SelectionBox4.Parent = v2837.Handle
                    _SelectionBox4.Adornee = v2837.Handle
                    v2837.Handle.Massless = true
                    v2837.Handle.Size = Vector3.new(0.5, 0.5, 60)
                    v2837.GripPos = Vector3.new(0, 0, 0)

                    p2833.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
                end
            end
        end
    end)
    addcmd('unreach', {
        'noreach',
    }, function(_, p2840)
        local v2841, v2842, v2843 = pairs(p2840.Character:GetDescendants())

        while true do
            local v2844

            v2843, v2844 = v2841(v2842, v2843)

            if v2843 == nil then
                break
            end
            if v2844:IsA('Tool') then
                v2844.Handle.Size = u2830
                v2844.GripPos = u2831

                v2844.Handle.SelectionBoxCreated:Destroy()
            end
        end
    end)
    addcmd('grippos', {}, function(p2845, p2846)
        local v2847, v2848, v2849 = pairs(p2846.Character:GetDescendants())

        while true do
            local v2850

            v2849, v2850 = v2847(v2848, v2849)

            if v2849 == nil then
                break
            end
            if v2850:IsA('Tool') then
                v2850.Parent = p2846:FindFirstChildOfClass('Backpack')
                v2850.GripPos = Vector3.new(p2845[1], p2845[2], p2845[3])
                v2850.Parent = p2846.Character
            end
        end
    end)
    addcmd('usetools', {}, function(p2851, p2852)
        local _Backpack = p2852:FindFirstChildOfClass('Backpack')
        local u2854 = tonumber(p2851[1]) or 1
        local u2855 = tonumber(p2851[2]) or false
        local v2856, v2857, v2858 = ipairs(_Backpack:GetChildren())

        while true do
            local u2859

            v2858, u2859 = v2856(v2857, v2858)

            if v2858 == nil then
                break
            end

            u2859.Parent = p2852.Character

            task.spawn(function()
                for _ = 1, u2854 do
                    u2859:Activate()

                    if u2855 then
                        wait(u2855)
                    end
                end

                u2859.Parent = _Backpack
            end)
        end
    end)
    addcmd('logs', {}, function(_, _)
        logs:TweenPosition(UDim2.new(0, 0, 1, -265), 'InOut', 'Quart', 0.3, true, nil)
    end)
    addcmd('chatlogs', {
        'clogs',
    }, function(_, _)
        join.Visible = false
        chat.Visible = true

        table.remove(shade3, table.find(shade3, selectChat))
        table.remove(shade2, table.find(shade2, selectJoin))
        table.insert(shade2, selectChat)
        table.insert(shade3, selectJoin)

        selectJoin.BackgroundColor3 = currentShade3
        selectChat.BackgroundColor3 = currentShade2

        logs:TweenPosition(UDim2.new(0, 0, 1, -265), 'InOut', 'Quart', 0.3, true, nil)
    end)
    addcmd('joinlogs', {
        'jlogs',
    }, function(_, _)
        chat.Visible = false
        join.Visible = true

        table.remove(shade3, table.find(shade3, selectJoin))
        table.remove(shade2, table.find(shade2, selectChat))
        table.insert(shade2, selectJoin)
        table.insert(shade3, selectChat)

        selectChat.BackgroundColor3 = currentShade3
        selectJoin.BackgroundColor3 = currentShade2

        logs:TweenPosition(UDim2.new(0, 0, 1, -265), 'InOut', 'Quart', 0.3, true, nil)
    end)

    flinging = false

    addcmd('fling', {}, function(_, p2860)
        flinging = false

        local v2861, v2862, v2863 = pairs(p2860.Character:GetDescendants())

        while true do
            local v2864

            v2863, v2864 = v2861(v2862, v2863)

            if v2863 == nil then
                break
            end
            if v2864:IsA('BasePart') then
                v2864.CustomPhysicalProperties = PhysicalProperties.new(math.huge, 0.3, 0.5)
            end
        end

        execCmd('noclip')
        wait(0.1)

        local _BodyAngularVelocity2 = Instance.new('BodyAngularVelocity')

        _BodyAngularVelocity2.Name = randomString()
        _BodyAngularVelocity2.Parent = getRoot(p2860.Character)
        _BodyAngularVelocity2.AngularVelocity = Vector3.new(0, 99999, 0)
        _BodyAngularVelocity2.MaxTorque = Vector3.new(0, math.huge, 0)
        _BodyAngularVelocity2.P = math.huge

        local v2866 = p2860.Character:GetChildren()
        local v2867 = next
        local v2868 = nil

        while true do
            local v2869

            v2868, v2869 = v2867(v2866, v2868)

            if v2868 == nil then
                break
            end
            if v2869:IsA('BasePart') then
                v2869.CanCollide = false
                v2869.Massless = true
                v2869.Velocity = Vector3.new(0, 0, 0)
            end
        end

        flinging = true
        flingDied = p2860.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
            execCmd('unfling')
        end)

        repeat
            _BodyAngularVelocity2.AngularVelocity = Vector3.new(0, 99999, 0)

            wait(0.2)

            _BodyAngularVelocity2.AngularVelocity = Vector3.new(0, 0, 0)

            wait(0.1)
        until flinging == false
    end)
    addcmd('unfling', {
        'nofling',
    }, function(_, p2870)
        execCmd('clip')

        if flingDied then
            flingDied:Disconnect()
        end

        flinging = false

        wait(0.1)

        local _Character40 = p2870.Character

        if _Character40 and getRoot(_Character40) then
            local v2872, v2873, v2874 = pairs(getRoot(_Character40):GetChildren())

            while true do
                local v2875

                v2874, v2875 = v2872(v2873, v2874)

                if v2874 == nil then
                    break
                end
                if v2875.ClassName == 'BodyAngularVelocity' then
                    v2875:Destroy()
                end
            end

            local v2876, v2877, v2878 = pairs(_Character40:GetDescendants())

            while true do
                local v2879

                v2878, v2879 = v2876(v2877, v2878)

                if v2878 == nil then
                    break
                end
                if v2879.ClassName == 'Part' or v2879.ClassName == 'MeshPart' then
                    v2879.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
                end
            end
        end
    end)
    addcmd('togglefling', {}, function(_, _)
        if flinging then
            execCmd('unfling')
        else
            execCmd('fling')
        end
    end)
    addcmd('invisfling', {}, function(_, p2880)
        local _Character41 = p2880.Character
        local _Model4 = Instance.new('Model')

        _Model4.Parent = p2880.Character

        local _Part5 = Instance.new('Part')

        _Part5.Name = 'Torso'
        _Part5.CanCollide = false
        _Part5.Anchored = true

        local _Part6 = Instance.new('Part')

        _Part6.Name = 'Head'
        _Part6.Parent = _Model4
        _Part6.Anchored = true
        _Part6.CanCollide = false

        local _Humanoid11 = Instance.new('Humanoid')

        _Humanoid11.Name = 'Humanoid'
        _Humanoid11.Parent = _Model4
        _Part5.Position = Vector3.new(0, 9999, 0)
        p2880.Character = _Model4

        wait(3)

        p2880.Character = _Character41

        wait(3)

        local _Humanoid12 = Instance.new('Humanoid')

        _Part6:Clone()

        _Humanoid12.Parent = p2880.Character

        local v2887 = getRoot(p2880.Character)
        local v2888, v2889, v2890 = pairs(p2880.Character:GetChildren())

        while true do
            local v2891

            v2890, v2891 = v2888(v2889, v2890)

            if v2890 == nil then
                break
            end
            if v2891 ~= v2887 and v2891.Name ~= 'Humanoid' then
                v2891:Destroy()
            end
        end

        v2887.Transparency = 0
        v2887.Color = Color3.new(1, 1, 1)

        local u2892 = nil

        u2892 = RunService.Stepped:Connect(function()
            if p2880.Character and getRoot(p2880.Character) then
                getRoot(p2880.Character).CanCollide = false
            else
                u2892:Disconnect()
            end
        end)

        sFLY()

        workspace.CurrentCamera.CameraSubject = v2887

        local _BodyThrust = Instance.new('BodyThrust')

        _BodyThrust.Parent = getRoot(p2880.Character)
        _BodyThrust.Force = Vector3.new(99999, 999990, 99999)
        _BodyThrust.Location = getRoot(p2880.Character).Position
    end)

    function attach(p2894, p2895)
        if tools(p2894) then
            local _Character42 = p2894.Character
            local _ = p2895.Character
            local _Humanoid13 = p2894.Character:FindFirstChildOfClass('Humanoid')
            local v2898 = getRoot(p2894.Character)
            local v2899 = getRoot(p2895.Character)

            _Humanoid13.Name = '1'

            local v2900 = _Humanoid13:Clone()

            v2900.Parent = _Character42
            v2900.Name = 'Humanoid'

            wait()
            _Humanoid13:Destroy()

            workspace.CurrentCamera.CameraSubject = _Character42
            v2900.DisplayDistanceType = 'None'

            local v2901 = p2894:FindFirstChildOfClass('Backpack'):FindFirstChildOfClass('Tool') or p2894.Character:FindFirstChildOfClass('Tool')

            v2901.Parent = _Character42
            v2898.CFrame = v2899.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100) / 200, math.random(-100, 100) / 200, math.random(-100, 100) / 200)

            local v2902 = 0

            repeat
                wait(0.1)

                v2902 = v2902 + 1
                v2898.CFrame = v2899.CFrame
            until v2901.Parent ~= _Character42 or (not v2898 or (not v2899 or (not v2898.Parent or (not v2899.Parent or 250 < v2902))))

            if v2902 <= 2 then
            end
        else
            notify('Tool Required', 'You need to have an item in your inventory to use this command')
        end
    end

    addcmd('attach', {}, function(p2903, p2904)
        local v2905 = getPlayer(p2903[1], p2904)
        local v2906, v2907, v2908 = pairs(v2905)

        while true do
            local v2909

            v2908, v2909 = v2906(v2907, v2908)

            if v2908 == nil then
                break
            end

            attach(p2904, Players[v2909])
        end
    end)

    function kill(p2910, p2911, p2912)
        if tools(p2910) then
            if p2911 ~= nil then
                local _CFrame12 = getRoot(p2910.Character).CFrame

                if not p2912 then
                    refresh(p2910)
                    wait()

                    repeat
                        wait()
                    until p2910.Character ~= nil and getRoot(p2910.Character)

                    wait(0.3)
                end

                local v2914 = getRoot(p2910.Character)

                attach(p2910, p2911)

                repeat
                    wait()

                    v2914.CFrame = CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5, 999999)
                until not (getRoot(p2911.Character) and getRoot(p2910.Character))

                p2910.CharacterAdded:Wait():WaitForChild('HumanoidRootPart').CFrame = _CFrame12
            end
        else
            notify('Tool Required', 'You need to have an item in your inventory to use this command')
        end
    end

    addcmd('kill', {
        'fekill',
    }, function(p2915, p2916)
        local v2917 = getPlayer(p2915[1], p2916)
        local v2918, v2919, v2920 = pairs(v2917)

        while true do
            local v2921

            v2920, v2921 = v2918(v2919, v2920)

            if v2920 == nil then
                break
            end

            kill(p2916, Players[v2921])
        end
    end)
    addcmd('handlekill', {
        'hkill',
    }, function(p2922, p2923)
        if not firetouchinterest then
            return notify('Incompatible Exploit', 'Your exploit does not support this command (missing firetouchinterest)')
        end

        local _RenderStepped2 = RunService.RenderStepped
        local u2925 = p2923.Character.FindFirstChildWhichIsA(p2923.Character, 'Tool')
        local u2926

        if u2925 then
            u2926 = u2925:FindFirstChild('Handle')
        else
            u2926 = u2925
        end
        if not (u2925 and u2926) then
            return notify('Handle Kill', 'You need to hold a "Tool" that does damage on touch. For example the default "Sword" tool.')
        end

        local v2927, v2928, v2929 = ipairs(getPlayer(p2922[1], p2923))

        while true do
            local v2930

            v2929, v2930 = v2927(v2928, v2929)

            if v2929 == nil then
                break
            end

            local u2931 = Players[v2930]

            task.spawn(function()
                while u2925 and (p2923.Character and (u2931.Character and u2925.Parent == p2923.Character)) do
                    local v2932 = u2931.Character.FindFirstChildWhichIsA(u2931.Character, 'Humanoid')

                    if not v2932 or v2932.Health <= 0 then
                        break
                    end

                    local v2933, v2934, v2935 = ipairs(u2931.Character.GetChildren(u2931.Character))

                    while true do
                        local v2936

                        v2935, v2936 = v2933(v2934, v2935)

                        if v2935 == nil then
                            break
                        end
                        if v2936:IsA('BasePart') then
                            local v2937 = firetouchinterest
                            local v2938 = u2926

                            _RenderStepped2:Wait()
                            v2937(v2938, v2936, 1, (firetouchinterest(u2926, v2936, 0)))
                        end
                    end
                end

                notify('Handle Kill Stopped!', u2931.Name .. ' died/left or you unequipped the tool!')
            end)
        end
    end)

    local _Heartbeat5 = RunService.Heartbeat

    addcmd('tpwalk', {
        'teleportwalk',
    }, function(p2940, p2941)
        tpwalking = true

        local _Character43 = p2941.Character
        local v2943

        if _Character43 then
            v2943 = _Character43:FindFirstChildWhichIsA('Humanoid')
        else
            v2943 = _Character43
        end

        while tpwalking and (_Character43 and (v2943 and v2943.Parent)) do
            local v2944 = _Heartbeat5:Wait()

            if v2943.MoveDirection.Magnitude > 0 then
                if p2940[1] and isNumber(p2940[1]) then
                    _Character43:TranslateBy(v2943.MoveDirection * tonumber(p2940[1]) * v2944 * 10)
                else
                    _Character43:TranslateBy(v2943.MoveDirection * v2944 * 10)
                end
            end
        end
    end)
    addcmd('untpwalk', {
        'unteleportwalk',
    }, function(_, _)
        tpwalking = false
    end)
    addcmd('fastkill', {
        'fastfekill',
    }, function(p2945, p2946)
        local v2947 = getPlayer(p2945[1], p2946)
        local v2948, v2949, v2950 = pairs(v2947)

        while true do
            local v2951

            v2950, v2951 = v2948(v2949, v2950)

            if v2950 == nil then
                break
            end

            kill(p2946, Players[v2951], true)
        end
    end)

    function bring(p2952, p2953, p2954)
        if tools(p2952) then
            if p2953 ~= nil then
                local _CFrame13 = getRoot(p2952.Character).CFrame

                if not p2954 then
                    refresh(p2952)
                    wait()

                    repeat
                        wait()
                    until p2952.Character ~= nil and getRoot(p2952.Character)

                    wait(0.3)
                end

                local v2956 = getRoot(p2952.Character)

                attach(p2952, p2953)

                repeat
                    wait()

                    v2956.CFrame = _CFrame13
                until not (getRoot(p2953.Character) and getRoot(p2952.Character))

                p2952.CharacterAdded:Wait():WaitForChild('HumanoidRootPart').CFrame = _CFrame13
            end
        else
            notify('Tool Required', 'You need to have an item in your inventory to use this command')
        end
    end

    addcmd('bring', {
        'febring',
    }, function(p2957, p2958)
        local v2959 = getPlayer(p2957[1], p2958)
        local v2960, v2961, v2962 = pairs(v2959)

        while true do
            local v2963

            v2962, v2963 = v2960(v2961, v2962)

            if v2962 == nil then
                break
            end

            bring(p2958, Players[v2963])
        end
    end)
    addcmd('fastbring', {
        'fastfebring',
    }, function(p2964, p2965)
        local v2966 = getPlayer(p2964[1], p2965)
        local v2967, v2968, v2969 = pairs(v2966)

        while true do
            local v2970

            v2969, v2970 = v2967(v2968, v2969)

            if v2969 == nil then
                break
            end

            bring(p2965, Players[v2970], true)
        end
    end)

    function teleport(p2971, p2972, p2973, p2974)
        if tools(p2971) then
            if p2972 ~= nil then
                local _CFrame14 = getRoot(p2971.Character).CFrame

                if not p2974 then
                    refresh(p2971)
                    wait()

                    repeat
                        wait()
                    until p2971.Character ~= nil and getRoot(p2971.Character)

                    wait(0.3)
                end

                local v2976 = getRoot(p2971.Character)
                local v2977 = getRoot(p2973.Character)

                attach(p2971, p2972)

                repeat
                    wait()

                    v2976.CFrame = v2977.CFrame
                until not (getRoot(p2972.Character) and getRoot(p2971.Character))

                wait(1)

                p2971.CharacterAdded:Wait():WaitForChild('HumanoidRootPart').CFrame = _CFrame14
            end
        else
            notify('Tool Required', 'You need to have an item in your inventory to use this command')
        end
    end

    addcmd('tp', {
        'teleport',
    }, function(p2978, p2979)
        local v2980 = getPlayer(p2978[1], p2979)
        local v2981 = getPlayer(p2978[2], p2979)
        local v2982, v2983, v2984 = pairs(v2980)

        while true do
            local v2985

            v2984, v2985 = v2982(v2983, v2984)

            if v2984 == nil then
                break
            end
            if getRoot(Players[v2985].Character) and getRoot(Players[v2981[1] ].Character) then
                if p2979.Character:FindFirstChildOfClass('Humanoid') and p2979.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p2979.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                teleport(p2979, Players[v2985], Players[v2981[1] ])
            end
        end
    end)
    addcmd('fasttp', {
        'fastteleport',
    }, function(p2986, p2987)
        local v2988 = getPlayer(p2986[1], p2987)
        local v2989 = getPlayer(p2986[2], p2987)
        local v2990, v2991, v2992 = pairs(v2988)

        while true do
            local v2993

            v2992, v2993 = v2990(v2991, v2992)

            if v2992 == nil then
                break
            end
            if getRoot(Players[v2993].Character) and getRoot(Players[v2989[1] ].Character) then
                if p2987.Character:FindFirstChildOfClass('Humanoid') and p2987.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                    p2987.Character:FindFirstChildOfClass('Humanoid').Sit = false

                    wait(0.1)
                end

                teleport(p2987, Players[v2993], Players[v2989[1] ], true)
            end
        end
    end)
    addcmd('spin', {}, function(p2994, p2995)
        local v2996 = not (p2994[1] and isNumber(p2994[1])) and 20 or p2994[1]
        local v2997, v2998, v2999 = pairs(getRoot(p2995.Character):GetChildren())

        while true do
            local v3000

            v2999, v3000 = v2997(v2998, v2999)

            if v2999 == nil then
                break
            end
            if v3000.Name == 'Spinning' then
                v3000:Destroy()
            end
        end

        local _BodyAngularVelocity3 = Instance.new('BodyAngularVelocity')

        _BodyAngularVelocity3.Name = 'Spinning'
        _BodyAngularVelocity3.Parent = getRoot(p2995.Character)
        _BodyAngularVelocity3.MaxTorque = Vector3.new(0, math.huge, 0)
        _BodyAngularVelocity3.AngularVelocity = Vector3.new(0, v2996, 0)
    end)
    addcmd('unspin', {}, function(_, p3002)
        local v3003, v3004, v3005 = pairs(getRoot(p3002.Character):GetChildren())

        while true do
            local v3006

            v3005, v3006 = v3003(v3004, v3005)

            if v3005 == nil then
                break
            end
            if v3006.Name == 'Spinning' then
                v3006:Destroy()
            end
        end
    end)

    local u3007 = false

    function x(p3008)
        if p3008 then
            local v3009, v3010, v3011 = pairs(workspace:GetDescendants())

            while true do
                local v3012

                v3011, v3012 = v3009(v3010, v3011)

                if v3011 == nil then
                    break
                end
                if v3012:IsA('BasePart') and not (v3012.Parent:FindFirstChildOfClass('Humanoid') or v3012.Parent.Parent:FindFirstChildOfClass('Humanoid')) then
                    v3012.LocalTransparencyModifier = 0.5
                end
            end
        else
            local v3013, v3014, v3015 = pairs(workspace:GetDescendants())

            while true do
                local v3016

                v3015, v3016 = v3013(v3014, v3015)

                if v3015 == nil then
                    break
                end
                if v3016:IsA('BasePart') and not (v3016.Parent:FindFirstChildOfClass('Humanoid') or v3016.Parent.Parent:FindFirstChildOfClass('Humanoid')) then
                    v3016.LocalTransparencyModifier = 0
                end
            end
        end
    end

    addcmd('xray', {}, function(_, _)
        u3007 = true

        x(u3007)
    end)
    addcmd('unxray', {
        'noxray',
    }, function(_, _)
        u3007 = false

        x(u3007)
    end)
    addcmd('togglexray', {}, function(_, _)
        u3007 = not u3007

        x(u3007)
    end)

    local u3017 = nil

    addcmd('walltp', {}, function(_, p3018)
        local v3019

        if r15(p3018) then
            v3019 = p3018.Character.UpperTorso
        else
            v3019 = p3018.Character.Torso
        end

        u3017 = v3019.Touched:Connect(function(p3020)
            local v3021 = getRoot(p3018.Character)

            if p3020:IsA('BasePart') and p3020.Position.Y > v3021.Position.Y - p3018.Character:FindFirstChildOfClass('Humanoid').HipHeight then
                local v3022 = getRoot(p3020.Parent)

                if v3022 == nil then
                    if v3022 == nil then
                        v3021.CFrame = p3020.CFrame * CFrame.new(v3021.CFrame.lookVector.X, p3020.Size.Y / 2 + p3018.Character:FindFirstChildOfClass('Humanoid').HipHeight, v3021.CFrame.lookVector.Z)
                    end
                else
                    v3021.CFrame = p3020.CFrame * CFrame.new(v3021.CFrame.lookVector.X, v3022.Size.Z / 2 + p3018.Character:FindFirstChildOfClass('Humanoid').HipHeight, v3021.CFrame.lookVector.Z)
                end
            end
        end)
    end)
    addcmd('unwalltp', {
        'nowalltp',
    }, function(_, _)
        if u3017 then
            u3017:Disconnect()
        end
    end)

    autoclicking = false

    addcmd('autoclick', {}, function(p3023, _)
        if mouse1press and mouse1release then
            execCmd('unautoclick')
            wait()

            local v3024 = not (p3023[1] and isNumber(p3023[1])) and 0.1 or p3023[1]
            local v3025 = not (p3023[2] and isNumber(p3023[2])) and 0.1 or p3023[2]

            autoclicking = true
            cancelAutoClick = UserInputService.InputBegan:Connect(function(p3026, p3027)
                if not p3027 and (p3026.KeyCode == Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Equals) or p3026.KeyCode == Enum.KeyCode.Equals and UserInputService:IsKeyDown(Enum.KeyCode.Backspace)) then
                    autoclicking = false

                    cancelAutoClick:Disconnect()
                end
            end)

            notify('Auto Clicker', 'Press [backspace] and [=] at the same time to stop')

            repeat
                wait(v3024)
                mouse1press()
                wait(v3025)
                mouse1release()
            until autoclicking == false
        else
            notify('Auto Clicker', "Your exploit doesn't have the ability to use the autoclick")
        end
    end)
    addcmd('unautoclick', {
        'noautoclick',
    }, function(_, _)
        autoclicking = false

        if cancelAutoClick then
            cancelAutoClick:Disconnect()
        end
    end)
    addcmd('mousesensitivity', {
        'ms',
    }, function(p3028, _)
        UserInputService.MouseDeltaSensitivity = p3028[1]
    end)

    local u3029 = nil
    local u3030 = nil

    addcmd('hovername', {}, function(_, _)
        execCmd('unhovername')
        wait()

        u3029 = Instance.new('TextLabel')
        u3029.Name = randomString()
        u3029.Parent = PARENT
        u3029.BackgroundTransparency = 1
        u3029.Size = UDim2.new(0, 200, 0, 30)
        u3029.Font = Enum.Font.Code
        u3029.TextSize = 16
        u3029.Text = ''
        u3029.TextColor3 = Color3.new(1, 1, 1)
        u3029.TextStrokeTransparency = 0
        u3029.TextXAlignment = Enum.TextXAlignment.Left
        u3029.ZIndex = 10
        u3030 = Instance.new('SelectionBox')
        u3030.Name = randomString()
        u3030.LineThickness = 0.03
        u3030.Color3 = Color3.new(1, 1, 1)

        local function v3037()
            local v3031 = nil
            local _Target = IYMouse.Target

            if _Target then
                local v3033 = _Target.Parent:FindFirstChildOfClass('Humanoid') or _Target.Parent.Parent:FindFirstChildOfClass('Humanoid')

                if v3033 then
                    v3031 = v3033.Parent
                end
            end
            if v3031 == nil then
                u3029.Visible = false
                u3030.Parent = nil
                u3030.Adornee = nil
            else
                local _X6 = IYMouse.X
                local _Y4 = IYMouse.Y
                local v3036

                if IYMouse.X <= 200 then
                    v3036 = _X6 + 25
                    u3029.TextXAlignment = Enum.TextXAlignment.Left
                else
                    v3036 = _X6 - 205
                    u3029.TextXAlignment = Enum.TextXAlignment.Right
                end

                u3029.Position = UDim2.new(0, v3036, 0, _Y4)
                u3029.Text = v3031.Name
                u3029.Visible = true
                u3030.Parent = v3031
                u3030.Adornee = v3031
            end
        end

        nbUpdateFunc = IYMouse.Move:Connect(v3037)
    end)
    addcmd('unhovername', {
        'nohovername',
    }, function(_, _)
        if nbUpdateFunc then
            nbUpdateFunc:Disconnect()
            u3029:Destroy()
            u3030:Destroy()
        end
    end)
    addcmd('headsize', {}, function(p3038, p3039)
        local v3040 = getPlayer(p3038[1], p3039)
        local v3041, v3042, v3043 = pairs(v3040)

        while true do
            local v3044

            v3043, v3044 = v3041(v3042, v3043)

            if v3043 == nil then
                break
            end
            if Players[v3044] ~= p3039 and Players[v3044].Character:FindFirstChild('Head') then
                local v3045 = tonumber(p3038[2])
                local v3046 = Vector3.new(v3045, v3045, v3045)
                local _Head2 = Players[v3044].Character:FindFirstChild('Head')

                if _Head2:IsA('BasePart') then
                    if p3038[2] and v3045 ~= 1 then
                        _Head2.Size = v3046
                    else
                        _Head2.Size = Vector3.new(2, 1, 1)
                    end
                end
            end
        end
    end)
    addcmd('hitbox', {}, function(p3048, p3049)
        local v3050 = getPlayer(p3048[1], p3049)
        local v3051, v3052, v3053 = pairs(v3050)

        while true do
            local v3054

            v3053, v3054 = v3051(v3052, v3053)

            if v3053 == nil then
                break
            end
            if Players[v3054] ~= p3049 and Players[v3054].Character:FindFirstChild('HumanoidRootPart') then
                local v3055 = tonumber(p3048[2])
                local v3056 = Vector3.new(v3055, v3055, v3055)
                local _HumanoidRootPart2 = Players[v3054].Character:FindFirstChild('HumanoidRootPart')

                if _HumanoidRootPart2:IsA('BasePart') then
                    if p3048[2] and v3055 ~= 1 then
                        _HumanoidRootPart2.Size = v3056
                        _HumanoidRootPart2.Transparency = 0.4
                    else
                        _HumanoidRootPart2.Size = Vector3.new(2, 1, 1)
                        _HumanoidRootPart2.Transparency = 0.4
                    end
                end
            end
        end
    end)
    addcmd('stareat', {
        'stare',
    }, function(p3058, p3059)
        local v3060 = getPlayer(p3058[1], p3059)
        local v3061, v3062, v3063 = pairs(v3060)

        while true do
            local u3064

            v3063, u3064 = v3061(v3062, v3063)

            if v3063 == nil then
                break
            end
            if stareLoop then
                stareLoop:Disconnect()
            end
            if not Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and Players[u3064].Character:FindFirstChild('HumanoidRootPart') then
                return
            end

            stareLoop = RunService.RenderStepped:Connect(function()
                if Players.LocalPlayer.Character.PrimaryPart and (Players:FindFirstChild(u3064) and Players[u3064].Character ~= nil and Players[u3064].Character:FindFirstChild('HumanoidRootPart')) then
                    local _Position12 = Players.LocalPlayer.Character.PrimaryPart.Position
                    local _Position13 = Players[u3064].Character:FindFirstChild('HumanoidRootPart').Position
                    local v3067 = Vector3.new(_Position13.X, _Position12.Y, _Position13.Z)
                    local v3068 = CFrame.new(_Position12, v3067)

                    Players.LocalPlayer.Character:SetPrimaryPartCFrame(v3068)
                elseif not Players:FindFirstChild(u3064) then
                    stareLoop:Disconnect()
                end
            end)
        end
    end)
    addcmd('unstareat', {
        'unstare',
        'nostare',
        'nostareat',
    }, function(_, _)
        if stareLoop then
            stareLoop:Disconnect()
        end
    end)

    local u3069 = {
        Group = 0,
        Role = '',
        Leave = false,
    }

    Players.PlayerAdded:Connect(function(p3070)
        if u3069.Group ~= 0 then
            if p3070:IsInGroup(u3069.Group) and tostring(p3070:GetRoleInGroup(u3069.Group)):lower() == u3069.Role:lower() then
                if u3069.Leave ~= true then
                    notify('Rolewatch', 'Player "' .. tostring(p3070.Name) .. '" has joined with the Role "' .. u3069.Role .. '"')
                else
                    Players.LocalPlayer:Kick('\n\nRolewatch\nPlayer "' .. tostring(p3070.Name) .. '" has joined with the Role "' .. u3069.Role .. '"\n')
                end
            end
        end
    end)
    addcmd('rolewatch', {}, function(p3071, _)
        local v3072 = p3071[1] or 0

        if isNumber(v3072) and p3071[2] then
            local v3073 = tostring(getstring(2))

            u3069.Group = tonumber(v3072)
            u3069.Role = v3073

            notify('Rolewatch', 'Watching Group ID "' .. tostring(v3072) .. '" for Role "' .. v3073 .. '"')
        end
    end)
    addcmd('rolewatchstop', {}, function(_, _)
        u3069 = {
            Group = 0,
            Role = '',
            Leave = false,
        }
    end)
    addcmd('rolewatchleave', {
        'unrolewatch',
    }, function(_, _)
        u3069.Leave = not u3069.Leave

        notify('Rolewatch', u3069.Leave and 'Leave has been Enabled' or 'Leave has been Disabled')
    end)
    addcmd('removeterrain', {
        'rterrain',
        'noterrain',
    }, function(_, _)
        workspace:FindFirstChildOfClass('Terrain'):Clear()
    end)
    addcmd('clearnilinstances', {
        'nonilinstances',
        'cni',
    }, function(_, _)
        if getnilinstances then
            local v3074, v3075, v3076 = pairs(getnilinstances())

            while true do
                local v3077

                v3076, v3077 = v3074(v3075, v3076)

                if v3076 == nil then
                    break
                end

                v3077:Destroy()
            end
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing getnilinstances)')
        end
    end)
    addcmd('destroyheight', {
        'dh',
    }, function(p3078, _)
        local v3079 = p3078[1] or -500

        if isNumber(v3079) then
            workspace.FallenPartsDestroyHeight = v3079
        end
    end)
    addcmd('trip', {}, function(_, p3080)
        if p3080 and p3080.Character and (p3080.Character:FindFirstChildOfClass('Humanoid') and getRoot(p3080.Character)) then
            local _Humanoid14 = p3080.Character:FindFirstChildOfClass('Humanoid')
            local v3082 = getRoot(p3080.Character)

            _Humanoid14:ChangeState(0)

            v3082.Velocity = v3082.CFrame.LookVector * 30
        end
    end)

    local u3083 = nil

    frozenParts = {}

    addcmd('freezeunanchored', {
        'freezeua',
    }, function(_, p3084)
        if sethidden then
            local u3085 = {
                'Head',
                'UpperTorso',
                'LowerTorso',
                'RightUpperArm',
                'LeftUpperArm',
                'RightLowerArm',
                'LeftLowerArm',
                'RightHand',
                'LeftHand',
                'RightUpperLeg',
                'LeftUpperLeg',
                'RightLowerLeg',
                'LeftLowerLeg',
                'RightFoot',
                'LeftFoot',
                'Torso',
                'Right Arm',
                'Left Arm',
                'Right Leg',
                'Left Leg',
                'HumanoidRootPart',
            }

            local function v3095(p3086)
                if p3086:IsA('BasePart' or 'UnionOperation') and p3086.Anchored == false then
                    local v3087 = false

                    for v3088 = 1, #u3085 do
                        if p3086.Name == u3085[v3088] then
                            v3087 = true
                        end
                    end

                    if (p3084.Character and p3086:IsDescendantOf(p3084.Character) and true or v3087) == false then
                        local v3089, v3090, v3091 = pairs(p3086:GetChildren())

                        while true do
                            local v3092

                            v3091, v3092 = v3089(v3090, v3091)

                            if v3091 == nil then
                                break
                            end
                            if v3092:IsA('BodyPosition') or v3092:IsA('BodyGyro') then
                                v3092:Destroy()
                            end
                        end

                        local _BodyPosition2 = Instance.new('BodyPosition')

                        _BodyPosition2.Parent = p3086
                        _BodyPosition2.Position = p3086.Position
                        _BodyPosition2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

                        local _BodyGyro4 = Instance.new('BodyGyro')

                        _BodyGyro4.Parent = p3086
                        _BodyGyro4.CFrame = p3086.CFrame
                        _BodyGyro4.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)

                        if not table.find(frozenParts, p3086) then
                            table.insert(frozenParts, p3086)
                        end
                    end
                end
            end

            local v3096, v3097, v3098 = pairs(workspace:GetDescendants())

            while true do
                local v3099

                v3098, v3099 = v3096(v3097, v3098)

                if v3098 == nil then
                    break
                end

                v3095(v3099)
            end

            u3083 = workspace.DescendantAdded:Connect(v3095)
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing sethiddenproperty)')
        end
    end)
    addcmd('thawunanchored', {
        'thawua',
        'unfreezeunanchored',
        'unfreezeua',
    }, function(_, _)
        if sethidden then
            if u3083 then
                u3083:Disconnect()
            end

            local v3100, v3101, v3102 = pairs(frozenParts)

            while true do
                local v3103

                v3102, v3103 = v3100(v3101, v3102)

                if v3102 == nil then
                    break
                end

                local v3104, v3105, v3106 = pairs(v3103:GetChildren())

                while true do
                    local v3107

                    v3106, v3107 = v3104(v3105, v3106)

                    if v3106 == nil then
                        break
                    end
                    if v3107:IsA('BodyPosition') or v3107:IsA('BodyGyro') then
                        v3107:Destroy()
                    end
                end
            end

            frozenParts = {}
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing sethiddenproperty)')
        end
    end)
    addcmd('tpunanchored', {
        'tpua',
    }, function(p3108, p3109)
        if sethidden then
            local v3110 = getPlayer(p3108[1], p3109)
            local v3111, v3112, v3113 = pairs(v3110)

            while true do
                local v3114

                v3113, v3114 = v3111(v3112, v3113)

                if v3113 == nil then
                    break
                end

                local v3115, v3116, v3117 = pairs(workspace:GetDescendants())
                local v3118 = {}

                while true do
                    local v3119

                    v3117, v3119 = v3115(v3116, v3117)

                    if v3117 == nil then
                        break
                    end
                    if Players[v3114].Character:FindFirstChild('Head') and (v3119:IsA('BasePart' or ('UnionOperation' or 'Model')) and (v3119.Anchored == false and not v3119:IsDescendantOf(p3109.Character)) and (v3119.Name == 'Torso' == false and (v3119.Name == 'Head' == false and (v3119.Name == 'Right Arm' == false and (v3119.Name == 'Left Arm' == false and (v3119.Name == 'Right Leg' == false and (v3119.Name == 'Left Leg' == false and v3119.Name == 'HumanoidRootPart' == false))))))) then
                        local v3120, v3121, v3122 = pairs(v3119:GetChildren())

                        while true do
                            local v3123

                            v3122, v3123 = v3120(v3121, v3122)

                            if v3122 == nil then
                                break
                            end
                            if v3123:IsA('BodyPosition') or v3123:IsA('BodyGyro') then
                                v3123:Destroy()
                            end
                        end

                        local _BodyPosition3 = Instance.new('BodyPosition')

                        _BodyPosition3.Parent = v3119
                        _BodyPosition3.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

                        table.insert(v3118, _BodyPosition3)

                        if not table.find(frozenParts, v3119) then
                            table.insert(frozenParts, v3119)
                        end
                    end
                end

                local v3125, v3126, v3127 = pairs(v3118)

                while true do
                    local v3128

                    v3127, v3128 = v3125(v3126, v3127)

                    if v3127 == nil then
                        break
                    end

                    v3128.Position = Players[v3114].Character.Head.Position
                end
            end
        else
            notify('Incompatible Exploit', 'Your exploit does not support this command (missing sethiddenproperty)')
        end
    end)

    keycodeMap = {
        ['0'] = 48,
        ['1'] = 49,
        ['2'] = 50,
        ['3'] = 51,
        ['4'] = 52,
        ['5'] = 53,
        ['6'] = 54,
        ['7'] = 55,
        ['8'] = 56,
        ['9'] = 57,
        a = 65,
        b = 66,
        c = 67,
        d = 68,
        e = 69,
        f = 70,
        g = 71,
        h = 72,
        i = 73,
        j = 74,
        k = 75,
        l = 76,
        m = 77,
        n = 78,
        o = 79,
        p = 80,
        q = 81,
        r = 82,
        s = 83,
        t = 84,
        u = 85,
        v = 86,
        w = 87,
        x = 88,
        y = 89,
        z = 90,
        enter = 13,
        shift = 16,
        ctrl = 17,
        alt = 18,
        pause = 19,
        capslock = 20,
        spacebar = 32,
        space = 32,
        pageup = 33,
        pagedown = 34,
        ['end'] = 35,
        home = 36,
        left = 37,
        up = 38,
        right = 39,
        down = 40,
        insert = 45,
        delete = 46,
        f1 = 112,
        f2 = 113,
        f3 = 114,
        f4 = 115,
        f5 = 116,
        f6 = 117,
        f7 = 118,
        f8 = 119,
        f9 = 120,
        f10 = 121,
        f11 = 122,
        f12 = 123,
    }
    autoKeyPressing = false
    cancelAutoKeyPress = nil

    addcmd('autokeypress', {
        'keypress',
    }, function(p3129, _)
        if keypress and (keyrelease and p3129[1]) then
            local v3130 = keycodeMap[p3129[1]:lower()]

            if not v3130 then
                notify('Auto Key Press', 'Invalid key')

                return
            end

            execCmd('unautokeypress')
            wait()

            local v3131 = not (p3129[2] and isNumber(p3129[2])) and 0.1 or p3129[2]
            local v3132 = not (p3129[3] and isNumber(p3129[3])) and 0.1 or p3129[3]

            autoKeyPressing = true
            cancelAutoKeyPress = UserInputService.InputBegan:Connect(function(p3133, p3134)
                if not p3134 and (p3133.KeyCode == Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Equals) or p3133.KeyCode == Enum.KeyCode.Equals and UserInputService:IsKeyDown(Enum.KeyCode.Backspace)) then
                    autoKeyPressing = false

                    cancelAutoKeyPress:Disconnect()
                end
            end)

            notify('Auto Key Press', 'Press [backspace] and [=] at the same time to stop')

            repeat
                wait(v3131)
                keypress(v3130)
                wait(v3132)
                keyrelease(v3130)
            until autoKeyPressing == false

            if cancelAutoKeyPress then
                cancelAutoKeyPress:Disconnect()
                keyrelease(v3130)
            end
        else
            notify('Auto Key Press', "Your exploit doesn't have the ability to use auto key press")
        end
    end)
    addcmd('unautokeypress', {
        'noautokeypress',
        'unkeypress',
        'nokeypress',
    }, function(_, _)
        autoKeyPressing = false

        if cancelAutoKeyPress then
            cancelAutoKeyPress:Disconnect()
        end
    end)
    addcmd('addplugin', {
        'plugin',
    }, function(_, _)
        addPlugin(getstring(1))
    end)
    addcmd('removeplugin', {
        'deleteplugin',
    }, function(_, _)
        deletePlugin(getstring(1))
    end)
    addcmd('reloadplugin', {}, function(_, _)
        local v3135 = getstring(1)

        deletePlugin(v3135)
        wait(1)
        addPlugin(v3135)
    end)
    addcmd('removecmd', {
        'deletecmd',
    }, function(p3136, _)
        removecmd(p3136[1])
    end)
    updateColors(currentShade1, shade1)
    updateColors(currentShade2, shade2)
    updateColors(currentShade3, shade3)
    updateColors(currentText1, text1)
    updateColors(currentText2, text2)
    updateColors(currentScroll, scroll)

    if PluginsTable ~= nil or PluginsTable ~= {} then
        FindPlugins(PluginsTable)
    end

    eventEditor.RegisterEvent('OnExecute')
    eventEditor.RegisterEvent('OnSpawn', {
        {
            Type = 'Player',
            Name = 'Player Filter ($1)',
        },
    })
    eventEditor.RegisterEvent('OnDied', {
        {
            Type = 'Player',
            Name = 'Player Filter ($1)',
        },
    })
    eventEditor.RegisterEvent('OnDamage', {
        {
            Type = 'Player',
            Name = 'Player Filter ($1)',
        },
        {
            Type = 'Number',
            Name = 'Below Health ($2)',
        },
    })
    eventEditor.RegisterEvent('OnKilled', {
        {
            Type = 'Player',
            Name = 'Victim Player ($1)',
        },
        {
            Type = 'Player',
            Name = 'Killer Player ($2)',
            Default = 1,
        },
    })
    eventEditor.RegisterEvent('OnJoin', {
        {
            Type = 'Player',
            Name = 'Player Filter ($1)',
            Default = 1,
        },
    })
    eventEditor.RegisterEvent('OnChatted', {
        {
            Type = 'Player',
            Name = 'Player Filter ($1)',
            Default = 1,
        },
        {
            Type = 'String',
            Name = 'Message Filter ($2)',
        },
    })

    function hookCharEvents(p3137, _)
        task.spawn(function()
            local _Character44 = p3137.Character

            if _Character44 then
                local _Humanoid15 = _Character44:WaitForChild('Humanoid', 10)

                if _Humanoid15 then
                    local _Health = _Humanoid15.Health

                    _Humanoid15.HealthChanged:Connect(function(p3141)
                        math.abs(_Health - p3141)

                        if p3141 < _Health then
                            eventEditor.FireEvent('OnDamage', p3137.Name, tonumber(p3141))
                        end

                        _Health = p3141
                    end)
                    _Humanoid15.Died:Connect(function()
                        eventEditor.FireEvent('OnDied', p3137.Name)

                        local _creator = _Humanoid15:FindFirstChild('creator')

                        if _creator and (_creator.Value and _creator.Value.Parent) then
                            eventEditor.FireEvent('OnKilled', p3137.Name, _creator.Name)
                        end
                    end)
                end
            else
                return
            end
        end)
    end

    Players.PlayerAdded:Connect(function(p3143)
        eventEditor.FireEvent('OnJoin', p3143.Name)
        p3143.Chatted:Connect(function(p3144)
            eventEditor.FireEvent('OnChatted', tostring(p3143), p3144)
        end)
        p3143.CharacterAdded:Connect(function()
            eventEditor.FireEvent('OnSpawn', tostring(p3143))
            hookCharEvents(p3143)
        end)
        JoinLog(p3143)
        ChatLog(p3143)

        if ESPenabled then
            repeat
                wait(1)
            until p3143.Character and getRoot(p3143.Character)

            ESP(p3143)
        end
        if CHMSenabled then
            repeat
                wait(1)
            until p3143.Character and getRoot(p3143.Character)

            CHMS(p3143)
        end
    end)

    local v3145, v3146, v3147 = pairs(Players:GetPlayers())

    while true do
        local u3148

        v3147, u3148 = v3145(v3146, v3147)

        if v3147 == nil then
            break
        end

        pcall(function()
            u3148.CharacterAdded:Connect(function()
                eventEditor.FireEvent('OnSpawn', tostring(u3148))
                hookCharEvents(u3148)
            end)
            hookCharEvents(u3148)
        end)
    end

    if spawnCmds and #spawnCmds > 0 then
        local v3149, v3150, v3151 = pairs(spawnCmds)

        while true do
            local v3152

            v3151, v3152 = v3149(v3150, v3151)

            if v3151 == nil then
                break
            end

            eventEditor.AddCmd('OnSpawn', {
                v3152.COMMAND or '',
                {0},
                v3152.DELAY or 0,
            })
        end

        updatesaves()
    end
    if u258 then
        eventEditor.LoadData(u258)
    end

    eventEditor.Refresh()
    eventEditor.FireEvent('OnExecute')

    if aliases and #aliases > 0 then
        local v3153, v3154, v3155 = pairs(cmds)
        local v3156 = {}

        while true do
            local v3157

            v3155, v3157 = v3153(v3154, v3155)

            if v3155 == nil then
                break
            end

            v3156[v3157.NAME:lower()] = v3157

            local v3158, v3159, v3160 = pairs(v3157.ALIAS)

            while true do
                local v3161

                v3160, v3161 = v3158(v3159, v3160)

                if v3160 == nil then
                    break
                end

                v3156[v3161:lower()] = v3157
            end
        end

        for v3162 = 1, #aliases do
            local v3163 = v3162
            local v3164 = string.lower(aliases[v3163].CMD)
            local v3165 = string.lower(aliases[v3163].ALIAS)

            if v3156[v3164] then
                customAlias[v3165] = v3156[v3164]
            end
        end

        refreshaliases()
    end

    IYMouse.Move:Connect(checkTT)
    task.spawn(function()
        local v3167, v3168 = pcall(function()
            local _httpsrawgithubusercontentcomEdgeIYinfiniteyieldmasterversion = game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/version')

            return HttpService:JSONDecode(_httpsrawgithubusercontentcomEdgeIYinfiniteyieldmasterversion)
        end)

        if v3167 then
            notify('IY Delta', 'Enjoy the mobile version of Infinite Yield')

            if v3168.Announcement and v3168.Announcement ~= '' then
                local _Frame9 = Instance.new('Frame')
                local _Frame10 = Instance.new('Frame')
                local _TextLabel20 = Instance.new('TextLabel')
                local _Frame11 = Instance.new('Frame')
                local _TextLabel21 = Instance.new('TextLabel')
                local _TextButton8 = Instance.new('TextButton')
                local _ImageLabel5 = Instance.new('ImageLabel')

                _Frame9.Name = randomString()
                _Frame9.Parent = PARENT
                _Frame9.Active = true
                _Frame9.BackgroundTransparency = 1
                _Frame9.Position = UDim2.new(0.5, -180, 0, -500)
                _Frame9.Size = UDim2.new(0, 360, 0, 20)
                _Frame9.ZIndex = 10
                _Frame10.Name = 'background'
                _Frame10.Parent = _Frame9
                _Frame10.Active = true
                _Frame10.BackgroundColor3 = currentShade1
                _Frame10.BorderSizePixel = 0
                _Frame10.Position = UDim2.new(0, 0, 0, 20)
                _Frame10.Size = UDim2.new(0, 360, 0, 150)
                _Frame10.ZIndex = 10
                _TextLabel20.Parent = _Frame10
                _TextLabel20.BackgroundTransparency = 1
                _TextLabel20.Position = UDim2.new(0, 5, 0, 5)
                _TextLabel20.Size = UDim2.new(0, 350, 0, 140)
                _TextLabel20.Font = Enum.Font.SourceSans
                _TextLabel20.TextSize = 18
                _TextLabel20.TextWrapped = true
                _TextLabel20.Text = Announcement
                _TextLabel20.TextColor3 = currentText1
                _TextLabel20.TextXAlignment = Enum.TextXAlignment.Left
                _TextLabel20.TextYAlignment = Enum.TextYAlignment.Top
                _TextLabel20.ZIndex = 10
                _Frame11.Name = 'shadow'
                _Frame11.Parent = _Frame9
                _Frame11.BackgroundColor3 = currentShade2
                _Frame11.BorderSizePixel = 0
                _Frame11.Size = UDim2.new(0, 360, 0, 20)
                _Frame11.ZIndex = 10
                _TextLabel21.Name = 'PopupText'
                _TextLabel21.Parent = _Frame11
                _TextLabel21.BackgroundTransparency = 1
                _TextLabel21.Size = UDim2.new(1, 0, 0.95, 0)
                _TextLabel21.ZIndex = 10
                _TextLabel21.Font = Enum.Font.SourceSans
                _TextLabel21.TextSize = 14
                _TextLabel21.Text = 'Server Announcement'
                _TextLabel21.TextColor3 = currentText1
                _TextLabel21.TextWrapped = true
                _TextButton8.Name = 'Exit'
                _TextButton8.Parent = _Frame11
                _TextButton8.BackgroundTransparency = 1
                _TextButton8.Position = UDim2.new(1, -20, 0, 0)
                _TextButton8.Size = UDim2.new(0, 20, 0, 20)
                _TextButton8.Text = ''
                _TextButton8.ZIndex = 10
                _ImageLabel5.Parent = _TextButton8
                _ImageLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
                _ImageLabel5.BackgroundTransparency = 1
                _ImageLabel5.Position = UDim2.new(0, 5, 0, 5)
                _ImageLabel5.Size = UDim2.new(0, 10, 0, 10)
                _ImageLabel5.Image = 'rbxassetid://5054663650'
                _ImageLabel5.ZIndex = 10

                wait(1)

                local v3176 = _Frame9

                _Frame9.TweenPosition(v3176, UDim2.new(0.5, -180, 0, 150), 'InOut', 'Quart', 0.5, true, nil)
                _TextButton8.MouseButton1Click:Connect(function()
                    _Frame9:TweenPosition(UDim2.new(0.5, -180, 0, -500), 'InOut', 'Quart', 0.5, true, nil)
                    wait(0.6)
                    _Frame9:Destroy()
                end)
            end
        end
    end)
    task.spawn(function()
        wait()
        Credits:TweenPosition(UDim2.new(0, 0, 0.9, 0), 'Out', 'Quart', 0.2)
        Logo:TweenSizeAndPosition(UDim2.new(0, 175, 0, 175), UDim2.new(0, 37, 0, 45), 'Out', 'Quart', 0.3)
        wait(1)

        local v3177 = TweenInfo.new(1.6809, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)

        TweenService:Create(Logo, v3177, {ImageTransparency = 1}):Play()
        TweenService:Create(IntroBackground, v3177, {BackgroundTransparency = 1}):Play()
        Credits:TweenPosition(UDim2.new(0, 0, 0.9, 30), 'Out', 'Quart', 0.2)
        wait(0.2)
        Logo:Destroy()
        Credits:Destroy()
        IntroBackground:Destroy()
        minimizeHolder()
    end)
end
