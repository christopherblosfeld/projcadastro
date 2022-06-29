unit cadcliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, Datasnap.Provider;

type
  TfrmCadCliente = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SourceOcupacao: TDataSource;
    FDQryInsUp: TFDQuery;
    txtEstCivil: TDBLookupComboBox;
    Label10: TLabel;
    btnGravar: TButton;
    FDQryCheck: TFDQuery;
    Label11: TLabel;
    fdqEstCivil: TFDQuery;
    SourceEstCivil: TDataSource;
    txtCidade: TDBLookupComboBox;
    txtEstado: TDBLookupComboBox;
    FDQcidade: TFDQuery;
    SourceCidade: TDataSource;
    FDQEstado: TFDQuery;
    SourceEstado: TDataSource;
    FDQOcup: TFDQuery;
    txtddd: TEdit;
    txtcel: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    btnCancelar: TButton;
    txtNome: TEdit;
    txtCpf: TEdit;
    txtRg: TEdit;
    txtCep: TEdit;
    txtlogradouro: TEdit;
    txtNumcasa: TEdit;
    txtbairro: TEdit;
    txtocupacao: TDBLookupComboBox;
    tbTemp: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure txtCpfExit(Sender: TObject);
    procedure tbTempClick(Sender: TObject);
  private
    { Private declarations }
    procedure limpar;

  public
    pessoaid: integer;
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

uses telainicial, cadClienteNovo;

procedure TfrmCadCliente.btnCancelarClick(Sender: TObject);
begin
  limpar;
end;

procedure TfrmCadCliente.btnGravarClick(Sender: TObject);
var
  idpessoa: integer;
begin

  // Captura dados da tabela pessoa
  FDQryCheck.Close;
  FDQryCheck.SQL.Clear;
  FDQryCheck.SQL.ADD('select idpessoa from pessoa where cpf = :cpf ');
  FDQryCheck.ParamByName('cpf').AsString := txtCpf.Text;
  FDQryCheck.Open;

  idpessoa := FDQryCheck.FieldByName('idpessoa').AsInteger;

    //Checa a variável idpessoa

  if (idpessoa >0) then
    begin
      // Update Tabela PESSOA
      FDQryInsUp.Close;
      FDQryInsUp.SQl.Clear;
      FDQryInsUp.SQL.Add('update pessoa set' );
      FDQryInsUp.SQL.Add('nome = :nome,');
      FDQryInsUp.SQL.Add('cpf = :cpf,');
      FDQryInsUp.SQL.Add('rg = :rg,');
      FDQryInsUp.SQL.Add('idocupacao = :idocupacao,');
      FDQryInsUp.SQL.Add('idestadocivil = :idestadocivil');
      FDQryInsUp.SQL.Add('where idpessoa = :idpessoa');
      FDQryInsUp.ParamByName('nome').AsString := txtNome.Text;
      FDQryInsUp.ParamByName('cpf').AsString := txtCpf.Text;
      FDQryInsUp.ParamByName('rg').AsString := txtRg.Text;
      FDQryInsUp.ParamByName('idocupacao').AsInteger := txtOcupacao.KeyValue;
      FDQryInsUp.ParamByName('idestadocivil').AsInteger := txtEstCivil.KeyValue;
      FDQryInsUp.ParamByName('idpessoa').AsInteger := idpessoa;
      FDQryInsUp.ExecSql;

      // Update Tabela ENDERECO

      FDQryInsUp.Close;
      FDQryInsUp.SQL.Clear;
      FDQryInsUp.SQL.Add('update endereco set');
      FDQryInsUp.SQL.Add('cep = :cep, ');
      FDQryInsUp.SQL.Add('logradouro = :logradouro,');
      FDQryInsUp.SQL.Add('bairro = :bairro,');
      FDQryInsUp.SQL.Add('numcasa = :numcasa,');
      FDQryInsUp.SQL.Add('idcidade = :idcidade');
      FDQryInsUp.SQL.Add('where idpessoa = :idpessoa');
      FDQryInsUp.ParamByName('cep').AsString := txtCep.Text;
      FDQryInsUp.ParamByName('logradouro').AsString := txtLogradouro.Text;
      FDQryInsUp.ParamByName('bairro').AsString := txtBairro.Text;
      FDQryInsUp.ParamByName('numcasa').AsString := txtNumCasa.Text;
      FDQryInsUp.ParamByName('idpessoa').AsInteger := idpessoa;
      FDQryInsUp.ParamByName('idcidade').AsInteger := txtCidade.KeyValue;
      FDQryInsUp.ExecSQL;

      //Update Tabela Telefone
      FDQryInsUp.Close;
      FDQryInsUp.SQL.Clear;
      FDQryInsUp.SQL.Add('update telefone set ');
      FDQryInsUp.SQL.Add('ddd = :ddd,');
      FDQryInsUp.SQL.Add('numerofone = :numerofone');
      FDQryInsUp.SQL.Add('where idpessoa = :idpessoa');
      FDQryInsUp.ParamByName('ddd').AsString := txtddd.Text;
      FDQryInsUp.ParamByName('numerofone').AsString := txtcel.Text;
      FDQryInsUp.ParamByName('idpessoa').AsInteger := idpessoa;
      FDQryInsUp.ExecSQL;

      showMessage('Sucesso ao gravar');
      Limpar;
    end else
        begin
          // Insert dados na tabela pessoa
          FDQryInsUp.Close;
          FDQryInsUp.SQl.Clear;
          FDQryInsUp.SQL.Add('insert into pessoa (nome, cpf, rg, idocupacao,');
          FDQryInsUp.SQL.Add('idestadocivil)');
          FDQryInsUp.SQL.Add('values (:nome, :cpf, :rg, :idocupacao, :idestadocivil)');
          FDQryInsUp.ParamByName('nome').AsString := txtNome.Text;
          FDQryInsUp.ParamByName('cpf').AsString := txtCpf.Text;
          FDQryInsUp.ParamByName('rg').AsString := txtRg.Text;
          FDQryInsUp.ParamByName('idocupacao').AsInteger := txtOcupacao.KeyValue;
          FDQryInsUp.ParamByName('idestadocivil').AsInteger := txtEstCivil.KeyValue;
          FDQryInsUp.ExecSql;

          //Lota/Captura IDPESSOA
          FDQryCheck.Close;
          FDQryCheck.SQL.Clear;
          FDQryCheck.SQL.ADD('select idpessoa from pessoa where cpf = :cpf ');
          FDQryCheck.ParamByName('cpf').AsString := txtCpf.Text;
          FDQryCheck.Open;

          idpessoa := FDQryCheck.FieldByName('idpessoa').asInteger;


          // Insert dados na tabela endereco
          FDQryInsUp.Close;
          FDQryInsUp.SQL.Clear;
          FDQryInsUp.SQL.Add('insert into endereco (cep, logradouro, bairro, numcasa,');
          FDQryInsUp.SQL.Add('idpessoa, idcidade)');
          FDQryInsUp.SQL.Add('values (:cep, :logradouro, :bairro, :numcasa, :idpessoa, :idcidade)');
          FDQryInsUp.ParamByName('cep').AsString := txtCep.Text;
          FDQryInsUp.ParamByName('logradouro').AsString := txtLogradouro.Text;
          FDQryInsUp.ParamByName('bairro').AsString := txtBairro.Text;
          FDQryInsUp.ParamByName('numcasa').AsString := txtNumCasa.Text;
          FDQryInsUp.ParamByName('idpessoa').AsInteger := idpessoa;
          FDQryInsUp.ParamByName('idcidade').AsInteger := txtCidade.KeyValue;
          FDQryInsUp.ExecSQL;

          //Insert dados na tabela telefone
          FDQryInsUp.Close;
          FDQryInsUp.SQL.Clear;
          FDQryInsUp.SQL.Add('insert into telefone (ddd, numerofone, idpessoa) values (:ddd, :numerofone, :idpessoa)');
          FDQryInsUp.ParamByName('ddd').AsString := txtddd.Text;
          FDQryInsUp.ParamByName('numerofone').AsString := txtcel.Text;
          FDQryInsUp.ParamByName('idpessoa').AsInteger := idpessoa;

          FDQryInsUp.ExecSQL;

          showMessage('Sucesso ao gravar');
          Limpar;
        end;
 end;

procedure TfrmCadCliente.FormShow(Sender: TObject);
begin
  FDQOcup.Close;
  FDQOcup.Open;
  FdqEstCivil.Close;
  FDqEstCivil.Open;
  FDQCidade.Close;
  FDQCidade.Open;
  FDQEstado.Close;
  FDQEstado.Open;
end;

procedure TfrmCadCliente.limpar;
begin
  txtNome.Clear;
  txtCpf.Text := '';
  txtRg.Text := '';
  txtCep.Text := '';
  txtLogradouro.Text := '';
  txtBairro.Text := '';
  txtNumCasa.Text := '';
  txtcidade.KeyValue := null;
  txtEstado.KeyValue := null;
  txtEstCivil.KeyValue := null;
  txtOcupacao.KeyValue := null;
  txtddd.Text := '';
  txtcel.Text := '';
end;


procedure TfrmCadCliente.tbTempClick(Sender: TObject);
begin
frmCadClienteNovo.ShowModal;
end;

procedure TfrmCadCliente.txtCpfExit(Sender: TObject);
begin
//Filtra tabela pessoa para verificar se ja existe

  FDQryCheck.Close;
  FDQryCheck.SQL.Clear;
  FDQryCheck.SQL.Add('select pe.idpessoa, pe.cpf, pe.nome, pe.rg, pe.idocupacao, pe.idestadocivil,');
  FDQryCheck.SQL.Add('ende.bairro, ende.cep, ende.logradouro, ende.numcasa, tel.ddd, tel.numerofone, est.idestado, cid.idcidade');
  FDQryCheck.SQL.Add('from pessoa pe');
  FDQryCheck.SQL.Add('inner join endereco ende on ende.idpessoa=pe.idpessoa');
  FDQryCheck.SQL.Add('inner join telefone tel on tel.idpessoa=pe.idpessoa');
  FDQryCheck.SQL.Add('inner join cidade cid on cid.idcidade=ende.idcidade');
  FDQryCheck.SQL.Add('inner join estado est on est.idestado=cid.idestado');
  FDQryCheck.SQL.Add('where cpf = :cpf');
  FDQryCheck.SQL.Add('group by pe.cpf');
  FDQryCheck.ParamByName('cpf').AsString := txtCpf.Text;
  FDQrycheck.Open;

  if not (FDQryCheck.IsEmpty) then
    begin
      if Application.MessageBox('Essa pessoa já existe no sistema, deseja alterar?', 'Aviso', MB_ICONASTERISK + MB_YESNO) = idyes then
        begin
          pessoaid := FDQryCheck.FieldByName('idpessoa').asInteger;
          txtNome.Text := FDQryCheck.FieldByName('nome').asString;
          txtRg.Text := FDQryCheck.FieldByName('rg').AsString;
          txtOcupacao.KeyValue := FDQryCheck.FieldByName('idocupacao').asInteger;
          txtEstCivil.KeyValue := FDQryCheck.FieldByName('idestadocivil').asInteger;
          txtBairro.Text := FDQryCheck.FieldByName ('bairro').asString;
          txtCep.Text := FDQryCheck.FieldByName ('cep').asString;
          txtLogradouro.Text := FDQryCheck.FieldByName ('logradouro').asString;
          txtNumCasa.Text := FDQryCheck.FieldByName ('numcasa').asString;
          txtDDD.Text := FDQryCheck.FieldByName ('ddd').asString;
          txtcel.Text := FDQryCheck.FieldByName ('numerofone').asString;
          txtestado.KeyValue := FDQryCheck.FieldByName ('idestado').asInteger;
          txtcidade.KeyValue := FDQryCheck.FieldByName ('idcidade').asInteger;
        end else
            begin
              limpar;
            end;
    end;

end;

end.
