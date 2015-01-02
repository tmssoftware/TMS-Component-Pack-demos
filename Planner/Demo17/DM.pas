unit DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ApoEnv, Db, ApoDSet, ImgList;

type
  TDM1 = class(TDataModule)
    TodoAP: TApolloTable;
    TodoDS: TDataSource;
    PlannerAP: TApolloTable;
    PlannerDS: TDataSource;
    ApolloEnv1: TApolloEnv;
    PlannerImageList: TImageList;
    TodoImageList: TImageList;
    PriorityImageList: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{$R *.DFM}

end.
