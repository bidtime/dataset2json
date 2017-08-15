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
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uDmCarGoods;

{$R *.dfm}

procedure TfrmMain.ToolButton1Click(Sender: TObject);
begin
  DmCarGoods.openSql(self.memoSql.Text);
end;

procedure TfrmMain.ToolButton2Click(Sender: TObject);
begin
  self.memoJson.Text := DmCarGoods.toJson(DmCarGoods.FDQuery1, cbxResultDTO.Checked);
end;

end.
