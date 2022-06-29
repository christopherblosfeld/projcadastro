unit unfuncoes;

interface

uses
Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

procedure prcValidarCamposObrigatorios (Forms: TForm);

implementation

uses cadcidade, cadcliente, cadestado, telainicial;


procedure prcValidarCamposObrigatorios (Forms: TForm);

var
i: integer ;
  begin
     for I := 0 to Forms.ComponentCount - 1 do
     begin
       if Forms.Components[i].Tag=5  then
         begin
       //Verifica se e um TEdit
         if forms.Components[i] is Tedit then
         begin
           if ((Forms.components[i] as TEdit).Hint <> '') and
              ((Forms.components[i] as TEdit).Text = '' )then
              begin
              showMessage('Faltou preencher o campo ' + (Forms.components[i] as TEdit).Hint)
              end

         end


         end;
       end;


     end;




end.
