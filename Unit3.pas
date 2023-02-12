unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TForm3 = class(TForm)
    Rectangle1: TRectangle;
    Label1: TLabel;
    Rectangle2: TRectangle;
    Label2: TLabel;
    Rectangle3: TRectangle;
    Label3: TLabel;
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}
 uses Unit1;
procedure TForm3.Label2Click(Sender: TObject);
begin
         application.Terminate;
end;

procedure TForm3.Label3Click(Sender: TObject);
begin
   Form3.Hide;
   Form1.Show;
end;

end.
