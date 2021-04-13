object QuestForm: TQuestForm
  Left = 0
  Top = 0
  Caption = 'Quest Form'
  ClientHeight = 224
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    405
    224)
  PixelsPerInch = 96
  TextHeight = 13
  object lblName: TLabel
    Left = 8
    Top = 8
    Width = 109
    Height = 21
    Anchors = [akTop]
    Caption = 'Quest Name:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object lblDesc: TLabel
    Left = 13
    Top = 64
    Width = 104
    Height = 21
    Anchors = [akTop]
    Caption = 'Description:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object lblReward: TLabel
    Left = 307
    Top = 16
    Width = 68
    Height = 21
    Anchors = [akTop]
    Caption = 'Reward:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 311
  end
  object lblActive: TLabel
    Left = 50
    Top = 192
    Width = 56
    Height = 21
    Anchors = [akTop]
    Caption = 'Active:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 51
  end
  object lblCompleted: TLabel
    Left = 8
    Top = 144
    Width = 98
    Height = 21
    Anchors = [akTop]
    Caption = 'Completed:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object dbeName: TDBEdit
    Left = 123
    Top = 8
    Width = 150
    Height = 21
    DataField = 'name'
    DataSource = DM.DSQuests
    TabOrder = 0
  end
  object dbmDesc: TDBMemo
    Left = 123
    Top = 35
    Width = 150
    Height = 90
    DataField = 'desc'
    DataSource = DM.DSQuests
    TabOrder = 1
  end
  object dbeReward: TDBEdit
    Left = 292
    Top = 43
    Width = 102
    Height = 21
    DataField = 'reward'
    DataSource = DM.DSQuests
    TabOrder = 2
  end
  object dbcCompleted: TDBCheckBox
    Left = 123
    Top = 148
    Width = 14
    Height = 17
    DataField = 'completed'
    DataSource = DM.DSQuests
    TabOrder = 3
  end
  object dbcActive: TDBCheckBox
    Left = 123
    Top = 196
    Width = 14
    Height = 17
    DataField = 'active'
    DataSource = DM.DSQuests
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 189
    Top = 191
    Width = 210
    Height = 25
    DataSource = DM.DSQuests
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost]
    Anchors = [akLeft, akBottom]
    TabOrder = 5
    ExplicitTop = 210
  end
end
