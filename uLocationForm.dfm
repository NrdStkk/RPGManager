object LocationForm: TLocationForm
  Left = 0
  Top = 0
  Caption = 'Location Form'
  ClientHeight = 232
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    434
    232)
  PixelsPerInch = 96
  TextHeight = 13
  object lblName: TLabel
    Left = 4
    Top = 8
    Width = 131
    Height = 21
    Anchors = [akTop]
    Caption = 'Location Name:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 8
  end
  object lblDesc: TLabel
    Left = 4
    Top = 35
    Width = 128
    Height = 21
    Anchors = [akTop]
    Caption = 'Location Desc.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 8
  end
  object lblCampaing: TLabel
    Left = 32
    Top = 96
    Width = 89
    Height = 21
    Anchors = [akTop]
    Caption = 'Campaing:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'RowdyHeavy'
    Font.Style = []
    ParentFont = False
  end
  object dbeLocationName: TDBEdit
    Left = 168
    Top = 8
    Width = 257
    Height = 21
    DataField = 'name'
    DataSource = DM.DSLocations
    TabOrder = 0
  end
  object dbmLocationDesc: TDBMemo
    Left = 168
    Top = 35
    Width = 257
    Height = 150
    DataField = 'desc'
    DataSource = DM.DSLocations
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 215
    Top = 199
    Width = 210
    Height = 25
    DataSource = DM.DSLocations
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost]
    Anchors = [akLeft, akBottom]
    TabOrder = 2
  end
  object dbeCampaing: TDBEdit
    Left = 40
    Top = 123
    Width = 73
    Height = 21
    DataField = 'campaings_id'
    DataSource = DM.DSLocations
    TabOrder = 3
  end
end
