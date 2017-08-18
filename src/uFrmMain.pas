unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Data.DB,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmMain = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    memoJson: TMemo;
    Splitter2: TSplitter;
    memoSql: TMemo;
    ToolButton3: TToolButton;
    cbxResultDTO: TCheckBox;
    ToolButton4: TToolButton;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Button2: TButton;
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
    Button1: TButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uDmCarGoods, uDmBase, uDbConfig;

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
var u: TDbConfig;
begin
  u := TDbConfig.Create;
  try
    u.driverId := self.cbxDriverId.Text;
    u.CharacterSet := self.cbxCharset.Text;
    u.Server := self.edtServer.Text;
    u.Port := self.edtPort.Text;
    u.database := self.edtDatabase.Text;
    u.User_Name := self.edtUserName.Text;
    u.password := self.edtPassword.Text;
    DmBase.Connection(u.toConfig, true, true);
  finally
    u.Free;
  end;
  self.Memo1.Lines.Text := DmBase.FDConnection1.Params.Text;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
var u: TDbConfig;
begin
  u := TDbConfig.Create;
  try
    u.driverId := self.cbxDriverId.Text;
    u.CharacterSet := self.cbxCharset.Text;
    u.Server := self.edtServer.Text;
    u.Port := self.edtPort.Text;
    u.database := self.edtDatabase.Text;
    u.User_Name := self.edtUserName.Text;
    u.password := self.edtPassword.Text;
    DmBase.SaveConfig(u);
  finally
    u.Free;
  end;
  self.Memo1.Lines.Text := DmBase.FDConnection1.Params.Text;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var u: TDbConfig;
begin
  u := TDbConfig.Create;
  try
    DmBase.LoadConfig(u);
    self.cbxDriverId.Text := u.driverId;
    self.cbxCharset.Text := u.CharacterSet;
    self.edtServer.Text := u.Server;
    self.edtPort.Text := u.Port;
    self.edtDatabase.Text := u.database;
    self.edtUserName.Text := u.User_Name;
    self.edtPassword.Text := u.password;
  finally
    u.Free;
  end;
  self.Memo1.Lines.Text := DmBase.FDConnection1.Params.Text;
end;

procedure TfrmMain.ToolButton1Click(Sender: TObject);
begin
  DmCarGoods.openSql(self.memoSql.Text);
end;

procedure TfrmMain.ToolButton2Click(Sender: TObject);
begin
  self.memoJson.Text := DmCarGoods.toJson(DmCarGoods.FDQuery1, cbxResultDTO.Checked);
end;

end.
