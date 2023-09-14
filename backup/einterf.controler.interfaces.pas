unit einterf.controler.Interfaces;

{$mode ObjFPC}{$H+}

interface

uses
   Classes, SysUtils, eIntervace.Model.Interfaces;

type
   tTypePessoa = (tpFisica, tpJuridica);

   iControlerPessoa = interface
      ['{EACBC13F-6BF1-4B32-85E8-F9A7DF4BA259}']
      function Pessoa(Value : tTypePessoa) : iPessoa;
   end;

implementation

end.
