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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 316
    Width = 696
    Height = 4
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 108
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 468
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
    Height = 23
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
      Width = 83
      Height = 21
      Caption = 'ResultDTO'
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 320
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
    Top = 472
    Width = 696
    Height = 129
    Align = alClient
    ScrollBars = ssHorizontal
    TabOrder = 2
  end
  object memoSql: TMemo
    Left = 0
    Top = 217
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
  object Panel1: TPanel
    Left = 0
    Top = 23
    Width = 696
    Height = 194
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 4
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 688
      Height = 186
      Align = alClient
      Caption = 'DB '#36830#25509#23646#24615
      TabOrder = 0
      object Label9: TLabel
        Left = 23
        Top = 154
        Width = 46
        Height = 13
        Caption = 'password'
      end
      object Label8: TLabel
        Left = 23
        Top = 126
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
        Top = 22
        Width = 36
        Height = 13
        Caption = 'charset'
      end
      object Label4: TLabel
        Left = 21
        Top = 102
        Width = 45
        Height = 13
        Caption = 'database'
      end
      object Button2: TButton
        Left = 361
        Top = 96
        Width = 75
        Height = 25
        Caption = #20445#23384#36830#25509
        TabOrder = 0
        OnClick = Button2Click
      end
      object edtPort: TEdit
        Left = 108
        Top = 72
        Width = 241
        Height = 21
        TabOrder = 1
        Text = 'edtPort'
      end
      object cbxCharset: TComboBox
        Left = 284
        Top = 19
        Width = 65
        Height = 21
        TabOrder = 2
        Text = 'utf8'
        Items.Strings = (
          'utf8')
      end
      object edtUserName: TEdit
        Left = 108
        Top = 124
        Width = 241
        Height = 21
        TabOrder = 3
        Text = 'userName'
      end
      object edtPassword: TEdit
        Left = 108
        Top = 151
        Width = 241
        Height = 21
        TabOrder = 4
        Text = 'password'
      end
      object Button1: TButton
        Left = 361
        Top = 43
        Width = 75
        Height = 25
        Caption = #27979#35797#36830#25509
        TabOrder = 5
        OnClick = Button1Click
      end
    end
  end
  object Memo1: TMemo
    Left = 452
    Top = 46
    Width = 227
    Height = 153
    Color = clBtnFace
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    TabOrder = 5
  end
  object cbxDriverId: TComboBox
    Left = 112
    Top = 46
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
    Left = 112
    Top = 72
    Width = 241
    Height = 21
    TabOrder = 7
    Text = 'edtServer'
  end
  object edtDatabase: TEdit
    Left = 112
    Top = 125
    Width = 241
    Height = 21
    TabOrder = 8
    Text = 'edtDatabase'
  end
end
