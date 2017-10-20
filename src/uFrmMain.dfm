object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = #25968#25454#29983#25104#24037#20855' ver1.2  2017-10-19 by riverbo'
  ClientHeight = 630
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 297
    Width = 895
    Height = 4
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 108
    ExplicitWidth = 696
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 449
    Width = 895
    Height = 4
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 249
    ExplicitWidth = 696
  end
  object ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 889
    Height = 23
    ButtonHeight = 19
    ButtonWidth = 84
    Caption = 'ToolBar1'
    List = True
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      AlignWithMargins = True
      Left = 0
      Top = 0
      Caption = '       open'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton3: TToolButton
      Left = 84
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      AlignWithMargins = True
      Left = 92
      Top = 0
      Caption = 'dataSetToJson'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton4: TToolButton
      Left = 176
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object cbxResultDTO: TCheckBox
      Left = 184
      Top = 0
      Width = 83
      Height = 19
      Caption = 'ResultDTO'
      TabOrder = 0
    end
    object ToolButton5: TToolButton
      Left = 267
      Top = 0
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 275
      Top = 0
      Caption = '     toSql'
      ImageIndex = 4
      OnClick = ToolButton7Click
    end
    object ToolButton6: TToolButton
      Left = 359
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object cbxBatchSql: TCheckBox
      Left = 367
      Top = 0
      Width = 83
      Height = 19
      Caption = 'batch'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 301
    Width = 895
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
  object FDGUIxFormsMemoSql: TFDGUIxFormsMemo
    Left = 0
    Top = 208
    Width = 895
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'select * from a_brand')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    WordWrap = False
    ExplicitLeft = 192
    ExplicitTop = 248
    ExplicitWidth = 185
  end
  object FDGUIxFormsMemoResult: TFDGUIxFormsMemo
    Left = 0
    Top = 453
    Width = 895
    Height = 177
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'Result')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    WordWrap = False
    ExplicitTop = 468
    ExplicitWidth = 779
    ExplicitHeight = 171
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 29
    Width = 895
    Height = 179
    Align = alTop
    Caption = 'DB '#36830#25509#23646#24615
    TabOrder = 4
    ExplicitTop = 23
    object Label9: TLabel
      Left = 23
      Top = 154
      Width = 46
      Height = 13
      Caption = 'password'
    end
    object Label8: TLabel
      Left = 23
      Top = 127
      Width = 48
      Height = 13
      Caption = 'userName'
    end
    object serverLabel: TLabel
      Left = 23
      Top = 50
      Width = 31
      Height = 13
      Caption = 'server'
    end
    object Label2: TLabel
      Left = 23
      Top = 23
      Width = 53
      Height = 13
      Caption = 'driverClass'
    end
    object Label1: TLabel
      Left = 23
      Top = 75
      Width = 20
      Height = 13
      Caption = 'port'
    end
    object Label3: TLabel
      Left = 231
      Top = 23
      Width = 36
      Height = 13
      Caption = 'charset'
    end
    object Label4: TLabel
      Left = 23
      Top = 102
      Width = 45
      Height = 13
      Caption = 'database'
    end
    object btnSaveDbInfo: TButton
      Left = 365
      Top = 96
      Width = 75
      Height = 25
      Caption = #20445#23384#36830#25509
      TabOrder = 0
      OnClick = btnSaveDbInfoClick
    end
    object edtPort: TEdit
      Left = 103
      Top = 71
      Width = 241
      Height = 21
      TabOrder = 1
      Text = 'edtPort'
    end
    object cbxCharset: TComboBox
      Left = 279
      Top = 19
      Width = 65
      Height = 21
      TabOrder = 2
      Text = 'utf8'
      Items.Strings = (
        'utf8')
    end
    object edtUserName: TEdit
      Left = 103
      Top = 124
      Width = 241
      Height = 21
      TabOrder = 3
      Text = 'userName'
    end
    object edtPassword: TEdit
      Left = 103
      Top = 151
      Width = 241
      Height = 21
      PasswordChar = '*'
      TabOrder = 4
      Text = 'password'
    end
    object btnTestDbInfo: TButton
      Left = 365
      Top = 43
      Width = 75
      Height = 25
      Caption = #27979#35797#36830#25509
      TabOrder = 5
      OnClick = btnTestDbInfoClick
    end
    object cbxDriverId: TComboBox
      Left = 103
      Top = 19
      Width = 105
      Height = 21
      ItemIndex = 0
      TabOrder = 6
      Text = 'MySQL'
      Items.Strings = (
        'MySQL'
        'MSSQL'
        'Ora'
        'MSAcc'
        'DB2')
    end
    object edtServer: TEdit
      Left = 103
      Top = 45
      Width = 241
      Height = 21
      TabOrder = 7
      Text = 'edtServer'
    end
    object edtDatabase: TEdit
      Left = 103
      Top = 98
      Width = 241
      Height = 21
      TabOrder = 8
      Text = 'edtDatabase'
    end
    object FDGUIxFormsMemo1: TFDGUIxFormsMemo
      Left = 464
      Top = 18
      Width = 273
      Height = 154
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 9
      Visible = False
      WordWrap = False
    end
  end
end
