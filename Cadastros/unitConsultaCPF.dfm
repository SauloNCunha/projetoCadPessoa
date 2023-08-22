inherited frmConsulta2: TfrmConsulta2
  Caption = 'frmConsulta2'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlConsultaCPF: TPanel
    inherited pnlBotoesCpf: TPanel
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
      inherited pnledtCaptchaCPF: TPanel
        inherited lbl2: TLabel
          ExplicitLeft = 10
          ExplicitTop = 122
        end
      end
      object pnlEdtCaptcha: TPanel
        Left = 0
        Top = 175
        Width = 364
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'pnledtnome'
        Color = clGradientActiveCaption
        Padding.Left = 10
        Padding.Top = 2
        Padding.Right = 10
        Padding.Bottom = 2
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        ExplicitTop = 107
        ExplicitWidth = 330
        object pnledttextoCaptch: TPanel
          Left = 10
          Top = 2
          Width = 344
          Height = 26
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          Padding.Left = 10
          Padding.Right = 10
          ParentBackground = False
          TabOrder = 0
          object edtCaptcha: TEdit
            Left = 10
            Top = 0
            Width = 324
            Height = 26
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
