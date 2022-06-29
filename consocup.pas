unit consocup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Datasnap.Provider, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmConsOcup = class(TForm)
    FDQryCheck: TFDQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    btnCancelar: TButton;
    btnConsultar: TButton;
    lbcont: TLabel;
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsOcup: TfrmConsOcup;

implementation

{$R *.dfm}

uses telainicial;

procedure TfrmConsOcup.btnCancelarClick(Sender: TObject);
begin
FDQryCheck.Close;
FDQrycheck.SQL.Clear;
lbcont.Caption := '';
end;

procedure TfrmConsOcup.btnConsultarClick(Sender: TObject);
begin
FDQryCheck.Close;
FDQrycheck.SQL.Clear;
FDQryCheck.SQL.Add('select idocupacao, ocupacaonome from ocupacao');
FDQryCheck.open;
lbcont.Caption := 'Nº Ocp Cad: ' + intToStr(FDQryCheck.RecordCount);

end;

procedure TfrmConsOcup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FDQryCheck.Close;
FDQrycheck.SQL.Clear;
lbcont.Caption := '';
end;

end.
