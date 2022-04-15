unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Shape1: TShape;
    Target: TLabel;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Target.Caption := '';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Randomize;
  case RadioGroup1.ItemIndex of
    0: if random(2) = 0 then Target.Caption := 'Yes' else Target.Caption := 'No';
    1: Target.Caption := IntToStr(random(2));
    2: Target.Caption := IntToStr(random(3));
    3: Target.Caption := IntToStr(random(5));
    4: Target.Caption := IntToStr(random(6));
    5: Target.Caption := IntToStr(random(11));
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Randomize;
end;



end.

