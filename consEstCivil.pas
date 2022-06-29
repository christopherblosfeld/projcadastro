unit consEstCivil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmConsEstCivil = class(TForm)
    FDQryCheck: TFDQuery;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    btnCancelar: TButton;
    btnConsultar: TButton;
    lbcont: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsEstCivil: TfrmConsEstCivil;

implementation

{$R *.dfm}

uses telainicial;

procedure TfrmConsEstCivil.btnCancelarClick(Sender: TObject);
begin
FDQryCheck.Close;
FDQryCheck.SQL.Clear;
lbcont.Caption := '';
end;

procedure TfrmConsEstCivil.btnConsultarClick(Sender: TObject);
begin
FDQryCheck.Close;
FDQryCheck.SQL.Clear;
FDQryCheck.SQL.Add('select idestadocivil, estadocivilnome from estadocivil');
FDQryCheck.Open;

lbcont.Caption := 'Qtd EstCivil Cad: ' + intToStr(FDQryCheck.RecordCount);
end;

end.
