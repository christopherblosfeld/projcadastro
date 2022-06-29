unit cadcidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmCidade = class(TForm)
    lookupEstado: TDBLookupComboBox;
    btnGravar: TButton;
    FDQryInsUp: TFDQuery;
    FDQEstado: TFDQuery;
    SourceEstado: TDataSource;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    txtCidade: TEdit;
    txtIbge: TEdit;
    FDQryCheck: TFDQuery;
    procedure btnGravarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure limpar;
  public
    { Public declarations }
  end;

var
  frmCidade: TfrmCidade;

implementation

{$R *.dfm}

uses unfuncoes;

procedure TfrmCidade.btnGravarClick(Sender: TObject);
var checkbdcidade, checkcidadetxt: string;
var checkbdIbge, checkibgetxt: String;
begin
    if txtCidade.Text = '' then
      begin
        showMessage('Digite o campo Cidade !!');
        Exit;
      end;

     if txtIbge.Text = '' then
       begin
        showMessage('Digite o campo IBGE !!');
        Exit;
       end;

     if lookupestado.KeyValue = null then
      begin
        showMessage('Selecione o Estado Desejado !!');
        Exit;
      end;

     //Filtra o Nome da Ocupacao se ja existe
  FDQryCheck.Close;
  FDQryCheck.SQL.Clear;
  FDQryCheck.SQL.ADD('select nomecidade, ibge from cidade where nomecidade = :nomecidade and ibge = :ibge');
  FDQryCheck.ParamByName('nomecidade').AsString := txtCidade.Text;
  FDQryCheck.ParamByName('ibge').AsString := txtIbge.Text;
  FDQryCheck.Open;

  //Atribui valor as variaveis

    checkbdcidade := FDQryCheck.FieldByName('nomecidade').AsString;
    checkcidadetxt := txtCidade.Text;
    checkbdIBGE   := FDQryCheck.FieldByName('ibge').AsString;
    checkibgetxt   := txtIbge.Text;

    if (checkbdcidade = checkcidadetxt) then
      begin
        showMessage('A cidade digitada já existe!');
        FDQryCheck.Close;
        FDQryCheck.SQL.Clear;
        txtCidade.Text := '';
      end;

    if (checkbdibge = checkibgetxt) then
      begin
        showMessage('Código IBGE já está sendo usado, use outro.');
        FDQryCheck.Close;
        FDQryCheck.SQL.Clear;
        txtIbge.Text := '';
      end;


  //Insere Dados na tabela cidade
  FDQryInsUp.Close;
  FDQryInsUp.SQl.Clear;
  FDQryInsUp.Sql.Add('insert into cidade (nomecidade, idestado, ibge) values (:nomecidade, :idestado, :ibge)');
  FDQryInsUp.ParamByName('nomecidade').AsString := txtCidade.Text;
  FDQryInsUp.ParamByName('idestado').AsInteger := lookupestado.KeyValue;
  FDQryInsUp.ParamByName('ibge').AsString := txtIbge.Text;
  FDQryInsUp.ExecSQL;
  showMessage('Sucesso ao Gravar');
  limpar;

end;

procedure TfrmCidade.Button1Click(Sender: TObject);
begin
SourceEstado.DataSet.Refresh;

end;

procedure TfrmCidade.FormShow(Sender: TObject);
begin
FDQEstado.Close;
FDQEstado.Open;
end;

procedure TfrmCidade.limpar;
begin
txtCidade.Text := '';
txtIbge.Text := '';
lookupestado.KeyValue := null;
end;
end.
