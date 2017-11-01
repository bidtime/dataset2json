unit uDmCarGoods;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DBClient, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait, uCommEvents,
  FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Datasnap.Provider;

type
  TdmCarGoods = class(TDataModule)
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure commit;
    procedure rollback;
    procedure startTransaction;
    //function updateCarGoodsNo(const carGoodsId: integer; const orgId: integer): LongInt;
    procedure openSql(const S: string);
    procedure convertToSql(const dataSet: TDataSet; const useBatch: boolean;
      ev:TRowNextEvent=nil; logs: TStrings = nil);
  end;

var
  dmCarGoods: TdmCarGoods;

implementation

uses Forms, uDmBase, variants;

{$R *.dfm}

procedure TdmCarGoods.commit;
begin
  DmBase.commit;
end;

procedure TdmCarGoods.convertToSql(const dataSet: TDataSet; const useBatch: boolean;
  ev: TRowNextEvent; logs: TStrings);
begin

end;

procedure TdmCarGoods.openSql(const S: string);
begin
  self.FDQuery1.Close;
  self.FDQuery1.Open(S);
end;

procedure TdmCarGoods.rollback;
begin
  DmBase.rollback;
end;

procedure TdmCarGoods.startTransaction;
begin
  DmBase.StartTransaction;
end;

end.
