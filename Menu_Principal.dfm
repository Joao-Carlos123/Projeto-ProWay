object MenuPrincipal: TMenuPrincipal
  Left = 331
  Top = 142
  Width = 870
  Height = 500
  Caption = 'Sistema para Cadastro de Eventos  1.20.38.1'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 824
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Participantes1: TMenuItem
        Caption = 'Participantes'
        OnClick = Participantes1Click
      end
      object SaladeTreinamento1: TMenuItem
        Caption = 'Sala de Treinamento'
        OnClick = SaladeTreinamento1Click
      end
      object SaladeCaf1: TMenuItem
        Caption = 'Sala de Caf'#233
        OnClick = SaladeCaf1Click
      end
    end
    object Consulta1: TMenuItem
      Caption = 'Consulta'
      object SalasdeTreinamento1: TMenuItem
        Caption = 'Salas de Participantes'
        OnClick = SalasdeTreinamento1Click
      end
      object SalaTreinamento1: TMenuItem
        Caption = 'Salas Treinamento'
        OnClick = SalaTreinamento1Click
      end
      object SalasdeCaf1: TMenuItem
        Caption = 'Salas de Caf'#233
        OnClick = SalasdeCaf1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
