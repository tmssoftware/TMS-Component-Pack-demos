{*********************************************************************}
{ TADVSTRINGGRID Check interface for Addict Spell Checker component   }
{ for Delphi & C++Builder                                             }
{                                                                     }
{ written by TMS Software                                             }
{            copyright © 2009                                         }
{            Email : info@tmssoftware.com                             }
{            Web : http://www.tmssoftware.com                         }
{*********************************************************************}

unit AsgAddictCheckReg;

interface

uses
  Classes, AsgAddictCheck;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Grids', [TAddictCheck]);
end;

end.
