unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TForm2 = class(TForm)
    Rectangle1: TRectangle;
    Label1: TLabel;
    Rectangle2: TRectangle;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.SSW3.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses Unit1;
procedure TForm2.Button1Click(Sender: TObject);
begin
    Form1.Visible:=True;
    Form2.Hide;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

Form2.Caption:='';
end;

end.
