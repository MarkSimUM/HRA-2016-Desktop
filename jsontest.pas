unit JsonTest;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, HTTPDefs, websession, fpHTTP, fpWeb, fpjsonrpc, 
    webjsonrpc;

type
  TJSONRPCModule1 = class(TJSONRPCModule)
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  JSONRPCModule1: TJSONRPCModule1;

implementation

{$R *.lfm}

end.

