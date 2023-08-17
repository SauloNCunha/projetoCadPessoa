object frmListagem: TfrmListagem
  Left = 0
  Top = 0
  Caption = 'Listagem'
  ClientHeight = 681
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 681
    Align = alClient
    BevelOuter = bvNone
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 0
    object gridListagem: TcxGrid
      Left = 0
      Top = 0
      Width = 1008
      Height = 601
      Align = alClient
      TabOrder = 0
      object gridView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsQryPessoa
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'Sem Registros'
        OptionsView.GroupByBox = False
      end
      object gridLevel: TcxGridLevel
        GridView = gridView
      end
    end
    object pnlBotoes: TPanel
      Left = 0
      Top = 601
      Width = 1008
      Height = 80
      Align = alBottom
      BevelOuter = bvNone
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 1
      object lblFiltro: TLabel
        Left = 16
        Top = 33
        Width = 28
        Height = 13
        Caption = 'Filtro:'
      end
      object btn1: TSpeedButton
        Left = 554
        Top = 30
        Width = 19
        Height = 20
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000016000000BD0000002C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000016000000D3000000FF000000BD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000016000000D3000000FF000000D300000016000000000000
          00000000000000000041000000AC000000E9000000FD000000E9000000AC0000
          004000000016000000D3000000FF000000D30000001600000000000000000000
          00040000009A000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000EA000000FF000000D3000000160000000000000000000000000000
          009A000000FF000000F50000007B0000001F000000030000001F0000007B0000
          00F5000000FF000000EA00000016000000000000000000000000000000410000
          00FF000000F50000003600000000000000000000000000000000000000000000
          0036000000F5000000FF00000040000000000000000000000000000000AC0000
          00FF0000007B0000000000000000000000000000000000000000000000000000
          00000000007B000000FF000000AC000000000000000000000000000000E90000
          00FF0000001F0000000000000000000000000000000000000000000000000000
          00000000001F000000FF000000E9000000000000000000000000000000FD0000
          00FF000000030000000000000000000000000000000000000000000000000000
          000000000003000000FF000000FD000000000000000000000000000000E90000
          00FF0000001F0000000000000000000000000000000000000000000000000000
          00000000001F000000FF000000E9000000000000000000000000000000AD0000
          00FF0000007B0000000000000000000000000000000000000000000000000000
          00000000007B000000FF000000AC000000000000000000000000000000410000
          00FF000000F50000003600000000000000000000000000000000000000000000
          0036000000F5000000FF00000041000000000000000000000000000000000000
          009A000000FF000000F50000007B0000001F000000030000001F0000007B0000
          00F5000000FF0000009A00000000000000000000000000000000000000000000
          00040000009A000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF0000009A0000000400000000000000000000000000000000000000000000
          00000000000000000041000000AC000000E9000000FD000000E9000000AD0000
          0041000000000000000000000000000000000000000000000000}
      end
      object cbbFiltro: TComboBox
        Left = 72
        Top = 30
        Width = 145
        Height = 21
        BevelInner = bvNone
        TabOrder = 0
        OnChange = cbbFiltroChange
        Items.Strings = (
          'C'#243'digo Pessoa'
          'Nome'
          'CPF'
          'CNPJ'
          'Lougradouro'
          'Cidade'
          'Estado'
          'Telefone')
      end
      object edtFiltro: TEdit
        Left = 248
        Top = 38
        Width = 300
        Height = 21
        TabOrder = 1
      end
      object medtFiltro: TMaskEdit
        Left = 248
        Top = 11
        Width = 120
        Height = 21
        TabOrder = 2
        Text = ''
      end
      object btnCancela: TBitBtn
        Left = 940
        Top = 6
        Width = 60
        Height = 60
        Glyph.Data = {
          76380000424D763800000000000036000000280000003C0000003C0000000100
          2000000000004038000000000000000000000000000000000000000000000000
          0000100D031567521589A48322DABD9727FBC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFAC89
          24FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF987920FC85691CDC5342118A0D0B
          0316000000000000000000000000261F0833AE8B24E7C09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFAC8924FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF8C6F1DE82019073500000000110D0316AE8B
          24E7C09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFAC8924FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF8C6F1DE80D0B031667521589C09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFAC8924FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF5342118AA58322DBC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFAC8924FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF84691BDBBD9727FBC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFAC8924FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF987920FCC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFAC8924FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFAC8924FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFAC89
          24FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFAC8924FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFAC8924FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFAC8924FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFAC8924FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFAC8924FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFAC8924FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09929FFDDC98FFFF8F6F0FFE7E0CBFFA588
          38FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FFA58838FFE7E0CBFFF8F6F0FFCBBA8CFF9A7A21FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFE1CE
          98FFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FFA58838FFF0EBDDFFFFFFFFFFFFFFFFFFFFFF
          FFFFCFC096FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09929FFE1CE98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF0EBDEFFA58838FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFA58838FFF0EB
          DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC095FF9A7A21FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFDECA90FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FFA58838FFF0EBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCBBA8CFF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFFBF9F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFA58838FFF0EBDEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F6F0FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFF0E8CEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EB
          DEFFA58838FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFA588
          38FFF0EBDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE7E0CBFF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC7A43FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFA58838FFF0EBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC7A43FFFF6F0
          DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A20FFA58838FFF0EBDEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF0EBDEFFA58838FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC7A43FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA588
          38FFA58838FFF0EBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC7A43FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFF0EBDEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA588
          38FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC7A43FFFF6F0DFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC7A43FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FFAC8924FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC7A4
          3FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EB
          DEFFA58838FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFAC8924FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC7A43FFFF6F0DFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFAC89
          24FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC7A43FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFAC8924FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC7A43FFFF6F0DFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFAC8924FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC7A43FFFF6F0DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA588
          38FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FFAC8924FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC7A43FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FFAC8924FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC7A43FFFF5F0
          DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF0EBDEFFA58838FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFAC8924FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC7A43FFFF5F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FFAC8924FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC7A43FFFF5F0DFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F0
          DFFFF6F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A20FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFAC8924FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC7A4
          3FFFF5F0DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF6F0DFFFC7A43FFFC7A43FFFF6F0DEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EB
          DEFFA58838FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FF9A7A20FFAC89
          24FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC7A43FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F0DFFFC7A43FFFC099
          28FFC09928FFC7A43FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A
          20FF9A7A20FF9A7A20FFAC8924FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC7A43FFFF5F0DEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF6F0DFFFC7A43FFFC09928FFC09928FFC09928FFC09928FFC7A43FFFF6F0
          DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0EBDEFFA58838FF9A7A20FF9A7A20FFAC8924FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFF0E7CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F0DFFFC7A43FFFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC7A43FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E0CBFF9A7A
          20FFAC8924FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFFBF8F1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F0DFFFC7A4
          3FFFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC7A43FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF8F6F0FFAC8924FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFDECA90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF6F0DFFFC7A43FFFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC7A43FFFF6F0DFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDC990FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09929FFE1CE98FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F0DFFFC7A43FFFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC7A43FFFF6F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE1CF99FFC09929FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFE1CE99FFFFFFFFFFFFFFFFFFFFFFFFFFF6F0
          DFFFC7A43FFFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC7A4
          3FFFF5F0DEFFFFFFFFFFFFFFFFFFFFFFFFFFE1CF99FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          29FFDECA90FFFBF9F1FFF0E7CDFFC7A43FFFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC7A43FFFF0E7CDFFFBF8F1FFDFCA
          90FFC09929FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFBD9727FBC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFBD9727FBA58322DBC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFA48322DA67521589C099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FF67521589110D0316AE8B24E7C09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFAE8B24E7100D031500000000261F
          0833AE8B24E7C09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFAE8B
          24E7271F0834000000000000000000000000100D031567521589A48322DABD97
          27FBC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC09928FFC099
          28FFBD9727FBA58322DB6853168A110D03160000000000000000}
        TabOrder = 3
        OnClick = btnCancelaClick
      end
    end
  end
  object qryPessoa: TFDQuery
    Connection = DM.conBanco
    SQL.Strings = (
      'SELECT * FROM PESSOA P'
      'LEFT OUTER JOIN ENDERECO E ON E.CODIGO = P.CODIGO'
      'LEFT OUTER JOIN CIDADE C ON C.CODIGO = E.CIDADE')
    Left = 816
    Top = 616
  end
  object dsQryPessoa: TDataSource
    DataSet = qryPessoa
    Left = 680
    Top = 616
  end
end
