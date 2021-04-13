object QuestFrame: TQuestFrame
  Left = 0
  Top = 0
  Width = 464
  Height = 120
  TabOrder = 0
  object pnlBackground: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 120
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 288
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 41
    DesignSize = (
      464
      120)
    object lblActive: TLabel
      Left = 332
      Top = 57
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
      ExplicitLeft = 357
    end
    object lblCompleted: TLabel
      Left = 292
      Top = 84
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
      ExplicitLeft = 315
    end
    object lblName: TLabel
      Left = 3
      Top = 8
      Width = 134
      Height = 27
      Anchors = [akTop]
      Caption = 'Quest Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'RowdyHeavy'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 8
    end
    object lblReward: TLabel
      Left = 220
      Top = 14
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
      ExplicitLeft = 237
    end
    object ckbxActive: TCheckBox
      Left = 432
      Top = 61
      Width = 17
      Height = 17
      Enabled = False
      TabOrder = 0
    end
    object ckbxCompleted: TCheckBox
      Left = 432
      Top = 84
      Width = 17
      Height = 17
      Enabled = False
      TabOrder = 1
    end
    object mmoDesc: TMemo
      Left = 3
      Top = 41
      Width = 265
      Height = 66
      Enabled = False
      Lines.Strings = (
        'mmoDesc')
      TabOrder = 2
    end
    object mmoReward: TMemo
      Left = 311
      Top = 14
      Width = 145
      Height = 22
      Enabled = False
      Lines.Strings = (
        'mmoDesc')
      TabOrder = 3
    end
  end
end
