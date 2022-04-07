pageextension 50101 "Customer Year Page" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(Year; Rec.Year)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Year of Cooperation field.';

            }
        }
        // moja nova izmena
        // moja druga izmena
        // moja treca izmena
        // moja cetvrta izmena
    }


}
