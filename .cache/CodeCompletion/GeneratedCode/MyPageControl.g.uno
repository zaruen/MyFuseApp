public partial class MyPageControl: Fuse.Controls.PageControl
{
    static MyPageControl()
    {
    }
    public MyPageControl()
    {
        InitializeUX();
    }
    internal new void InitializeUX()
    {
        var temp = new Fuse.Controls.Page();
        var temp1 = new Fuse.Controls.Text();
        var temp2 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0.8f, 0f, 1f));
        var temp3 = new Fuse.Controls.Page();
        var temp4 = new Fuse.Controls.Text();
        var temp5 = new Fuse.Drawing.StaticSolidColor(float4(0f, 1f, 0.8f, 1f));
        var temp6 = new Fuse.Controls.Page();
        var temp7 = new Fuse.Controls.Text();
        var temp8 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 0f, 1f, 1f));
        this.Name = "MyPageControl";
        temp.Background = temp2;
        temp.Children.Add(temp1);
        temp1.Value = "A1";
        temp3.Background = temp5;
        temp3.Children.Add(temp4);
        temp4.Value = "A2";
        temp6.Background = temp8;
        temp6.Children.Add(temp7);
        temp7.Value = "A3";
        this.Children.Add(temp);
        this.Children.Add(temp3);
        this.Children.Add(temp6);
    }
}
