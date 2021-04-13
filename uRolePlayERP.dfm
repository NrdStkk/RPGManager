object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'RolePlayERP'
  ClientHeight = 535
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pagMain: TPageControl
    Left = 200
    Top = 0
    Width = 484
    Height = 535
    ActivePage = pagQuests
    Align = alClient
    TabOrder = 0
    object pagBattler: TTabSheet
      Caption = 'PagBattler'
      TabVisible = False
      object pnl_BattlerMenu: TPanel
        Left = 0
        Top = 0
        Width = 476
        Height = 59
        Align = alTop
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object btn_AddEnemy: TButton
          Left = 146
          Top = 16
          Width = 79
          Height = 25
          Caption = 'Add Enemy'
          TabOrder = 0
          OnClick = btn_AddEnemyClick
        end
        object btn_ClearEnemies: TButton
          Left = 231
          Top = 16
          Width = 81
          Height = 25
          Caption = 'Clear Enemies'
          TabOrder = 1
          OnClick = btn_ClearEnemiesClick
        end
      end
      object scrlbx_Enemies: TScrollBox
        Left = 0
        Top = 59
        Width = 476
        Height = 466
        Align = alClient
        TabOrder = 1
      end
    end
    object pagStoryNotes: TTabSheet
      Caption = 'PagStory'
      ImageIndex = 1
      TabVisible = False
      object pnlNotesController: TPanel
        Left = 0
        Top = 0
        Width = 476
        Height = 82
        Align = alTop
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object btnDeleteNote: TButton
          Left = 14
          Top = 43
          Width = 85
          Height = 25
          Caption = 'Delete Note'
          TabOrder = 0
          OnClick = btnDeleteNoteClick
        end
        object btnRenameNote: TButton
          Left = 112
          Top = 43
          Width = 85
          Height = 25
          Caption = 'Rename Note'
          TabOrder = 1
          OnClick = btnRenameNoteClick
        end
        object btnSaveNotes: TButton
          Left = 112
          Top = 12
          Width = 85
          Height = 25
          Caption = 'Save Note'
          TabOrder = 2
          OnClick = btnSaveNotesClick
        end
        object btnAddNote: TButton
          Left = 12
          Top = 12
          Width = 85
          Height = 25
          Caption = 'Add Note'
          TabOrder = 3
          OnClick = btnAddNoteClick
        end
      end
      object pgcNotes: TPageControl
        Left = 0
        Top = 82
        Width = 476
        Height = 443
        Align = alClient
        TabOrder = 1
      end
    end
    object pagPlayers: TTabSheet
      Caption = 'PagPlayers'
      ImageIndex = 2
      TabVisible = False
      object pgcPlayers: TPageControl
        Left = 0
        Top = 55
        Width = 476
        Height = 470
        Align = alClient
        TabOrder = 0
      end
      object pnlPlayersControl: TPanel
        Left = 0
        Top = 0
        Width = 476
        Height = 55
        Align = alTop
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 1
        object btnNewPlayer: TButton
          Left = 144
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Manage'
          TabOrder = 0
          OnClick = btnNewPlayerClick
        end
        object btnDeletePlayer: TButton
          Left = 272
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Delete Player'
          TabOrder = 1
          OnClick = btnDeletePlayerClick
        end
        object btnReloadPlayers: TButton
          Left = 32
          Top = 16
          Width = 25
          Height = 25
          Caption = 'O'
          TabOrder = 2
          OnClick = btnReloadPlayersClick
        end
      end
    end
    object pagStarter: TTabSheet
      Caption = 'STARTING'
      ImageIndex = 3
      TabVisible = False
      object PanelVersion: TPanel
        Left = 0
        Top = 0
        Width = 476
        Height = 525
        Align = alClient
        Caption = 'App Version: 1.0 (Alpha)'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Valken'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object pagNPCs: TTabSheet
      Caption = 'PagNPCS'
      ImageIndex = 4
      TabVisible = False
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 476
        Height = 55
        Align = alTop
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object lblLocationID: TLabel
          Left = 68
          Top = 0
          Width = 92
          Height = 22
          Alignment = taCenter
          Caption = 'Location ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Balthazar'
          Font.Style = []
          ParentFont = False
        end
        object btnNewNPC: TButton
          Left = 232
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Manage'
          TabOrder = 0
          OnClick = btnNewNPCClick
        end
        object btnReloadNpcs: TButton
          Left = 29
          Top = 16
          Width = 25
          Height = 25
          Caption = 'O'
          TabOrder = 1
          OnClick = btnReloadNpcsClick
        end
        object edtLocationID: TEdit
          Left = 68
          Top = 28
          Width = 92
          Height = 21
          TabOrder = 2
          Text = 'ID'
        end
      end
      object scrlbxNPCs: TScrollBox
        Left = 0
        Top = 55
        Width = 476
        Height = 470
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 200
        ExplicitTop = 0
        ExplicitWidth = 484
        ExplicitHeight = 535
      end
    end
    object pagLocations: TTabSheet
      Caption = 'PagLocations'
      ImageIndex = 5
      TabVisible = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 476
        Height = 55
        Align = alTop
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = -6
        DesignSize = (
          476
          55)
        object btnNewLocation: TButton
          Left = 80
          Top = 16
          Width = 75
          Height = 25
          Anchors = [akTop]
          Caption = 'Manage'
          TabOrder = 0
          OnClick = btnNewLocationClick
        end
        object btnReloadLocations: TButton
          Left = 29
          Top = 16
          Width = 25
          Height = 25
          Anchors = [akLeft]
          Caption = 'O'
          TabOrder = 1
          OnClick = btnReloadLocationsClick
        end
      end
      object sclbxLocations: TScrollBox
        Left = 0
        Top = 55
        Width = 476
        Height = 470
        Align = alClient
        TabOrder = 1
      end
    end
    object pagQuests: TTabSheet
      Caption = 'PagQuests'
      ImageIndex = 6
      TabVisible = False
      ExplicitLeft = 1
      ExplicitTop = 10
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 476
        Height = 55
        Align = alTop
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = 8
        DesignSize = (
          476
          55)
        object btnManageQuests: TButton
          Left = 80
          Top = 16
          Width = 75
          Height = 25
          Anchors = [akTop]
          Caption = 'Manage'
          TabOrder = 0
          OnClick = btnManageQuestsClick
        end
        object btnReloadQuests: TButton
          Left = 29
          Top = 16
          Width = 25
          Height = 25
          Anchors = [akLeft]
          Caption = 'O'
          TabOrder = 1
          OnClick = btnReloadQuestsClick
        end
      end
      object scrlbxQuests: TScrollBox
        Left = 0
        Top = 55
        Width = 476
        Height = 470
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 248
        ExplicitTop = 256
        ExplicitWidth = 185
        ExplicitHeight = 41
      end
    end
  end
  object scrlbx_Menu: TScrollBox
    Left = 0
    Top = 0
    Width = 200
    Height = 535
    Align = alLeft
    Color = clHotLight
    ParentColor = False
    TabOrder = 1
    object lbl_Menu: TLabel
      Left = 0
      Top = 0
      Width = 196
      Height = 19
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alTop
      Alignment = taCenter
      Caption = 'Menu'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 40
    end
    object btn_Notes: TSpeedButton
      AlignWithMargins = True
      Left = 5
      Top = 69
      Width = 186
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Story Notes'
      OnClick = btn_NotesClick
      ExplicitTop = 114
    end
    object btn_NPCs: TSpeedButton
      AlignWithMargins = True
      Left = 5
      Top = 159
      Width = 186
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'NPCs'
      OnClick = btn_NPCsClick
      ExplicitLeft = 0
      ExplicitTop = 19
      ExplicitWidth = 196
    end
    object btn_Battle: TSpeedButton
      AlignWithMargins = True
      Left = 5
      Top = 24
      Width = 186
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Battle Mode'
      OnClick = btn_BattleClick
      ExplicitLeft = 4
      ExplicitTop = 61
    end
    object btn_Players: TSpeedButton
      AlignWithMargins = True
      Left = 5
      Top = 114
      Width = 186
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Players'
      OnClick = btn_PlayersClick
      ExplicitLeft = 0
      ExplicitTop = 19
      ExplicitWidth = 196
    end
    object btn_Villages: TSpeedButton
      AlignWithMargins = True
      Left = 5
      Top = 204
      Width = 186
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Locations'
      OnClick = btn_VillagesClick
      ExplicitLeft = 4
    end
    object btn_Quests: TSpeedButton
      AlignWithMargins = True
      Left = 5
      Top = 249
      Width = 186
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Quests'
      OnClick = btn_QuestsClick
      ExplicitLeft = 0
      ExplicitTop = 19
      ExplicitWidth = 196
    end
  end
end
