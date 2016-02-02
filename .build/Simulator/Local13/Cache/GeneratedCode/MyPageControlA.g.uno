public partial class MyPageControlA: Fuse.Controls.PageControl
{
    public sealed class Fuse_Controls_TextControl_string_Value_Property: Uno.UX.Property<string>
    {
        Fuse.Controls.TextControl _obj;
        public Fuse_Controls_TextControl_string_Value_Property(Fuse.Controls.TextControl obj) { _obj = obj; }
        protected override string OnGet() { return _obj.Value; }
        protected override void OnSet(string v, object origin) { _obj.SetValue(v, origin); }
        protected override void OnAddListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged += listener; }
        protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged -= listener; }
    }
    public sealed class Fuse_Controls_ToggleControl_bool_Value_Property: Uno.UX.Property<bool>
    {
        Fuse.Controls.ToggleControl _obj;
        public Fuse_Controls_ToggleControl_bool_Value_Property(Fuse.Controls.ToggleControl obj) { _obj = obj; }
        protected override bool OnGet() { return _obj.Value; }
        protected override void OnSet(bool v, object origin) { _obj.SetValue(v, origin); }
        protected override void OnAddListener(Uno.UX.ValueChangedHandler<bool> listener) { _obj.ValueChanged += listener; }
        protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<bool> listener) { _obj.ValueChanged -= listener; }
    }
    MyPageControlA.Fuse_Controls_TextControl_string_Value_Property temp_Value_inst;
    MyPageControlA.Fuse_Controls_TextControl_string_Value_Property temp1_Value_inst;
    MyPageControlA.Fuse_Controls_TextControl_string_Value_Property temp2_Value_inst;
    MyPageControlA.Fuse_Controls_ToggleControl_bool_Value_Property temp3_Value_inst;
    internal Fuse.Reactive.EventBinding temp_eb0;
    static MyPageControlA()
    {
    }
    public MyPageControlA()
    {
        InitializeUX();
    }
    internal new void InitializeUX()
    {
        var temp = new Fuse.Controls.TextInput();
        temp_Value_inst = new MyPageControlA.Fuse_Controls_TextControl_string_Value_Property(temp);
        var temp1 = new Fuse.Controls.Text();
        temp1_Value_inst = new MyPageControlA.Fuse_Controls_TextControl_string_Value_Property(temp1);
        var temp2 = new Fuse.Controls.Text();
        temp2_Value_inst = new MyPageControlA.Fuse_Controls_TextControl_string_Value_Property(temp2);
        var temp3 = new Fuse.Controls.Switch();
        temp3_Value_inst = new MyPageControlA.Fuse_Controls_ToggleControl_bool_Value_Property(temp3);
        var temp4 = new Fuse.Reactive.JavaScript();
        var temp5 = new Fuse.Controls.Page();
        var temp6 = new Fuse.Controls.StackPanel();
        var temp7 = new Fuse.Controls.Text();
        var temp8 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "myVariable");
        var temp9 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "uppercase");
        var temp10 = new Fuse.Reactive.DataBinding<string>(temp2_Value_inst, "lowercase");
        var temp11 = new Fuse.Reactive.DataBinding<bool>(temp3_Value_inst, "isThomas");
        var temp12 = new Fuse.Controls.Button();
        temp_eb0 = new Fuse.Reactive.EventBinding("button_clicked");
        var temp13 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0.8f, 0f, 1f));
        var temp14 = new Fuse.Controls.Page();
        var temp15 = new Fuse.Controls.StackPanel();
        var temp16 = new Fuse.Controls.Text();
        var temp17 = new Fuse.Drawing.StaticSolidColor(float4(0f, 1f, 0.8f, 1f));
        var temp18 = new Fuse.Controls.Page();
        var temp19 = new Fuse.Controls.Text();
        var temp20 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 0f, 1f, 1f));
        this.Name = "MyPageControlA";
        temp4.Code = "var Observable = require('FuseJS/Observable');\n\n\t\t\t\tvar myVariable = Observable(\"some value\");\n\n\t\t\t\tvar lowercase = myVariable.map(function(x){\n\t\t\t\t\treturn x.toLowerCase();\n\t\t\t\t});\n\n\t\t\t\tvar uppercase = myVariable.map(function(x){\n\t\t\t\t\treturn x.toUpperCase();\n\t\t\t\t});\n\n\n\t\t\t\tvar isThomas = myVariable.map(function(x){\n\t\t\t\t\treturn x==\"Thomas\";\n\t\t\t\t});\n\n\t\t\t\tfunction button_clicked(){\n\t\t\t\t\tmyVariable.value = \"some other value\";\n\t\t\t\t\tdebug_log(myVariable);\n\t\t\t\t}\n\n\t\t\t\tfunction Person(name, age){\n\t\t\t\t\tthis.name = name;\n\t\t\t\t\tthis.age = age;\n\t\t\t\t}\n\n\t\t\t\t// var myPerson = Observable(\n\t\t\t\t// \tnew Person(\"Thomas\", 25),\n\t\t\t\t// \tnew Person(\"Cassandre\", 25)\n\t\t\t\t// );\n\n\t\t\t\tmodule.exports = {\n\t\t\t\t\tmyVariable : myVariable,\n\t\t\t\t\tbutton_clicked: button_clicked,\n\t\t\t\t\tuppercase : uppercase,\n\t\t\t\t\tlowercase : lowercase,\n\t\t\t\t\tisThomas: isThomas,\n\t\t\t\t\tmyPerson : myPerson\n\t\t\t\t}";
        temp4.LineNumber = 2;
        temp4.FileName = "MyPageControlA.ux";
        temp5.Background = temp13;
        temp5.Children.Add(temp6);
        temp6.Children.Add(temp7);
        temp6.Children.Add(temp);
        temp6.Children.Add(temp1);
        temp6.Children.Add(temp2);
        temp6.Children.Add(temp3);
        temp6.Children.Add(temp12);
        temp7.Value = "A1";
        temp.Behaviors.Add(temp8);
        temp1.Behaviors.Add(temp9);
        temp2.Behaviors.Add(temp10);
        temp3.Behaviors.Add(temp11);
        temp12.Text = "Change the value!";
        global::Fuse.Gestures.Clicked.AddHandler(temp12, temp_eb0.OnEvent);
        temp12.Behaviors.Add(temp_eb0);
        temp14.Background = temp17;
        temp14.Children.Add(temp15);
        temp15.Children.Add(temp16);
        temp16.Value = "A2";
        temp18.Background = temp20;
        temp18.Children.Add(temp19);
        temp19.Value = "A3";
        this.Children.Add(temp5);
        this.Children.Add(temp14);
        this.Children.Add(temp18);
        this.Behaviors.Add(temp4);
    }
}
