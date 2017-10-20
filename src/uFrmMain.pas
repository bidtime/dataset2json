unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Data.DB,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.VCLUI.Memo, uDbConfig;

type
  TfrmMain = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    ToolButton3: TToolButton;
    cbxResultDTO: TCheckBox;
    ToolButton4: TToolButton;
    GroupBox1: TGroupBox;
    btnSaveDbInfo: TButton;
    Label9: TLabel;
    Label8: TLabel;
    serverLabel: TLabel;
    Label2: TLabel;
    cbxDriverId: TComboBox;
    edtServer: TEdit;
    edtPort: TEdit;
    Label1: TLabel;
    cbxCharset: TComboBox;
    edtUserName: TEdit;
    edtPassword: TEdit;
    Label3: TLabel;
    edtDatabase: TEdit;
    Label4: TLabel;
    btnTestDbInfo: TButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    cbxBatchSql: TCheckBox;
    ToolButton7: TToolButton;
    FDGUIxFormsMemoSql: TFDGUIxFormsMemo;
    FDGUIxFormsMemoResult: TFDGUIxFormsMemo;
    FDGUIxFormsMemo1: TFDGUIxFormsMemo;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveDbInfoClick(Sender: TObject);
    procedure btnTestDbInfoClick(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure dbInfoToCtrls(const u: TDbConfig);
    procedure dbInfoToCtrls_auto();
    procedure ctrsToDbInfo(var u: TDbConfig);
    procedure dbTestOrSaveCfg(const bSave: boolean=false);
    function getPath: string;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uDmCarGoods, uDmBase, uDataSetConvertSql, uDataSetConvertJson;

{$R *.dfm}

function TfrmMain.getPath: string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

procedure TfrmMain.btnTestDbInfoClick(Sender: TObject);
begin
  dbTestOrSaveCfg(false);
end;

procedure TfrmMain.btnSaveDbInfoClick(Sender: TObject);
begin
  dbTestOrSaveCfg(true);
end;

procedure TfrmMain.dbInfoToCtrls(const u: TDbConfig);
begin
  try
    self.cbxDriverId.Text := u.driverId;
    self.cbxCharset.Text := u.CharacterSet;
    self.edtServer.Text := u.Server;
    self.edtPort.Text := u.Port;
    self.edtDatabase.Text := u.database;
    self.edtUserName.Text := u.User_Name;
    self.edtPassword.Text := u.password;
  finally
  end;
end;

procedure TfrmMain.dbInfoToCtrls_auto;
var u: TDbConfig;
begin
  u := TDbConfig.Create;
  try
    dmBase.LoadConfig(u);
    self.dbInfoToCtrls(u);
  finally
    u.Free;
  end;
end;

procedure TfrmMain.dbTestOrSaveCfg(const bSave: boolean);
var u: TDbConfig;
begin
  u := TDbConfig.Create;
  try
    ctrsToDbInfo(u);
    //
    FDGUIxFormsMemo1.Show;
    self.FDGUIxFormsMemo1.Lines.Text := u.toConfig;
    Application.ProcessMessages;
    //
    if not bSave then begin
      DmBase.Connection(u.toConfig, true, true);
    end else begin
      DmBase.SaveConfig(u);
    end;
  finally
    u.Free;
  end;
end;

procedure TfrmMain.ctrsToDbInfo(var u: TDbConfig);
begin
  try
    u.driverId := self.cbxDriverId.Text;
    u.CharacterSet := self.cbxCharset.Text;
    u.Server := self.edtServer.Text;
    u.Port := self.edtPort.Text;
    u.database := self.edtDatabase.Text;
    u.User_Name := self.edtUserName.Text;
    u.password := self.edtPassword.Text;
  finally
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  if FileExists(self.getPath() + 'my.sql') then begin
    self.FDGUIxFormsMemoSql.Lines.LoadFromFile(self.getPath() + 'my.sql');
  end else begin
  end;
  dbInfoToCtrls_auto();
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  self.FDGUIxFormsMemoSql.Lines.SaveToFile(self.getPath() + 'my.sql', TEncoding.UTF8);
end;

procedure TfrmMain.ToolButton1Click(Sender: TObject);
begin
  DmCarGoods.openSql(self.FDGUIxFormsMemoSql.Text);
end;

procedure TfrmMain.ToolButton2Click(Sender: TObject);
begin
  self.FDGUIxFormsMemoResult.Text := TDataSetConvertJson.convert(DmCarGoods.FDQuery1, cbxResultDTO.Checked);
end;

procedure TfrmMain.ToolButton7Click(Sender: TObject);
begin
  self.FDGUIxFormsMemoResult.Text := TDataSetConvertSql.convert(DmCarGoods.FDQuery1, self.cbxBatchSql.Checked);
end;

end.
