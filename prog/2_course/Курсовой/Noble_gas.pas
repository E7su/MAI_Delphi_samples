unit Noble_gas;


   {��������� (������������� ��������):
    ������ �����������
    �������� ��� �������}


interface

  uses Basic, StdCtrls, SysUtils;

  type
    TInertGases=class(TChemicalElements)      //�������� ����

  private
    LightColor:string;            //���� ��������
    BoilingPoint:real;            //����������� �������

  public
    constructor Init(aName: string; aNumber: integer; aMass: real; aLightColor:string; aBoilingPoint:real);
    function get_lightColor():string;
    function get_boilingPoint():real;
    procedure print(memo:TMemo); override;
  end;


implementation

  constructor TInertGases.Init(aName: string; aNumber: integer; aMass: real; aLightColor:string; aBoilingPoint:real);
    begin
      inherited Init(aName,aNumber,aMass);
      lightColor:=aLightColor;
      boilingPoint:=aBoilingPoint;
    end;

  function TInertGases.get_lightColor():string;
    begin
      result:=lightColor;
    end;

  function TInertGases.get_boilingPoint():real;
    begin
      result:=boilingPoint;
    end;

    procedure TInertGases.print(memo:TMemo);
      begin
        inherited print(memo);
        memo.lines.add('Light Color: ' + LightColor );
        memo.lines.add('Boiling Point: ' + floattostr(BoilingPoint));
      end;
end.

