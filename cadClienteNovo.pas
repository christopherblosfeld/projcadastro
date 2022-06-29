unit cadClienteNovo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Datasnap.DBClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCadClienteNovo = class(TForm)
    PnlTop: TPanel;
    PnlBottom: TPanel;
    PnlEnd: TPanel;
    PnlTelefone: TPanel;
    DBGridEnd: TDBGrid;
    DBGridTel: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    txtEstCivil: TDBLookupComboBox;
    txtocupacao: TDBLookupComboBox;
    txtNome: TEdit;
    txtCpf: TEdit;
    txtRg: TEdit;
    Label8: TLabel;
    txtCep: TEdit;
    Label4: TLabel;
    txtLogradouro: TEdit;
    Label5: TLabel;
    txtBairro: TEdit;
    Label9: TLabel;
    txtNumCasa: TEdit;
    btnAddEnd: TButton;
    txtddd: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    txtcel: TEdit;
    btnAddTel: TButton;
    btnCancelar: TButton;
    btnGravar: TButton;
    DSEnd: TClientDataSet;
    DSTel: TClientDataSet;
    Label12: TLabel;
    txtEstado: TDBLookupComboBox;
    Label13: TLabel;
    txtCidade: TDBLookupComboBox;
    DtSetEnd: TDataSource;
    SourceEstado: TDataSource;
    SourceEstCivil: TDataSource;
    SourceOcupacao: TDataSource;
    SourceCidade: TDataSource;
    FDQCidade: TFDQuery;
    FDQEstado: TFDQuery;
    FDQEstCivil: TFDQuery;
    FDQOcup: TFDQuery;
    FDQryCheck: TFDQuery;
    FDQryInsUp: TFDQuery;
    btnRemEnd: TButton;
    DSetTel: TDataSource;
    DSTelddd: TStringField;
    DSTelnumerofone: TStringField;
    DSTelidpessoa: TIntegerField;
    DSEndcep: TStringField;
    DSEndlogradouro: TStringField;
    DSEndbairro: TStringField;
    DSEndnumcasa: TStringField;
    DSEndidpessoa: TIntegerField;
    DSEndidendereco: TIntegerField;
    DSTelidtelefone: TIntegerField;
    FDQryLocPe: TFDQuery;
    FDQryLocEnd: TFDQuery;
    FDQryLocTel: TFDQuery;
    btnRemTel: TButton;
    FDQDel: TFDQuery;
    txtIDEnd: TEdit;
    lbIdEnd: TLabel;
    DSEndnomeestado: TStringField;
    DSEndnomecidade: TStringField;
    DSEndidestado: TIntegerField;
    DSEndidcidade: TIntegerField;
    btnLimpEnd: TButton;
    Button1: TButton;
    procedure btnAddEndClick(Sender: TObject);
    procedure btnAddTelClick(Sender: TObject);
    procedure btnRemEndClick(Sender: TObject);
    procedure txtCpfExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure txtEstadoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRemTelClick(Sender: TObject);
    procedure txtRgExit(Sender: TObject);
    procedure DBGridEndDblClick(Sender: TObject);
    procedure btnLimpEndClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridTelDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Limpar;
    function carregaIdPessoa(cpf: string):integer;
    procedure limpaTxtEnd;
    procedure limpaTxtTel;


  public
    { Public declarations }
    var idpessoa, idestado, idendereco, idtelefone: integer;
    var checaEditEnd, checaEditTel: boolean;
  end;

var
  frmCadClienteNovo: TfrmCadClienteNovo;

implementation


{$R *.dfm}

uses telainicial;

procedure TfrmCadClienteNovo.btnAddEndClick(Sender: TObject);
begin
//Inicio Validação ENDERECO
  if (trim(txtCep.Text) = '') then
    begin
      showMessage('Você não digitou o CEP!');
      txtCep.SetFocus;
      exit;
    end;

  if (trim(txtLogradouro.Text) = '') then
    begin
      showMessage('Você não digitou o Logradouro!');
      txtLogradouro.SetFocus;
      exit;
    end;

  if (trim(txtBairro.Text) = '') then
    begin
      showMessage('Você não digitou o Bairro!');
      txtBairro.SetFocus;
      exit;
    end;

  if (trim(txtNumCasa.Text) = '') then
    begin
      showMessage('Você não digitou o Nº da Casa!');
      TxtNumCasa.SetFocus;
      exit;
    end;

  if (txtEstado.KeyValue = null) then
    begin
      showMessage('Você não selecionou o Estado!');
      txtEstado.SetFocus;
      exit;
    end;

  if (txtCidade.KeyValue = null) then
    begin
      showMessage('Você não selecionou a Cidade!');
      txtCidade.SetFocus;
      exit;
    end;
 //-----------FIM VALIDACAO CAMPOS-------------------#------
  if checaEditEnd then
    begin
      DSEnd.Edit;
      DSEnd.FieldByName('cep').AsString := txtcep.Text;
      DSEnd.FieldByName('logradouro').AsString := txtLogradouro.Text;
      DSEnd.FieldByName('bairro').AsString := txtbairro.Text;
      DSEnd.FieldByName('numcasa').AsString := txtnumcasa.Text;
      DSEnd.FieldByName('idcidade').AsInteger := txtCidade.KeyValue;
      DSEnd.FieldByName('idestado').AsInteger := txtEstado.KeyValue;
      DsEnd.FieldByName('idpessoa').AsInteger := idpessoa;
      DSEnd.Post;

      showMessage('Editado com sucesso!');
      limpaTxtEnd;
      DSEnd.Open;


    end else
        begin
          DSEnd.Append;
          DSEnd.FieldByName('cep').AsString := txtcep.Text;
          DSEnd.FieldByName('logradouro').AsString := txtLogradouro.Text;
          DSEnd.FieldByName('bairro').AsString := txtbairro.Text;
          DSENd.FieldByName('numcasa').AsString := txtnumcasa.Text;
          DSEnd.FieldByName('idcidade').AsInteger := txtCidade.KeyValue;
          DSEnd.FieldByName('idestado').AsInteger := txtEstado.KeyValue;
          DsEnd.FieldByName('idpessoa').AsInteger := idpessoa;
          DSEnd.FieldByName('idendereco').AsInteger := 0;
          DSEnd.Post;

          showMessage('Adicionado com Sucesso');
          limpaTxtEnd;


        end;


end;

procedure TfrmCadClienteNovo.btnCancelarClick(Sender: TObject);
begin
limpar;
FDQryCheck.Close;
FDQryCheck.SQL.Clear;
FDQryLocEnd.Close;
FDQrYlocEnd.SQL.Clear;
FDQryLocTel.Close;
FDQryLocTel.SQL.Clear;
idpessoa := 0;
end;

procedure TfrmCadClienteNovo.btnGravarClick(Sender: TObject);
var idpessoa : integer;
begin
//Inicio Validação PESSOA
  if (trim(txtCpf.Text) = '') then
    begin
      showMessage('Você não digitou o CPF !');
      txtCpf.SetFocus;
      exit;
    end;

  if Length(TxtCpf.Text) < 11 then
    begin
      showMessage('Você digitou um CPF Inválido!');
      txtCpf.SetFocus;
      Exit;
    end;

  if (trim(txtNome.Text) = '')  then
    begin
      showMessage('Você não digitou o Nome!');
      txtNome.SetFocus;
      exit;
    end;

  if (trim(txtRg.Text) = '') then
    begin
      showMessage('Você não digitou o RG!');
      txtRg.SetFocus;
      exit;
    end;

  if (txtEstCivil.KeyValue = null) then
    begin
      showMessage('Você não selecionou um Estado Civil');
      txtEstCivil.SetFocus;
      exit;
    end;

  if (txtOcupacao.KeyValue = null) then
    begin
      showMessage('Você não selecionou uma Ocupação!');
      txtOcupacao.SetFocus;
      exit;
    end;

//Valida Endereco e Telefone antes de Gravar

  if (DSEnd.IsEmpty) then
    begin
      showMessage('Você não adicionou nenhum endereço!');
      txtCep.SetFocus;
      exit;
    end;

  if (DSTel.IsEmpty) then
    begin
      showMessage('Você não adicionou nenhum telefone!');
      txtDDD.SetFocus;
      exit;
    end;


///-------------------------//////-------------------------------

  // Captura dados da tabela pessoa
  // carregarPessoa;

  idpessoa := carregaIdPessoa(txtCpf.Text);

  //Checa a variável idpessoa
   if (idpessoa > 0) then
      begin
        //Update Tabela Pessoa
        FDQryInsUp.Close;
        FDQryInsUp.SQL.Clear;
        FDQryInsUp.SQL.Add('update pessoa set nome = :nome,');
        FDQryInsUp.SQL.Add('cpf = :cpf,');
        FDQryInsUp.SQL.Add('rg = :rg,');
        FDQryInsUp.SQL.Add('idocupacao = :idocupacao,');
        FDQryInsUp.SQL.Add('idestadocivil = :idestadocivil');
        FDQryInsUP.SQL.Add('where idpessoa = :idpessoa');
        FDQryInsUp.ParamByName('nome').AsString := txtNome.Text;
        FDQryInsUp.ParamByName('cpf').AsString := txtCpf.Text;
        FDQryInsUp.ParamByName('rg').AsString := txtRg.Text;
        FDQryInsUp.ParamByName('idocupacao').AsInteger := txtocupacao.KeyValue;
        FDQryInsUp.ParamByName('idestadocivil').AsInteger := txtEstCivil.KeyValue;
        FDQryInsUP.ParamByName('idpessoa').AsInteger := idpessoa;
        FDQryInsUp.ExecSQL;
       end

       else
       begin
        //Insert Tabela pessoa
        FDQryInsUp.Close;
        FDQryInsUp.SQL.Clear;
        FDQryInsUp.SQL.Add('insert into pessoa (cpf, nome, rg, idocupacao, idestadocivil)');
        FDQryInsUp.SQL.Add('values (:cpf, :nome, :rg, :idocupacao, :idestadocivil)');
        FDqryInsUp.ParamByName('nome').AsString := txtNome.Text;
        FDQryInsUp.ParamByName('cpf').AsString := txtCpf.Text;
        FDQryInsUp.ParamByName('rg').AsString := txtRG.Text;
        FDQryInsUp.ParamByName('idocupacao').AsInteger := txtocupacao.KeyValue;
        FDqryInsUp.ParamByName('idestadocivil').AsInteger := txtestcivil.KeyValue;
        FDQryInsUp.ExecSQL;


        idpessoa := carregaIdPessoa(txtCpf.Text);
       end;



  //While Bloco Endereco
   DSEnd.First;
    while not (DSEnd.EOF) do
    begin

      if (DSEnd.FieldByName('idendereco').asInteger = 0) then
        begin
          FDQryInsUp.Close;
          FDQryInsUp.SQL.Clear;
          FDQryInsUp.SQL.Add('insert into endereco (cep, logradouro, bairro, numcasa, idpessoa, idcidade)');
          FDQryInsUp.SQL.Add('values (:cep, :logradouro, :bairro, :numcasa, :idpessoa, :idcidade)');
          FDQryInsUp.ParamByName('cep').AsString := DSEnd.FieldByName('cep').asString;
          FDQryInsUp.ParamByName('logradouro').AsString := DSEnd.FieldByName('logradouro').AsString;
          FDQryInsUp.ParamByName('bairro').AsString := DSEnd.FieldByName('bairro').AsString;
          FDQryInsUp.ParamByName('numcasa').AsString := DSEnd.FieldByName('numcasa').AsString;
          FDQryInsUp.ParamByName('idpessoa').AsInteger := idpessoa;
          FDQryInsUp.ParamByName('idcidade').AsInteger := DSEnd.FieldByName('idcidade').AsInteger;
          FDQryInsUp.ExecSQL;

        end else
           begin
             FDqryInsUp.Close;
             FDQryInsUp.SQL.Clear;
             FDQryInsUp.SQL.Add('update endereco set cep = :cep,');
             FDQryInsUp.SQL.Add('logradouro = :logradouro,');
             FDQryInsUp.SQL.Add('bairro = :bairro,');
             FDQryInsUp.SQL.Add('numcasa = :numcasa,');
             FDQryInsUp.SQl.Add('idcidade = :idcidade');
             FDQryInsUp.SQL.Add('where idendereco = :idendereco');
             FDQryInsUp.ParamByName('cep').AsString := DSEnd.FieldByName('cep').AsString;
             FDQryInsUp.ParamByName('logradouro').AsString := DSEnd.FieldByName('logradouro').AsString;
             FDQryInsUp.ParamByName('bairro').AsString := DSEnd.FieldByName('bairro').AsString;
             FDQryInsUp.ParamByName('numcasa').AsString := DSEnd.FieldByName('numcasa').AsString;
             FDQryInsUp.ParamByName('idcidade').AsInteger := DSEnd.FieldByName('idcidade').AsInteger;
             FDQryInsUp.ParamByName('idendereco').AsInteger := DSEnd.FieldByName('idendereco').AsInteger;
             FDQryInsUp.ExecSQL;

           end;

           DSEnd.Next;

    end;

    //While Bloco Telefone
    DSTel.First;
    while not (DSTel.EOF) do
    begin

      if (DSTel.FieldByName('idtelefone').asInteger = 0) then
        begin

          idpessoa := carregaIdPessoa(txtCpf.Text);

          //Insert Tabela Tabela telefone
          FDQryInsUp.Close;
          FDQryInsUp.SQL.Clear;
          FDQryInsUp.SQL.Add('insert into telefone (ddd, numerofone, idpessoa)');
          FDQryInsUp.SQL.Add('values (:ddd, :numerofone, :idpessoa)');
          FDQryInsUp.ParamByName('ddd').AsString := DSTel.FieldByName('ddd').AsString;
          FDQryInsUp.ParamByName('numerofone').AsString := DSTel.FieldByName('numerofone').AsString;
          FDQryInsUp.ParamByName('idpessoa').AsInteger := idpessoa;
          FDQryInsUp.ExecSQL;

        end else
          begin
            //Update Tabela Telefone
            FDQryInsUp.Close;
            FDQryInsUp.SQL.Clear;
            FDQryInsUp.SQL.Add('update telefone set ddd = :ddd,');
            FDQryInsUp.SQL.Add('numerofone = :numerofone');
            FDQryInsUp.SQL.Add('where idtelefone = :idtelefone');
            FDQryInsUp.ParamByName('ddd').AsString := DSTel.FieldByName('ddd').asString;
            FDQRyInsUp.ParamByName('numerofone').AsString := DSTel.FieldByName('numerofone').asString;
            FDQryInsUp.ParamByName('idtelefone').AsInteger := DSTel.FieldByName('idtelefone').AsInteger;
            FDQryInsUp.ExecSQL;

          end;

          DSTel.Next;
    end;

    showMessage('Sucesso ao gravar');
    limpar;
End;


procedure TfrmCadClienteNovo.btnLimpEndClick(Sender: TObject);
begin
limpaTxtEnd;
end;

procedure TfrmCadClienteNovo.btnRemEndClick(Sender: TObject);
begin

  if Application.MessageBox ('Tem certeza que deseja excluir?', 'Aviso', MB_ICONASTERISK + MB_YESNO) = idyes then
    begin
      // Montar a remocao do Banco aqui abaixo FDQ
      FDQDel.Close;
      FDQDel.SQL.Clear;
      FDQDel.SQL.Add('delete from endereco');
      FDQDel.SQL.Add('where idendereco = :idendereco');
      FDQDel.ParamByName('idendereco').AsInteger := DSEnd.FieldByName('idendereco').AsInteger;
      FDQDel.ExecSQL;

      showMessage('Removido com sucesso');
      DSEnd.Delete;

    end;

end;

procedure TfrmCadClienteNovo.btnRemTelClick(Sender: TObject);
begin

  if Application.MessageBox ('Tem certeza que deseja excluir?', 'Aviso', MB_ICONASTERISK + MB_YESNO) = idyes then
    begin
      FDQDel.Close;
      FDQDel.SQL.Clear;
      FDQDel.SQL.Add('delete from telefone');
      FDQDel.SQL.Add('where idtelefone = :idtelefone');
      FDQDel.ParamByName('idtelefone').AsInteger := DSTel.FieldByName('idtelefone').AsInteger;
      FDQDel.ExecSQL;

      showMessage('Sucesso ao remover');
      DSTel.Delete;
    end;

end;



procedure TfrmCadClienteNovo.Button1Click(Sender: TObject);
begin
limpatxtTel;
end;

procedure TfrmCadClienteNovo.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
limpar;
end;

procedure TfrmCadClienteNovo.FormShow(Sender: TObject);
begin
  btnAddEnd.Caption := 'Adicionar';
  btnRemEnd.Enabled := true;
end;

procedure TfrmCadClienteNovo.btnAddTelClick(Sender: TObject);
begin
//Inicio validacao telefone
  if (trim(txtDDD.Text) = '') then
    begin
      showMessage('Você não digitou o DDD!');
      txtddd.SetFocus;
      Exit;
    end;


  if (trim(txtCel.Text) = '') then
    begin
      showMessage('Você não digitou um celular!');
      TxtCel.SetFocus;
      Exit;
    end;

  if (length(txtcel.Text) < 9 ) then
    begin
      showMessage('Você digitou um celular inválido!');
      TxtCel.SetFocus;
      Exit;
    end;

  if (checaEditTel) then
    begin
      //Edita Dados DataSet Telefone
      DSTel.Edit;
      DsTel.FieldByName('ddd').AsString := txtDDD.Text;
      DSTel.FieldByName('numerofone').AsString := txtCel.Text;
      DSTel.Post;

      showMessage('Sucesso ao Editar');
      limpaTxtTel;


    end else
        begin
          //Insere Dados no DataSet Telefone
          DSTel.Append;
          DSTel.FieldByName('ddd').AsString := txtddd.Text;
          DSTel.FieldByName('numerofone').AsString := txtcel.Text;
          DSTel.FieldByName('idpessoa').AsInteger := idpessoa;
          DSTel.FieldByName('idtelefone').AsInteger := 0;
          DSTel.Post;

          showMessage('Sucesso ao gravar');
          limpaTxtTel;
        end;

end;

procedure TfrmCadClienteNovo.Limpar;
begin
  txtNome.Clear;
  txtCpf.Clear;
  txtRg.Clear;

  txtOcupacao.KeyValue := null;
  txtEstCivil.KeyValue := null;
  DSEnd.EmptyDataset;
  DSTel.EmptyDataSet;

  limpaTxtEnd;
  limpaTxtTel;
end;


procedure TfrmCadClienteNovo.limpaTxtEnd;
begin
txtCep.Clear;
txtLogradouro.Clear;
txtBairro.Clear;
txtNumCasa.Clear;
txtCidade.KeyValue := null;
txtEstado.KeyValue := null;
txtIdEnd.Clear;
checaEditEnd := false;
btnRemEnd.Enabled := true;
btnAddEnd.Caption := 'Adicionar';
end;

procedure TfrmCadClienteNovo.limpaTxtTel;
begin
  txtddd.Clear;
  txtcel.Clear;
  checaEditTel := False;
  btnRemTel.Enabled := true;
  btnAddEnd.Caption := 'Adicionar';
end;

function TfrmCadClienteNovo.carregaIdPessoa(cpf: string): integer;
begin
  FDQryCheck.Close;
  FDQryCheck.SQL.Clear;
  FDQryCheck.SQL.Add('select idpessoa from pessoa');
  FDQryCheck.SQL.Add('where cpf = :cpf');
  FDqryCheck.ParamByName('cpf').AsString := cpf;
  FDQryCheck.Open;

  if FDQryCheck.IsEmpty then
    result := 0
    else
    result := FDQryCheck.FieldByName('idpessoa').AsInteger;
end;


procedure TfrmCadClienteNovo.DBGridEndDblClick(Sender: TObject);

begin
  if not (DSEnd.IsEmpty) then
    begin
      checaEditEnd := true;
      //Insere dados do DataSet Endereco nos campos TXT;
      FDQCidade.Open;
      txtCep.Text := DSEnd.FieldByName('cep').AsString;
      txtLogradouro.Text := DSEnd.FieldByName('logradouro').AsString;
      txtBairro.Text := DSEnd.FieldByName('bairro').AsString;
      txtNumCasa.Text := DSEnd.FieldByName('numcasa').AsString;
      txtCidade.KeyValue := DSEnd.FieldByName('idcidade').AsInteger;
      txtEstado.KeyValue := DSEnd.FieldByName('idestado').AsInteger;
      txtIdEnd.Text := intToStr(DSEnd.FieldByName('idendereco').AsInteger);
      btnAddEnd.Caption := 'Editar';
      btnRemEnd.Enabled := false;
    end;
end;

procedure TfrmCadClienteNovo.DBGridTelDblClick(Sender: TObject);
begin
  if not (DSTel.IsEmpty) then
    begin
      checaEditTel := true;
      //Insere dados do DataSet telefone nos campos TXT.
      txtDDD.Text := DSTel.FieldByName('ddd').AsString;
      txtCel.Text := DSTel.FieldByName('numerofone').AsString;
      btnAddTel.Caption := 'Editar';
      btnRemTel.Enabled := false;

    end;


end;

procedure TfrmCadClienteNovo.txtCpfExit(Sender: TObject);
begin

  if Length(TxtCpf.Text) < 11 then
    begin
      showMessage('Você digitou um CPF Inválido!!');
      txtcpf.SetFocus;
      Exit;
    end;


  //Verifica se a pessoa ja existe no sistema
  //Tabela pessoa
  FDQryLocPe.Close;
  FDQryLocPe.SQL.Clear;
  FDQryLocPe.SQL.Add('select idpessoa, cpf, nome, rg, idocupacao, idestadocivil');
  FDQryLocPe.SQL.Add('from pessoa');
  FDQryLocPe.SQL.Add('where cpf = :cpf');
  FDQryLocPe.ParamByName('cpf').AsString := txtCpf.Text;
  FDQryLocPe.Open;

  if not (FDQryLocPe.IsEmpty) then
    begin
      if Application.MessageBox ('Essa pessoa já existe no sistema. Deseja alterar?', 'Aviso', MB_ICONASTERISK + MB_YESNO) = idyes then
        begin
          //Lotando campos TXTs com informacoes do banco
          idpessoa := FDQryLocPe.FieldByName('idpessoa').asInteger;
          txtNome.Text := FDQryLocPe.FieldByName('nome').AsString;
          txtRg.Text := FDQryLocPe.FieldByName('rg').AsString;
          txtOcupacao.KeyValue := FDQryLocPe.FieldByName('idocupacao').asInteger;
          txtEstCivil.KeyValue := FDQryLocPe.FieldByName('idestadocivil').asInteger;

          //Select Tabela Endereço
          FDQryLocEnd.Close;
          FDQryLocEnd.SQL.Clear;
          FDQryLocEnd.SQL.Add('select ende.idendereco, pe.cpf, ende.bairro, ende.cep, ende.logradouro, ende.numcasa,');
          FDQryLocEnd.SQL.Add('est.idestado, est.nomeestado, cid.idcidade, cid.nomecidade');
          FDQryLocEnd.SQL.Add('from endereco ende');
          FDQryLocEnd.SQL.Add('inner join pessoa pe on pe.idpessoa=ende.idpessoa');
          FDQryLocEnd.SQL.Add('inner join cidade cid on cid.idcidade=ende.idcidade');
          FDQryLocEnd.SQL.Add('inner join estado est on est.idestado=cid.idestado');
          FDQryLocEnd.SQL.Add('where cpf = :cpf');
          FDQryLocEnd.ParamByName('cpf').AsString := txtCpf.Text;
          FDQryLocEnd.Open;

          //Insercao dataSet Tabela Endereco
          while not (FDQryLocEnd.Eof) do
          begin
            DSEnd.Append;
            DSEnd.FieldByName('bairro').asString := FDQryLocEnd.FieldByName ('bairro').asString;
            DSEnd.FieldByName('cep').asString := FDQryLocEnd.FieldByName ('cep').asString;
            DSEnd.FieldByName('logradouro').asString := FDQryLocEnd.FieldByName ('logradouro').asString;
            DSEnd.FieldByName('numcasa').asString := FDQryLocEnd.FieldByName ('numcasa').asString;
            DSEnd.FieldByName('idpessoa').AsInteger := idpessoa;
            DSEnd.FieldByName('idcidade').AsInteger := FDQryLocEnd.FieldByName('idcidade').AsInteger;
            DSEnd.FieldByName('nomecidade').AsString := FDQryLocEnd.FieldByName('nomecidade').AsString;
            DSEnd.FieldByName('nomeestado').AsString := FDQryLocEnd.FieldByName('nomeestado').AsString;
            DSEnd.FieldByName('idestado').AsInteger := FDQryLocEnd.FieldByName('idestado').AsInteger;
            DSEnd.FieldByName('idendereco').AsInteger := FDQryLocEnd.FieldByName('idendereco').AsInteger;
            DSEnd.Post;

            FDQryLocEnd.Next;
          end;

          //Select Tabela Telefone
          FDQryLocTel.Close;
          FDQryLocTel.SQL.Clear;
          FDQryLocTel.SQL.Add('select tel.idtelefone, tel.ddd, tel.numerofone, tel.idpessoa, pe.cpf');
          FDQryLocTel.SQL.Add('from telefone tel');
          FDQryLocTel.SQL.Add('inner join pessoa pe on pe.idpessoa=tel.idpessoa');
          FDQryLocTel.SQL.Add('where cpf = :cpf');
          FDQryLocTel.ParamByName('cpf').AsString := txtCpf.Text;
          FDQryLocTel.Open;

          //Insere Telefone
          while not (FDQryLocTel.Eof) do
          begin
            Dstel.Append;
            DSTel.FieldByName('idtelefone').AsInteger := FDQryLocTel.FieldByName('idtelefone').AsInteger;
            DSTel.FieldByName('ddd').asString := FDQryLocTel.FieldByName('ddd').asString;
            DSTel.FieldByName('numerofone').asString := FDQryLocTel.FieldByName ('numerofone').asString;
            DSTel.FieldByName('idpessoa').AsInteger := idpessoa;
            DSTel.Post;

            FDQryLocTel.Next;
          end;
        end;
    end;
end;


procedure TfrmCadClienteNovo.txtEstadoExit(Sender: TObject);
begin
  FDQCidade.Close;
  FDQCidade.SQL.Clear;
  FDQCidade.SQL.Add('select idcidade, nomecidade');
  FDQCidade.SQL.Add('from cidade');
  FDQCidade.SQL.Add('where idestado = :idestado');
  FDQCidade.ParamByName('idestado').AsInteger := txtEstado.KeyValue;
  FDQCidade.Open;

  txtCidade.KeyValue := -1;
end;


procedure TfrmCadClienteNovo.txtRgExit(Sender: TObject);
begin
  if Length(TxtRG.Text) < 6 then
    begin
      showMessage('Você digitou um RG Inválido!!');
      txtRg.SetFocus;
      Exit;
    end;
end;
end.

