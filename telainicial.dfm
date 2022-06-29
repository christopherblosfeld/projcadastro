object frmTelaInicial: TfrmTelaInicial
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sistema de Cadastro - Chr Sistemas'
  ClientHeight = 240
  ClientWidth = 612
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
  object lbCadastros: TLabel
    Left = 208
    Top = 15
    Width = 191
    Height = 19
    Caption = 'CADASTRAR/ALTERAR'
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbConsultas: TLabel
    Left = 256
    Top = 119
    Width = 101
    Height = 19
    Caption = 'CONSULTAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnCadCliente: TButton
    Left = 14
    Top = 40
    Width = 115
    Height = 57
    Caption = 'CLIENTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnCadClienteClick
  end
  object btnCadCidade: TButton
    Left = 131
    Top = 40
    Width = 115
    Height = 57
    Caption = 'CIDADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnCadCidadeClick
  end
  object btnCadEstado: TButton
    Left = 248
    Top = 40
    Width = 115
    Height = 57
    Caption = 'ESTADO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnCadEstadoClick
  end
  object btnCadOcupacao: TButton
    Left = 364
    Top = 40
    Width = 115
    Height = 57
    Caption = 'OCUPA'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnCadOcupacaoClick
  end
  object btnCadEstCivil: TButton
    Left = 480
    Top = 40
    Width = 115
    Height = 57
    Caption = 'ESTADO CIVIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnCadEstCivilClick
  end
  object btnConsCli: TButton
    Left = 14
    Top = 144
    Width = 115
    Height = 57
    Caption = 'CLIENTES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnConsCliClick
  end
  object btnConsCid: TButton
    Left = 131
    Top = 144
    Width = 115
    Height = 57
    Caption = 'CIDADES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnConsCidClick
  end
  object btnConsEst: TButton
    Left = 248
    Top = 144
    Width = 115
    Height = 57
    Caption = 'ESTADOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnConsEstClick
  end
  object btnConsOcp: TButton
    Left = 364
    Top = 144
    Width = 115
    Height = 57
    Caption = 'OCUPA'#199#213'ES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btnConsOcpClick
  end
  object btnConsEstC: TButton
    Left = 480
    Top = 144
    Width = 115
    Height = 57
    Caption = 'ESTADOS CIVIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btnConsEstCClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=syscad'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    Left = 568
    Top = 100
  end
end
