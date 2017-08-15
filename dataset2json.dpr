program dataset2json;

uses
  Vcl.Forms,
  uDmCarGoods in 'src\dm\uDmCarGoods.pas' {dmCarGoods: TDataModule},
  uDmBase in 'src\dm\uDmBase.pas' {dmBase: TDataModule},
  uFrmMain in 'src\uFrmMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmCarGoods, dmCarGoods);
  Application.CreateForm(TdmBase, dmBase);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
