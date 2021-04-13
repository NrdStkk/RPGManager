object BattlerFrame: TBattlerFrame
  Left = 0
  Top = 0
  Width = 457
  Height = 338
  Align = alClient
  TabOrder = 0
  object pnl_BattlerMain: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 338
    Align = alClient
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 0
    object btn_AddEnemy: TButton
      Left = 1
      Top = 312
      Width = 455
      Height = 25
      Align = alBottom
      Caption = 'Add Enemy'
      TabOrder = 0
      OnClick = btn_AddEnemyClick
    end
    object btn_ClearEnemy: TButton
      Left = 1
      Top = 287
      Width = 455
      Height = 25
      Margins.Left = 150
      Align = alBottom
      Caption = 'Clear Enemies'
      TabOrder = 1
    end
  end
end
