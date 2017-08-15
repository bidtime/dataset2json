unit uDmBase;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI;

type
  TdmBase = class(TDataModule)
    FDConnection1: TFDConnection;
    GUIxCursor1: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure startTransaction();
    procedure commit();
    procedure rollback();
    function executeSql(const sql: string): LongInt;
  end;

var
  dmBase: TdmBase;

implementation

uses Forms, variants;

{$R *.dfm}

procedure TdmBase.commit;
begin
  FDConnection1.Commit;
end;

procedure TdmBase.DataModuleCreate(Sender: TObject);
//var S: string;
begin
  //S := ExtractFilePath(Application.ExeName) + 'ul_data\';
  //TCDSFileOper.openFile(cds_org, S + 'cpu_org_url.txt');
  FDConnection1.Connected := true;
end;

procedure TdmBase.rollback;
begin
  self.FDConnection1.rollback;
end;

procedure TdmBase.startTransaction;
begin
  self.FDConnection1.StartTransaction
end;

function TDmBase.executeSql(const sql: string): LongInt;
begin
  Result := FDConnection1.ExecSQL(sql);
end;

{
Database=main_58
User_Name=sa
Password=123
Server=192.168.1.253
CharacterSet=utf8
DriverID=MySQL
}

{
Database=main
User_Name=pch_you_know135
Password=oewijhdgRax29@nothing.com
Server=101.200.157.7
CharacterSet=utf8
DriverID=MySQL
}

end.
