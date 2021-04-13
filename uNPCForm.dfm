object NPCForm: TNPCForm
  Left = 0
  Top = 0
  Caption = 'NPC Form'
  ClientHeight = 222
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    424
    222)
  PixelsPerInch = 96
  TextHeight = 13
  object lblName: TLabel
    Left = 46
    Top = 8
    Width = 91
    Height = 21
    Anchors = [akTop]
    Caption = 'NPC Name:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object lblDesc: TLabel
    Left = 49
    Top = 35
    Width = 88
    Height = 21
    Anchors = [akTop]
    Caption = 'NPC Desc.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object lblFunction: TLabel
    Left = 23
    Top = 78
    Width = 89
    Height = 21
    Anchors = [akTop]
    Caption = 'Function:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object lblLocation: TLabel
    Left = 23
    Top = 140
    Width = 87
    Height = 21
    Anchors = [akTop]
    Caption = 'Location:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object dbeName: TDBEdit
    Left = 159
    Top = 8
    Width = 257
    Height = 21
    DataField = 'name'
    DataSource = DM.DSNPCs
    TabOrder = 0
  end
  object dbmDesc: TDBMemo
    Left = 159
    Top = 35
    Width = 257
    Height = 150
    DataField = 'descr'
    DataSource = DM.DSNPCs
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 206
    Top = 191
    Width = 210
    Height = 25
    DataSource = DM.DSNPCs
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost]
    Anchors = [akLeft, akBottom]
    TabOrder = 2
  end
  object dbeFunction: TDBEdit
    Left = 23
    Top = 105
    Width = 89
    Height = 21
    DataField = 'function'
    DataSource = DM.DSNPCs
    TabOrder = 3
  end
  object dbeLocation: TDBEdit
    Left = 23
    Top = 167
    Width = 89
    Height = 21
    DataField = 'locations_id'
    DataSource = DM.DSNPCs
    TabOrder = 4
  end
end
