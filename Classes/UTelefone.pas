unit UTelefone;

interface
uses
 FireDAC.Comp.Client;

type
  TTelefone = class
  private
    FCodigo: Integer;
    FPessoa: Integer;
    FNumeroTelefone: string;
    FTipo: Integer;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Pessoa: Integer read FPessoa write FPessoa;
    property NumeroTelefone: string read FNumeroTelefone write FNumeroTelefone;
    property Tipo: Integer read FTipo write FTipo;

    procedure Inserir;
    procedure Excluir;
    procedure Atualizar;
    procedure ConsultarPorCodigo(codigo: Integer);

  end;
implementation
uses
unitDM;

procedure TTelefone.Inserir;
var
  Query: TFDQuery;
begin
     Query := TFDQuery.Create(nil);
     try
            Query.Connection := DM.conBanco;

            Query.SQL.Text := 'INSERT INTO TELEFONE (PESSOA, NUMTELEFONE, TIPO) ' +
                              'VALUES (:PESSOA, :NUMTELEFONE, :TIPO)';
            Query.ParamByName('PESSOA').AsInteger := FPessoa;
            Query.ParamByName('NUMTELEFONE').AsString := FNumeroTelefone;
            Query.ParamByName('TIPO').AsInteger := FTipo;

            Query.ExecSQL;
     finally
            Query.Free;
     end;
end;

procedure TTelefone.Excluir;
var
  Query: TFDQuery;
begin
     Query := TFDQuery.Create(nil);
     try
            Query.Connection := DM.conBanco;

            Query.SQL.Text := 'DELETE FROM TELEFONE WHERE CODIGO = :CODIGO';
            Query.ParamByName('CODIGO').AsInteger := FCodigo;
            Query.ExecSQL;
     finally
            Query.Free;
     end;
end;

procedure TTelefone.Atualizar;
var
  Query: TFDQuery;
begin
     Query := TFDQuery.Create(nil);
     try
            Query.Connection := DM.conBanco;

            Query.SQL.Text := 'UPDATE TELEFONE SET PESSOA = :PESSOA, NUMTELEFONE = :NUMTELEFONE, ' +
                              'TIPO = :TIPO WHERE CODIGO = :CODIGO';
            Query.ParamByName('PESSOA').AsInteger := FPessoa;
            Query.ParamByName('NUMTELEFONE').AsString := FNumeroTelefone;
            Query.ParamByName('TIPO').AsInteger := FTipo;
            Query.ParamByName('CODIGO').AsInteger := FCodigo;

            Query.ExecSQL;
     finally
            Query.Free;
     end;
end;

procedure TTelefone.ConsultarPorCodigo(Codigo: Integer);
var
  Query: TFDQuery;
begin
     Query := TFDQuery.Create(nil);
     try
            Query.Connection := DM.conBanco;

            Query.SQL.Text := 'SELECT * FROM TELEFONE WHERE CODIGO = :CODIGO';
            Query.ParamByName('CODIGO').AsInteger := Codigo;

            Query.Open;

            if not Query.IsEmpty then
            begin
              FCodigo := Query.FieldByName('CODIGO').AsInteger;
              FPessoa := Query.FieldByName('PESSOA').AsInteger;
              FNumeroTelefone := Query.FieldByName('NUMTELEFONE').AsString;
              FTipo := Query.FieldByName('TIPO').AsInteger;
            end;
     finally
            Query.Free;
     end;
end;


end.
