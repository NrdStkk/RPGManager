object NPCFrame: TNPCFrame
  Left = 0
  Top = 0
  Width = 459
  Height = 131
  TabOrder = 0
  object pnlBackground: TPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 131
    Align = alClient
    Color = clCream
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 144
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lblName: TLabel
      Left = 16
      Top = 8
      Width = 50
      Height = 28
      Alignment = taCenter
      Caption = 'Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
    end
    object lblFunction: TLabel
      Left = 16
      Top = 42
      Width = 73
      Height = 28
      Alignment = taCenter
      Caption = 'Function'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
    end
    object lblLocation: TLabel
      Left = 16
      Top = 76
      Width = 73
      Height = 28
      Alignment = taCenter
      Caption = 'Location'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
    end
    object mmoDescr: TMemo
      Left = 240
      Top = 8
      Width = 209
      Height = 113
      Enabled = False
      Lines.Strings = (
        'mmoDescr')
      TabOrder = 0
    end
  end
end
