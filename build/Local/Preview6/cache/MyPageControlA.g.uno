public partial class MyPageControlA: Fuse.Controls.Panel
{
    public partial class Factory: Uno.UX.Factory
    {
        internal readonly MyPageControlA __parent;
        public Factory(MyPageControlA parent): base(null, false)
        {
            __parent = parent;
        }
        FuseApp_FuseControlsTextControl_string_Value_Property self_Value_inst;
        static Factory()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Text();
            self_Value_inst = new FuseApp_FuseControlsTextControl_string_Value_Property(self);
            var temp = new Fuse.Reactive.DataBinding<string>(self_Value_inst, "name");
            self.Behaviors.Add(temp);
            return self;
        }
    }
    public partial class Factory1: Uno.UX.Factory
    {
        internal readonly MyPageControlA __parent;
        public Factory1(MyPageControlA parent): base(null, false)
        {
            __parent = parent;
        }
        FuseApp_FuseControlsTextControl_string_Value_Property self_Value_inst;
        static Factory1()
        {
        }
        public override object New()
        {
            var self = new Fuse.Controls.Text();
            self_Value_inst = new FuseApp_FuseControlsTextControl_string_Value_Property(self);
            var temp = new Fuse.Reactive.DataBinding<string>(self_Value_inst, "age");
            self.Behaviors.Add(temp);
            return self;
        }
    }
    FuseApp_FuseControlsTextControl_string_Value_Property temp_Value_inst;
    FuseApp_FuseControlsTextControl_string_Value_Property temp1_Value_inst;
    FuseApp_FuseControlsTextControl_string_Value_Property temp2_Value_inst;
    FuseApp_FuseControlsToggleControl_bool_Value_Property temp3_Value_inst;
    FuseApp_FuseReactiveEach_object_Items_Property temp4_Items_inst;
    internal Fuse.Reactive.EventBinding temp_eb0;
    static MyPageControlA()
    {
    }
    public MyPageControlA()
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
        var temp4 = new Fuse.Reactive.Each();
        temp4_Items_inst = new FuseApp_FuseReactiveEach_object_Items_Property(temp4);
        var temp5 = new Fuse.Reactive.JavaScript();
        var temp6 = new Fuse.Controls.Page();
        var temp7 = new Fuse.Controls.StackPanel();
        var temp8 = new Fuse.Controls.Text();
        var temp9 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "myVariable");
        var temp10 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "uppercase");
        var temp11 = new Fuse.Reactive.DataBinding<string>(temp2_Value_inst, "lowercase");
        var temp12 = new Fuse.Reactive.DataBinding<bool>(temp3_Value_inst, "isThomas");
        var temp13 = new Fuse.Controls.Button();
        temp_eb0 = new Fuse.Reactive.EventBinding("button_clicked");
        var temp14 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0.8f, 0f, 1f));
        var temp15 = new Fuse.Controls.Page();
        var temp16 = new Fuse.Controls.StackPanel();
        var temp17 = new Fuse.Controls.Text();
        var temp18 = new Factory(this);
        var temp19 = new Factory1(this);
        var temp20 = new Fuse.Reactive.DataBinding<object>(temp4_Items_inst, "myPerson");
        var temp21 = new Fuse.Drawing.StaticSolidColor(float4(0f, 1f, 0.8f, 1f));
        var temp22 = new Fuse.Controls.Page();
        var temp23 = new Fuse.Controls.Text();
        var temp24 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 0f, 1f, 1f));
        temp5.Code = "var Observable = require('FuseJS/Observable');\n\n        \t\t\t\tvar myVariable = Observable(\"some value\");\n\n        \t\t\t\tvar lowercase = myVariable.map(function(x){\n        \t\t\t\t\treturn x.toLowerCase();\n        \t\t\t\t});\n\n        \t\t\t\tvar uppercase = myVariable.map(function(x){\n        \t\t\t\t\treturn x.toUpperCase();\n        \t\t\t\t});\n\n\n        \t\t\t\tvar isThomas = myVariable.map(function(x){\n        \t\t\t\t\treturn x==\"Thomas\";\n        \t\t\t\t});\n\n        \t\t\t\tfunction button_clicked(){\n        \t\t\t\t\tmyVariable.value = \"some other value\";\n        \t\t\t\t\tdebug_log(myVariable);\n        \t\t\t\t}\n\n        \t\t\t\tfunction Person(name, age){\n        \t\t\t\t\tthis.name = name;\n        \t\t\t\t\tthis.age = age;\n        \t\t\t\t}\n\n        \t\t\t\tvar myPerson = Observable(\n        \t\t\t\t\tnew Person(\"Thomas\", 25),\n        \t\t\t\t\tnew Person(\"Cassandre\", 25)\n        \t\t\t\t);\n\n        \t\t\t\tmodule.exports = {\n        \t\t\t\t\tmyVariable : myVariable,\n        \t\t\t\t\tbutton_clicked: button_clicked,\n        \t\t\t\t\tuppercase : uppercase,\n        \t\t\t\t\tlowercase : lowercase,\n        \t\t\t\t\tisThomas: isThomas,\n        \t\t\t\t\tmyPerson : myPerson\n        \t\t\t\t}";
        temp5.LineNumber = 2;
        temp5.FileName = "C:\\Users\\TNeuraz\\Documents\\Perso\\FuseApp\\MyPageControlA.ux";
        temp6.Background = temp14;
        temp6.Children.Add(temp7);
        temp7.Children.Add(temp8);
        temp7.Children.Add(temp);
        temp7.Children.Add(temp1);
        temp7.Children.Add(temp2);
        temp7.Children.Add(temp3);
        temp7.Children.Add(temp13);
        temp8.Value = "A1";
        temp.Behaviors.Add(temp9);
        temp1.Behaviors.Add(temp10);
        temp2.Behaviors.Add(temp11);
        temp3.Behaviors.Add(temp12);
        temp13.Text = "Change the value!";
        global::Fuse.Gestures.Clicked.AddHandler(temp13, temp_eb0.OnEvent);
        temp13.Behaviors.Add(temp_eb0);
        temp15.Background = temp21;
        temp15.Children.Add(temp16);
        temp16.Children.Add(temp17);
        temp16.Behaviors.Add(temp20);
        temp16.Behaviors.Add(temp4);
        temp17.Value = "A2";
        temp4.Factories.Add(temp18);
        temp4.Factories.Add(temp19);
        temp22.Background = temp24;
        temp22.Children.Add(temp23);
        temp23.Value = "A3";
        this.Children.Add(temp6);
        this.Children.Add(temp15);
        this.Children.Add(temp22);
        this.Behaviors.Add(temp5);
    }
}
