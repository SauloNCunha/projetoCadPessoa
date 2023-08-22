inherited frmConsultaCnpj: TfrmConsultaCnpj
  Caption = 'Consulta CNPJ'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlConsultaCPF: TPanel
    ExplicitWidth = 384
    ExplicitHeight = 255
    inherited pnlBotoesCpf: TPanel
      ExplicitTop = 210
      ExplicitWidth = 364
      inherited btnAtualizaCaptchaCPF: TBitBtn
        OnClick = nil
      end
      inherited btnCancelaConsultaCPF: TBitBtn
        OnClick = nil
      end
      inherited btnConsultaCPF: TBitBtn
        OnClick = nil
      end
    end
    inherited pnlCaptchaCPFconsulta: TPanel
      ExplicitWidth = 364
      ExplicitHeight = 205
      inherited pnledtCaptchaCPF: TPanel
        inherited lbl2: TLabel
          ExplicitLeft = 10
          ExplicitTop = 122
        end
      end
      object pnlCampos: TPanel
        Left = 0
        Top = 140
        Width = 364
        Height = 65
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlCampos'
        TabOrder = 1
        ExplicitTop = 160
        ExplicitHeight = 45
        object pnlfundodata: TPanel
          Left = 0
          Top = 30
          Width = 364
          Height = 35
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'pnledtnome'
          Color = clGradientActiveCaption
          Padding.Left = 10
          Padding.Top = 5
          Padding.Right = 10
          Padding.Bottom = 5
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object pnledtdatanas: TPanel
            Left = 10
            Top = 5
            Width = 344
            Height = 25
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            Padding.Left = 10
            Padding.Right = 10
            ParentBackground = False
            TabOrder = 0
            object edtdatanasci: TcxMaskEdit
              Left = 10
              Top = 0
              Align = alClient
              Properties.EditMask = '!99/99/0000;1;_'
              Style.BorderStyle = ebsNone
              TabOrder = 0
              Text = '  /  /    '
              Width = 324
            end
          end
        end
        object pnlEdtCapchaCPF: TPanel
          Left = 0
          Top = 0
          Width = 364
          Height = 30
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          Padding.Left = 10
          Padding.Right = 10
          ParentBackground = False
          TabOrder = 1
          object edtCapchaCPF: TEdit
            Left = 10
            Top = 0
            Width = 344
            Height = 30
            Align = alClient
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 30
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
  end
end
