object FormRecordEnemy: TFormRecordEnemy
  Left = 0
  Top = 0
  Caption = 'Inimigo'
  ClientHeight = 226
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    482
    226)
  PixelsPerInch = 96
  TextHeight = 13
  object lblEnemyName: TLabel
    Left = 122
    Top = 8
    Width = 115
    Height = 21
    Anchors = [akTop]
    Caption = 'Enemy Name:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object lbl_AC: TLabel
    Left = 48
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
    ExplicitTop = 88
  end
  object lbl_HP: TLabel
    Left = 48
    Top = 62
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
    ExplicitTop = 61
  end
  object lbl_STR: TLabel
    Left = 156
    Top = 50
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
    Left = 153
    Top = 77
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
  end
  object lbl_CON: TLabel
    Left = 152
    Top = 104
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
  end
  object lbl_INT: TLabel
    Left = 284
    Top = 50
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
  end
  object lbl_WIS: TLabel
    Left = 281
    Top = 77
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
    ExplicitLeft = 298
    ExplicitTop = 75
  end
  object lbl_CHA: TLabel
    Left = 277
    Top = 104
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
    ExplicitLeft = 294
    ExplicitTop = 102
  end
  object lbl_Dmg: TLabel
    Left = 119
    Top = 153
    Width = 105
    Height = 21
    Anchors = [akBottom]
    Caption = 'Damage die:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 125
    ExplicitTop = 148
  end
  object BtnSave: TButton
    Left = 382
    Top = 197
    Width = 75
    Height = 25
    Anchors = [akRight]
    Caption = 'Sair'
    TabOrder = 0
  end
  object dbeEnemyName: TDBEdit
    Left = 238
    Top = 8
    Width = 105
    Height = 21
    Anchors = [akTop]
    DataField = 'name'
    DataSource = DM.DSEnemies
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 198
    Width = 210
    Height = 25
    DataSource = DM.DSEnemies
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost]
    Anchors = [akLeft, akBottom]
    TabOrder = 2
  end
  object dbe_AC: TDBEdit
    Left = 81
    Top = 90
    Width = 48
    Height = 21
    Anchors = [akLeft]
    DataField = 'ac'
    DataSource = DM.DSEnemies
    TabOrder = 3
  end
  object dbe_HP: TDBEdit
    Left = 81
    Top = 62
    Width = 48
    Height = 21
    Anchors = [akLeft]
    DataField = 'health'
    DataSource = DM.DSEnemies
    TabOrder = 4
  end
  object dbe_STR: TDBEdit
    Left = 199
    Top = 50
    Width = 54
    Height = 21
    Anchors = [akRight]
    DataField = 'str'
    DataSource = DM.DSEnemies
    TabOrder = 5
  end
  object dbe_DEX: TDBEdit
    Left = 199
    Top = 77
    Width = 54
    Height = 21
    Anchors = [akRight]
    DataField = 'dex'
    DataSource = DM.DSEnemies
    TabOrder = 6
  end
  object dbe_CON: TDBEdit
    Left = 199
    Top = 104
    Width = 54
    Height = 21
    Anchors = [akRight]
    DataField = 'con'
    DataSource = DM.DSEnemies
    TabOrder = 7
  end
  object dbe_INT: TDBEdit
    Left = 324
    Top = 50
    Width = 51
    Height = 21
    Anchors = [akRight]
    DataField = 'int'
    DataSource = DM.DSEnemies
    TabOrder = 8
  end
  object dbe_WIS: TDBEdit
    Left = 324
    Top = 77
    Width = 51
    Height = 21
    Anchors = [akRight]
    DataField = 'wis'
    DataSource = DM.DSEnemies
    TabOrder = 9
  end
  object dbe_CHA: TDBEdit
    Left = 324
    Top = 104
    Width = 51
    Height = 21
    Anchors = [akRight]
    DataField = 'cha'
    DataSource = DM.DSEnemies
    TabOrder = 10
  end
  object dbe_Dmg: TDBEdit
    Left = 227
    Top = 155
    Width = 51
    Height = 21
    Anchors = [akBottom]
    DataField = 'dmg_dice'
    DataSource = DM.DSEnemies
    TabOrder = 11
  end
end
