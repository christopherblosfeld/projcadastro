unit conscidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmConsCidades = class(TForm)
    FDQryCheck: TFDQuery;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    DBGrid1: TDBGrid;
    btnCancelar: TButton;
    btnConsultar: TButton;
    lbqtdeCid: TLabel;
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCidades: TfrmConsCidades;

implementation

{$R *.dfm}

uses telainicial;

procedure TfrmConsCidades.btnCancelarClick(Sender: TObject);
begin
FDQryCheck.Close;
FDQryCheck.SQL.Clear;
lbqtdeCid.Caption := '';
end;

procedure TfrmConsCidades.btnConsultarClick(Sender: TObject);
begin
FDQryCheck.Close;
FDQryCheck.SQL.Clear;
FDQryCheck.SQL.Add('select cid.idcidade, cid.nomecidade, cid.ibge, est.nomeestado, est.idestado, est.uf ');
FDQryCheck.SQL.Add('from cidade cid');
FDQryCheck.SQL.Add('inner join estado est on est.idestado=cid.idestado');
FDQryCheck.SQL.Add('group by cid.idcidade');
FDQryCheck.Open;
lbqtdeCid.Caption := 'Quantidade de cidades cadastradas: ' + intToStr(FDQryCheck.RecordCount);
end;

procedure TfrmConsCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
lbqtdeCid.Caption := '';
end;

procedure TfrmConsCidades.FormShow(Sender: TObject);
begin
FDQryCheck.Close;
FDQryCheck.SQL.Clear;
end;

end.
