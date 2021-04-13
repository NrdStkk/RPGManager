object FormListEnemy: TFormListEnemy
  Left = 0
  Top = 0
  Caption = 'Add Enemy'
  ClientHeight = 437
  ClientWidth = 472
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 57
    Align = alTop
    TabOrder = 0
    object btn_AddEnemy: TButton
      Left = 16
      Top = 17
      Width = 75
      Height = 25
      Caption = 'New Enemy'
      TabOrder = 0
      OnClick = btn_AddEnemyClick
    end
  end
  object dbg_Enemies: TDBGrid
    Left = 0
    Top = 57
    Width = 472
    Height = 380
    Align = alClient
    DataSource = DM.DSEnemies
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbg_EnemiesDblClick
  end
end
