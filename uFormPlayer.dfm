object FormPlayer: TFormPlayer
  Left = 0
  Top = 0
  Anchors = []
  Caption = 'Player Form'
  ClientHeight = 235
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    489
    235)
  PixelsPerInch = 96
  TextHeight = 13
  object lblPlayerName: TLabel
    Left = 128
    Top = 8
    Width = 110
    Height = 21
    Anchors = [akTop]
    Caption = 'Player Name:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object lbl_AC: TLabel
    Left = 64
    Top = 90
    Width = 27
    Height = 21
    Anchors = [akLeft]
    Caption = 'AC:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 93
  end
  object lbl_HP: TLabel
    Left = 64
    Top = 64
    Width = 27
    Height = 21
    Anchors = [akLeft]
    Caption = 'HP:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 66
  end
  object lbl_STR: TLabel
    Left = 186
    Top = 63
    Width = 37
    Height = 21
    Anchors = [akRight]
    Caption = 'STR:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object lbl_DEX: TLabel
    Left = 183
    Top = 90
    Width = 40
    Height = 21
    Anchors = [akRight]
    Caption = 'DEX:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 168
    ExplicitTop = 93
  end
  object lbl_CON: TLabel
    Left = 182
    Top = 117
    Width = 41
    Height = 21
    Anchors = [akRight]
    Caption = 'CON:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 167
    ExplicitTop = 120
  end
  object lbl_INT: TLabel
    Left = 315
    Top = 64
    Width = 34
    Height = 21
    Anchors = [akRight]
    Caption = 'INT:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 300
    ExplicitTop = 66
  end
  object lbl_WIS: TLabel
    Left = 312
    Top = 90
    Width = 37
    Height = 21
    Anchors = [akRight]
    Caption = 'WIS:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 297
    ExplicitTop = 93
  end
  object lbl_CHA: TLabel
    Left = 310
    Top = 117
    Width = 39
    Height = 21
    Anchors = [akRight]
    Caption = 'CHA:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 295
    ExplicitTop = 120
  end
  object lblLVL: TLabel
    Left = 62
    Top = 116
    Width = 29
    Height = 21
    Anchors = [akLeft]
    Caption = 'Lvl:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 120
  end
  object lblCampaing: TLabel
    Left = 260
    Top = 172
    Width = 89
    Height = 21
    Anchors = [akLeft]
    Caption = 'Campaing:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object dbePlayerName: TDBEdit
    Left = 247
    Top = 8
    Width = 105
    Height = 21
    Anchors = [akTop]
    DataField = 'name'
    DataSource = DM.DSPlayers
    TabOrder = 0
    ExplicitLeft = 238
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 192
    Width = 210
    Height = 25
    DataSource = DM.DSPlayers
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost]
    Anchors = [akLeft, akBottom]
    TabOrder = 1
    ExplicitTop = 198
  end
  object dbe_AC: TDBEdit
    Left = 97
    Top = 90
    Width = 48
    Height = 21
    Anchors = [akLeft]
    DataField = 'ac'
    DataSource = DM.DSPlayers
    TabOrder = 2
  end
  object dbe_HP: TDBEdit
    Left = 97
    Top = 63
    Width = 48
    Height = 21
    Anchors = [akLeft]
    DataField = 'health'
    DataSource = DM.DSPlayers
    TabOrder = 3
  end
  object dbe_STR: TDBEdit
    Left = 229
    Top = 63
    Width = 54
    Height = 21
    Anchors = [akRight]
    DataField = 'str'
    DataSource = DM.DSPlayers
    TabOrder = 4
  end
  object dbe_DEX: TDBEdit
    Left = 229
    Top = 90
    Width = 54
    Height = 21
    Anchors = [akRight]
    DataField = 'dex'
    DataSource = DM.DSPlayers
    TabOrder = 5
    ExplicitLeft = 214
    ExplicitTop = 93
  end
  object dbe_CON: TDBEdit
    Left = 229
    Top = 117
    Width = 54
    Height = 21
    Anchors = [akRight]
    DataField = 'con'
    DataSource = DM.DSPlayers
    TabOrder = 6
    ExplicitLeft = 214
    ExplicitTop = 120
  end
  object dbe_INT: TDBEdit
    Left = 355
    Top = 64
    Width = 51
    Height = 21
    Anchors = [akRight]
    DataField = 'int'
    DataSource = DM.DSPlayers
    TabOrder = 7
    ExplicitLeft = 340
    ExplicitTop = 66
  end
  object dbe_WIS: TDBEdit
    Left = 355
    Top = 90
    Width = 51
    Height = 21
    Anchors = [akRight]
    DataField = 'wis'
    DataSource = DM.DSPlayers
    TabOrder = 8
    ExplicitLeft = 340
    ExplicitTop = 93
  end
  object dbe_CHA: TDBEdit
    Left = 355
    Top = 117
    Width = 51
    Height = 21
    Anchors = [akRight]
    DataField = 'cha'
    DataSource = DM.DSPlayers
    TabOrder = 9
    ExplicitLeft = 340
    ExplicitTop = 120
  end
  object dbeLVL: TDBEdit
    Left = 97
    Top = 117
    Width = 48
    Height = 21
    Anchors = [akLeft]
    DataField = 'level'
    DataSource = DM.DSPlayers
    TabOrder = 10
    ExplicitTop = 109
  end
  object DBEdit1: TDBEdit
    Left = 355
    Top = 174
    Width = 51
    Height = 21
    Anchors = [akRight]
    DataField = 'campaings_id'
    DataSource = DM.DSPlayers
    TabOrder = 11
  end
end
