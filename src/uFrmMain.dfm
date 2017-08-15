object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = #20027#31383#21475
  ClientHeight = 601
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 121
    Width = 696
    Height = 4
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 108
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 273
    Width = 696
    Height = 4
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 249
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 696
    Height = 22
    ButtonHeight = 21
    ButtonWidth = 79
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      AlignWithMargins = True
      Left = 0
      Top = 0
      Caption = 'open'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton3: TToolButton
      Left = 79
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      AlignWithMargins = True
      Left = 87
      Top = 0
      Caption = 'dataSetToJson'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton4: TToolButton
      Left = 166
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object cbxResultDTO: TCheckBox
      Left = 174
      Top = 0
      Width = 75
      Height = 21
      Caption = 'ResultDTO'
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 125
    Width = 696
    Height = 148
    Align = alTop
    DataSource = dmCarGoods.DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object memoJson: TMemo
    Left = 0
    Top = 277
    Width = 696
    Height = 324
    Align = alClient
    ScrollBars = ssHorizontal
    TabOrder = 2
  end
  object memoSql: TMemo
    Left = 0
    Top = 22
    Width = 696
    Height = 99
    Align = alTop
    Lines.Strings = (
      'select'
      ''
      '* '
      ''
      'from a_brand')
    TabOrder = 3
  end
end
