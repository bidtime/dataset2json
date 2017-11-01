program dataset2json;

uses
  Vcl.Forms,
  uDmBase in 'src\dm\uDmBase.pas' {dmBase: TDataModule},
  uDmCarGoods in 'src\dm\uDmCarGoods.pas' {dmCarGoods: TDataModule},
  uFrmMain in 'src\uFrmMain.pas' {frmMain},
  uDbConfig in 'src\dm\uDbConfig.pas',
  uDataSetConvertJson in 'src\utils\uDataSetConvertJson.pas',
  uDataSetConvertSql in 'src\utils\uDataSetConvertSql.pas',
  uCommEvents in 'src\utils\uCommEvents.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmBase, dmBase);
  Application.CreateForm(TdmCarGoods, dmCarGoods);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
