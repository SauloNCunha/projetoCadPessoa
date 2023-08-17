unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, ACBrConsultaCNPJ,
  ACBrConsultaCPF, ACBrCEP, ACBrBase, ACBrSocket, ACBrIBGE;

type
  TDM = class(TDataModule)
    conBanco: TFDConnection;
    FBDriver: TFDPhysFBDriverLink;
    fdgxwtcrsr: TFDGUIxWaitCursor;
    tabPessoa: TFDTable;
    ACBrIBGE1: TACBrIBGE;
    ACBrCEP1: TACBrCEP;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    tabEndereco: TFDTable;
    tabCidade: TFDTable;
    tebTelefone: TFDTable;
    procedure ConfiguraBuscaCEP(indice : Integer);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses utils;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.ConfiguraBuscaCEP(indice : Integer);
begin
     with  dm.ACBrCEP1 do
     begin
          WebService   := TACBrCEPWebService( indice ) ; //Correios
          ProxyHost    := '' ;
          ProxyPort    := '';
          ProxyUser    := '' ;
          ProxyPass    := '' ;
          ChaveAcesso  := '';

          ProxyHost    := '';
          ProxyPort    := '' ;
          ProxyUser    := '' ;
          ProxyPass    := '' ;
     end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
     abreArquivoIni;
end;

end.
