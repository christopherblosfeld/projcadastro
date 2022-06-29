object frmConsOcup: TfrmConsOcup
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consultar ocupa'#231#245'es'
  ClientHeight = 181
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbcont: TLabel
    Left = 105
    Top = 149
    Width = 3
    Height = 13
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 8
    Width = 265
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idocupacao'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ocupacaonome'
        Title.Caption = 'NOME DA OCUPA'#199#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end>
  end
  object btnCancelar: TButton
    Left = 24
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelarClick
  end
  object btnConsultar: TButton
    Left = 214
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = btnConsultarClick
  end
  object FDQryCheck: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    Left = 232
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = FDQryCheck
    Left = 208
    Top = 88
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQryCheck
    Left = 208
    Top = 32
  end
end
