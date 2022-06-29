unit cadestado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmCadEstado = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    btnGravar: TButton;
    FDQInsUp: TFDQuery;
    txtEstado: TEdit;
    txtUf: TEdit;
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Limpar;
  public
    { Public declarations }
  end;

var
  frmCadEstado: TfrmCadEstado;

implementation

{$R *.dfm}

uses telainicial;

procedure TfrmCadEstado.btnGravarClick(Sender: TObject);
begin
FDQInsUp.Close;
FDQInsUp.SQL.Clear;
FDQInsUp.SQL.Add('insert into estado (nomeestado, uf) values (:nomeestado, :uf)');
FDQInsUp.ParamByName('nomeestado').AsString := txtEstado.Text;
FDQInsUp.ParamByName('uf').AsString := txtUF.Text;
FDQInsUp.ExecSQL;
showMessage('Estado cadastrado!');
limpar;
end;

procedure TfrmCadEstado.Limpar;
begin
txtEstado.Text := '';
txtUF.Text := '';
end;

end.
