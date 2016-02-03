public partial class MyPage: Fuse.Controls.Page
{
    FuseApp_FuseControlsTextControl_string_Value_Property temp_Value_inst;
    FuseApp_FuseControlsTextControl_string_Value_Property temp1_Value_inst;
    FuseApp_FuseControlsTextControl_string_Value_Property temp2_Value_inst;
    FuseApp_FuseControlsToggleControl_bool_Value_Property temp3_Value_inst;
    internal Fuse.Reactive.EventBinding temp_eb2;
    static MyPage()
    {
    }
    public MyPage()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Controls.TextInput();
        temp_Value_inst = new FuseApp_FuseControlsTextControl_string_Value_Property(temp);
        var temp1 = new Fuse.Controls.Text();
        temp1_Value_inst = new FuseApp_FuseControlsTextControl_string_Value_Property(temp1);
        var temp2 = new Fuse.Controls.Text();
        temp2_Value_inst = new FuseApp_FuseControlsTextControl_string_Value_Property(temp2);
        var temp3 = new Fuse.Controls.Switch();
        temp3_Value_inst = new FuseApp_FuseControlsToggleControl_bool_Value_Property(temp3);
        var temp4 = new Fuse.Controls.StackPanel();
        var temp5 = new Fuse.Controls.Text();
        var temp6 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "myVariable");
        var temp7 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "uppercase");
        var temp8 = new Fuse.Reactive.DataBinding<string>(temp2_Value_inst, "lowercase");
        var temp9 = new Fuse.Reactive.DataBinding<bool>(temp3_Value_inst, "isThomas");
        var temp10 = new Fuse.Controls.Button();
        temp_eb2 = new Fuse.Reactive.EventBinding("button_clicked");
        var temp11 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0.8f, 0f, 1f));
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp);
        temp4.Children.Add(temp1);
        temp4.Children.Add(temp2);
        temp4.Children.Add(temp3);
        temp4.Children.Add(temp10);
        temp5.Value = "A1";
        temp.Behaviors.Add(temp6);
        temp1.Behaviors.Add(temp7);
        temp2.Behaviors.Add(temp8);
        temp3.Behaviors.Add(temp9);
        temp10.Text = "Change the value!";
        global::Fuse.Gestures.Clicked.AddHandler(temp10, temp_eb2.OnEvent);
        temp10.Behaviors.Add(temp_eb2);
        this.Background = temp11;
        this.Children.Add(temp4);
    }
}
