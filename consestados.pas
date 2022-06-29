unit consestados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsEst = class(TForm)
    DBGrid1: TDBGrid;
    FDQryCheck: TFDQuery;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    btnCancelar: TButton;
    btnGravar: TButton;
    lbContEst: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsEst: TfrmConsEst;

implementation

{$R *.dfm}

uses telainicial;

procedure TfrmConsEst.btnCancelarClick(Sender: TObject);
begin
FDQryCheck.Close;
FDQryCheck.SQL.Clear;
end;

procedure TfrmConsEst.btnGravarClick(Sender: TObject);
begin
FDQryCheck.Close;
FDQryCheck.SQL.Clear;
FDQryCheck.SQL.ADD('select idestado, nomeestado, uf from estado');
FDQryCheck.SQL.Add('group by idestado');
FDQryCheck.Open;
lbContEst.Caption := 'Qtde de Estados Cadastrados: ' + intToStr(FDQryCheck.RecordCount);

end;

procedure TfrmConsEst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
lbContEst.Caption := '';
end;

procedure TfrmConsEst.FormShow(Sender: TObject);
begin
FDQryCheck.Close;
FDQryCheck.SQL.Clear;
end;

end.
