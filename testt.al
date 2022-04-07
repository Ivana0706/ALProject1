page 50103 MojaStranica
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Item;
    Caption = 'Moja lepa stranica';
    layout
    {
        area(Content)
        {
            group(MojaGrupa)
            {
                Caption = 'Moja grupa';

                field(Name; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Ime artikla';
                }

                field("No"; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'ID artikla';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Image = LedgerBook;

                trigger OnAction()
                begin
                    Message('Hello world');
                end;
            }
        }
    }
    var
        nekaPromjenljiva: Integer;

    trigger OnOpenPage()
    var
        ime: Text;
    begin
        ime := Rec.Description;
        Message('Ovo je artikal po imenu %1', Rec.Description);
        MojaFunkcija();
    end;

    local procedure MojaFunkcija()
    var
        broj: Integer;
    begin
        broj := 5;
        Message('Ovo je broj: %1', broj);
    end;
}