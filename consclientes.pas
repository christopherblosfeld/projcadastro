unit consclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.Provider, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Menus;

type
  TfrmConsCliente = class(TForm)
    DBGrid1: TDBGrid;
    DataSetProvider1: TDataSetProvider;
    FDQryCheck: TFDQuery;
    DataSource1: TDataSource;
    btnConsultar: TButton;
    btnCancelar: TButton;
    lbcontcliente: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCliente: TfrmConsCliente;

implementation

{$R *.dfm}

uses telainicial;

procedure TfrmConsCliente.btnCancelarClick(Sender: TObject);
begin
FDQryCheck.Close;
FDQryCheck.Sql.Clear;
lbcontcliente.Caption := '';
end;

procedure TfrmConsCliente.btnConsultarClick(Sender: TObject);
begin
FDQryCheck.Close;
FDQryCheck.SQL.Clear;
FDQryCheck.SQL.Add('select pe.idpessoa, pe.cpf, pe.nome, ocp.ocupacaonome, tel.ddd, tel.numerofone');
FDQryCheck.SQL.Add('from pessoa pe');
FDQryCheck.SQL.Add('inner join ocupacao ocp on ocp.idocupacao=pe.idocupacao');
FDQryCheck.SQL.Add('inner join telefone tel on tel.idpessoa=pe.idpessoa');
FDQryCheck.SQL.Add('group by pe.idpessoa');
FDQryCheck.Open;
lbcontcliente.Caption := 'Quantidade de Clientes Cadastrados: ' + intToStr(FDQryCheck.RecordCount);

end;

procedure TfrmConsCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
lbcontcliente.Caption := '';
end;

procedure TfrmConsCliente.FormShow(Sender: TObject);
begin
FDQryCheck.Close;
FDQryCheck.SQL.Clear;
end;

end.
