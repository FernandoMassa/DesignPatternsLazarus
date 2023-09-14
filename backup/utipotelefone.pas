unit uTipoTelefone;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, TypInfo;

type
  TTipoTelefone = (COMERCIAL, RECIDENCIAL, CELULAR);

  TTipoTelefoneHelper = record helper for TTipoTelefone
    function ToString : String;

  end;

implementation

end.

