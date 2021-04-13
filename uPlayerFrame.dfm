object PlayerFrame: TPlayerFrame
  Left = 0
  Top = 0
  Width = 526
  Height = 451
  TabOrder = 0
  object DBText4: TDBText
    Left = 80
    Top = 165
    Width = 97
    Height = 28
    AutoSize = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Balthazar'
    Font.Style = []
    ParentFont = False
  end
  object pnlPlayer: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 451
    Align = alClient
    Color = clCream
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      526
      451)
    object lblPlayer: TLabel
      Left = 16
      Top = 46
      Width = 50
      Height = 25
      Caption = 'Player'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
    end
    object lblAC: TLabel
      Left = 268
      Top = 67
      Width = 36
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'AC:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 257
    end
    object lblHPval: TLabel
      Left = 418
      Top = 67
      Width = 25
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'val'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 407
    end
    object lblACval: TLabel
      Left = 310
      Top = 67
      Width = 25
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'val'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 299
    end
    object lblHP: TLabel
      Left = 373
      Top = 67
      Width = 39
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'HP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 362
    end
    object lblLVL: TLabel
      Left = 418
      Top = 11
      Width = 39
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'Lvl:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 432
    end
    object lblSTR: TLabel
      Left = 9
      Top = 123
      Width = 57
      Height = 28
      Anchors = [akLeft]
      Caption = 'STR:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDEX: TLabel
      Left = 8
      Top = 157
      Width = 58
      Height = 28
      Anchors = [akLeft]
      Caption = 'DEX:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCON: TLabel
      Left = 15
      Top = 191
      Width = 51
      Height = 28
      Anchors = [akLeft]
      Caption = 'CON:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblINT: TLabel
      Left = 16
      Top = 225
      Width = 50
      Height = 28
      Anchors = [akLeft]
      Caption = 'INT:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblWIS: TLabel
      Left = 9
      Top = 259
      Width = 57
      Height = 28
      Anchors = [akLeft]
      Caption = 'WIS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCHA: TLabel
      Left = 13
      Top = 293
      Width = 53
      Height = 28
      Anchors = [akLeft]
      Caption = 'CHA:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblComingSoon: TLabel
      Left = 293
      Top = 259
      Width = 125
      Height = 28
      Anchors = [akRight, akBottom]
      Caption = 'Coming Soon'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 307
    end
    object lblSTRval: TLabel
      Left = 72
      Top = 123
      Width = 25
      Height = 28
      Anchors = [akLeft]
      Caption = 'val'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
    end
    object lblDEXval: TLabel
      Left = 72
      Top = 157
      Width = 25
      Height = 28
      Anchors = [akLeft]
      Caption = 'val'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
    end
    object lblCONval: TLabel
      Left = 72
      Top = 191
      Width = 25
      Height = 28
      Anchors = [akLeft]
      Caption = 'val'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
    end
    object lblINTval: TLabel
      Left = 72
      Top = 225
      Width = 25
      Height = 28
      Anchors = [akLeft]
      Caption = 'val'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
    end
    object lblWISval: TLabel
      Left = 72
      Top = 259
      Width = 25
      Height = 28
      Anchors = [akLeft]
      Caption = 'val'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
    end
    object lblCHAval: TLabel
      Left = 72
      Top = 293
      Width = 25
      Height = 28
      Anchors = [akLeft]
      Caption = 'val'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
    end
    object lblLVLval: TLabel
      Left = 463
      Top = 11
      Width = 25
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'val'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 477
    end
    object lblClass: TLabel
      Left = 250
      Top = 11
      Width = 49
      Height = 28
      Anchors = [akTop]
      Caption = 'Class'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 257
    end
    object lblName: TLabel
      Left = 17
      Top = 8
      Width = 60
      Height = 32
      Caption = 'Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Balthazar'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
