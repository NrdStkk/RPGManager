object LocationFrame: TLocationFrame
  Left = 0
  Top = 0
  Width = 462
  Height = 111
  Anchors = [akTop]
  Color = clHighlightText
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  DesignSize = (
    462
    111)
  object lblName: TLabel
    Left = 200
    Top = 0
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
  object mmoDesc: TMemo
    Left = 0
    Top = 34
    Width = 462
    Height = 77
    Anchors = [akLeft, akRight, akBottom]
    Enabled = False
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object btnDelete: TButton
    Left = 429
    Top = 3
    Width = 30
    Height = 30
    Caption = 'X'
    TabOrder = 1
    OnClick = btnDeleteClick
  end
end
