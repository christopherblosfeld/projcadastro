object frmConsEstCivil: TfrmConsEstCivil
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consultar Estados Civis'
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
  PixelsPerInch = 96
  TextHeight = 13
  object lbcont: TLabel
    Left = 97
    Top = 154
    Width = 3
    Height = 13
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 8
    Width = 278
    Height = 129
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
        FieldName = 'idestadocivil'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estadocivilnome'
        Title.Caption = 'ESTADO CIVIL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end>
  end
  object btnCancelar: TButton
    Left = 16
    Top = 148
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelarClick
  end
  object btnConsultar: TButton
    Left = 219
    Top = 148
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = btnConsultarClick
  end
  object FDQryCheck: TFDQuery
    Connection = frmTelaInicial.FDConnection1
    Left = 264
    Top = 16
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQryCheck
    Left = 264
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = FDQryCheck
    Left = 224
    Top = 8
  end
end
