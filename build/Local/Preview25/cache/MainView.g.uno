public partial class MainView: Fuse.App
{
    public partial class Template: Uno.UX.Template<Fuse.Controls.PageControl>
    {
        internal readonly MainView __parent;
        public Template(MainView parent)
        {
            __parent = parent;
        }
        public partial class Template1: Uno.UX.Template<Fuse.Controls.Text>
        {
            internal readonly Template __parent;
            public Template1(Template parent)
            {
                __parent = parent;
            }
            static Template1()
            {
            }
            protected override void OnApply(Fuse.Controls.Text self)
            {
                Fuse.Controls.TextControl.FontSizeProperty.SetStyle(self, 30f);
                Fuse.Elements.Element.AlignmentProperty.SetStyle(self, Fuse.Elements.Alignment.Center);
            }
        }
        static Template()
        {
        }
        protected override void OnApply(Fuse.Controls.PageControl self)
        {
            var temp = new Fuse.Style();
            var temp1 = new Template1(this) { Cascade = true, AffectSubtypes = true };
            var temp2 = new Fuse.Navigation.EnteringAnimation();
            var temp3 = new Fuse.Animations.Move();
            var temp4 = new Fuse.Navigation.ExitingAnimation();
            var temp5 = new Fuse.Animations.Move();
            Fuse.Elements.Element.ClipToBoundsProperty.SetStyle(self, true);
            temp.Templates.Add(temp1);
            temp2.Animators.Add(temp3);
            temp3.Y = -1f;
            temp3.RelativeTo = Fuse.TranslationModes.Size;
            temp4.Animators.Add(temp5);
            temp5.Y = 1f;
            temp5.RelativeTo = Fuse.TranslationModes.Size;
            self.AddStyleBehavior(temp2);
            self.AddStyleBehavior(temp4);
            self.AddStyleStyle(temp);
        }
    }
    public partial class Factory: Uno.UX.Factory
    {
        internal readonly MainView __parent;
        public Factory(MainView parent): base(null, false)
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
        internal readonly MainView __parent;
        public Factory1(MainView parent): base(null, false)
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
    FuseApp_FuseControlsTextControl_string_Value_Property temp4_Value_inst;
    FuseApp_FuseControlsTextControl_string_Value_Property temp5_Value_inst;
    FuseApp_FuseReactiveEach_object_Items_Property temp6_Items_inst;
    internal Fuse.Navigation.LinearNavigation _mainNavigation;
    internal Fuse.Controls.PageControl _a;
    internal Fuse.Reactive.EventBinding temp_eb0;
    internal Fuse.Reactive.EventBinding temp_eb1;
    internal Fuse.Controls.PageControl _b;
    static MainView()
    {
    }
    public MainView()
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
        var temp4 = new Fuse.Controls.TextInput();
        temp4_Value_inst = new FuseApp_FuseControlsTextControl_string_Value_Property(temp4);
        var temp5 = new Fuse.Controls.TextInput();
        temp5_Value_inst = new FuseApp_FuseControlsTextControl_string_Value_Property(temp5);
        var temp6 = new Fuse.Reactive.Each();
        temp6_Items_inst = new FuseApp_FuseReactiveEach_object_Items_Property(temp6);
        var temp7 = new Fuse.Controls.ClientPanel();
        var temp8 = new Fuse.Controls.DockPanel();
        var temp9 = new Fuse.Controls.Grid();
        var temp10 = new Fuse.Controls.Button();
        var temp11 = new Fuse.Gestures.Clicked();
        var temp12 = new Fuse.Navigation.NavigateTo();
        var temp13 = new Fuse.Controls.Button();
        var temp14 = new Fuse.Gestures.Clicked();
        var temp15 = new Fuse.Navigation.NavigateTo();
        var temp16 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp17 = new Fuse.Controls.Panel();
        _mainNavigation = new Fuse.Navigation.LinearNavigation();
        var temp18 = new Fuse.Style();
        var temp19 = new Template(this) { Cascade = true, AffectSubtypes = true };
        _a = new Fuse.Controls.PageControl();
        var temp20 = new Fuse.Reactive.JavaScript();
        var temp21 = new MyPage();
        var temp22 = new Fuse.Controls.Page();
        var temp23 = new Fuse.Controls.StackPanel();
        var temp24 = new Fuse.Controls.Text();
        var temp25 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "myVariable");
        var temp26 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "uppercase");
        var temp27 = new Fuse.Reactive.DataBinding<string>(temp2_Value_inst, "lowercase");
        var temp28 = new Fuse.Reactive.DataBinding<bool>(temp3_Value_inst, "isThomas");
        var temp29 = new Fuse.Controls.Button();
        temp_eb0 = new Fuse.Reactive.EventBinding("button_clicked");
        var temp30 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0.8f, 0f, 1f));
        var temp31 = new Fuse.Controls.Page();
        var temp32 = new Fuse.Controls.StackPanel();
        var temp33 = new Fuse.Controls.StackPanel();
        var temp34 = new Fuse.Reactive.DataBinding<string>(temp4_Value_inst, "name");
        var temp35 = new Fuse.Reactive.DataBinding<string>(temp5_Value_inst, "age");
        var temp36 = new Fuse.Controls.Button();
        temp_eb1 = new Fuse.Reactive.EventBinding("submit");
        var temp37 = new Factory(this);
        var temp38 = new Factory1(this);
        var temp39 = new Fuse.Reactive.DataBinding<object>(temp6_Items_inst, "listUppercase");
        var temp40 = new Fuse.Drawing.StaticSolidColor(float4(0f, 1f, 0.8f, 1f));
        var temp41 = new Fuse.Controls.Page();
        var temp42 = new Fuse.Controls.Text();
        var temp43 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 0f, 1f, 1f));
        _b = new Fuse.Controls.PageControl();
        var temp44 = new Fuse.Controls.Page();
        var temp45 = new Fuse.Controls.Text();
        var temp46 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 1f, 0f, 1f));
        var temp47 = new Fuse.Controls.Page();
        var temp48 = new Fuse.Controls.Text();
        var temp49 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp50 = new Fuse.Controls.Page();
        var temp51 = new Fuse.Controls.Text();
        var temp52 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0f, 0.8f, 1f));
        this.Background = float4(1f, 0.9411765f, 0f, 1f);
        temp7.Children.Add(temp8);
        temp8.Children.Add(temp9);
        temp8.Children.Add(temp17);
        temp9.ColumnCount = 2;
        global::Fuse.Controls.DockPanel.SetDock(temp9, Fuse.Layouts.Dock.Top);
        temp9.Background = temp16;
        temp9.Children.Add(temp10);
        temp9.Children.Add(temp13);
        temp10.Text = "A";
        temp10.Behaviors.Add(temp11);
        temp11.Actions.Add(temp12);
        temp12.Target = _a;
        temp12.NavigationContext = _mainNavigation;
        temp13.Text = "B";
        temp13.Behaviors.Add(temp14);
        temp14.Actions.Add(temp15);
        temp15.Target = _b;
        temp15.NavigationContext = _mainNavigation;
        global::Fuse.Controls.DockPanel.SetDock(temp17, Fuse.Layouts.Dock.Fill);
        temp17.Children.Add(_a);
        temp17.Children.Add(_b);
        temp17.Behaviors.Add(_mainNavigation);
        temp17.Styles.Add(temp18);
        _mainNavigation.Easing = Fuse.Animations.Easing.CubicInOut;
        temp18.Templates.Add(temp19);
        _a.Name = "_a";
        _a.Children.Add(temp21);
        _a.Children.Add(temp22);
        _a.Children.Add(temp31);
        _a.Children.Add(temp41);
        _a.Behaviors.Add(temp20);
        temp20.Code = "var Observable = require('FuseJS/Observable');\n\n        \t\t\t\tvar myVariable = Observable(\"some value\");\n        \t\t\t\tvar name = Observable(\"\");\n        \t\t\t\tvar age = Observable(\"\");\n\n        \t\t\t\tvar lowercase = myVariable.map(function(x){\n        \t\t\t\t\treturn x.toLowerCase();\n        \t\t\t\t});\n\n        \t\t\t\tvar uppercase = myVariable.map(function(x){\n        \t\t\t\t\treturn x.toUpperCase();\n        \t\t\t\t});\n\n\n        \t\t\t\tvar isThomas = myVariable.map(function(x){\n        \t\t\t\t\treturn x==\"Thomas\";\n        \t\t\t\t});\n\n        \t\t\t\tfunction button_clicked(){\n        \t\t\t\t\tmyVariable.value = \"some other value\";\n        \t\t\t\t\tdebug_log(myVariable);\n        \t\t\t\t}\n\n        \t\t\t\tfunction Person(name, age){\n        \t\t\t\t\tthis.name = name;\n        \t\t\t\t\tthis.age = age;\n        \t\t\t\t}\n\n        \t\t\t\tvar myPerson = Observable(\n        \t\t\t\t\tnew Person(\"Thomas\", 25),\n        \t\t\t\t\tnew Person(\"Cassandre\", 25)\n        \t\t\t\t);\n\n        \t\t\t\tvar listUppercase = myPerson\n        \t\t\t\t.map(function(x){\n\t\t\t\t\t\t\treturn new Person(x.name.toUpperCase(), x.age);\n        \t\t\t\t})\n        \t\t\t\t.where(function(x){\n        \t\t\t\t\treturn x.age > 30;\n        \t\t\t\t});\n\n        \t\t\t\tfunction submit(){\n        \t\t\t\t\tvar newPerson = new Person(name.value, age.value);\n        \t\t\t\t\tmyPerson.add(newPerson);\n        \t\t\t\t\tname.value=\"\";\n        \t\t\t\t\tage.value=\"\";\n        \t\t\t\t}\n\n        \t\t\t\tmodule.exports = {\n        \t\t\t\t\tmyVariable : myVariable,\n        \t\t\t\t\tbutton_clicked: button_clicked,\n        \t\t\t\t\tuppercase : uppercase,\n        \t\t\t\t\tlowercase : lowercase,\n        \t\t\t\t\tisThomas: isThomas,\n        \t\t\t\t\tmyPerson : myPerson,\n        \t\t\t\t\tname : name,\n        \t\t\t\t\tage: age,\n        \t\t\t\t\tsubmit : submit,\n        \t\t\t\t\tlistUppercase : listUppercase\n        \t\t\t\t}";
        temp20.LineNumber = 75;
        temp20.FileName = "C:\\Users\\TNeuraz\\Documents\\Perso\\FuseApp\\MainView.ux";
        temp22.Background = temp30;
        temp22.Children.Add(temp23);
        temp23.Children.Add(temp24);
        temp23.Children.Add(temp);
        temp23.Children.Add(temp1);
        temp23.Children.Add(temp2);
        temp23.Children.Add(temp3);
        temp23.Children.Add(temp29);
        temp24.Value = "A1";
        temp.Behaviors.Add(temp25);
        temp1.Behaviors.Add(temp26);
        temp2.Behaviors.Add(temp27);
        temp3.Behaviors.Add(temp28);
        temp29.Text = "Change the value!";
        global::Fuse.Gestures.Clicked.AddHandler(temp29, temp_eb0.OnEvent);
        temp29.Behaviors.Add(temp_eb0);
        temp31.Background = temp40;
        temp31.Children.Add(temp32);
        temp32.Children.Add(temp33);
        temp32.Behaviors.Add(temp39);
        temp32.Behaviors.Add(temp6);
        temp33.Children.Add(temp4);
        temp33.Children.Add(temp5);
        temp33.Children.Add(temp36);
        temp4.Behaviors.Add(temp34);
        temp5.Behaviors.Add(temp35);
        temp36.Text = "Submit";
        global::Fuse.Gestures.Clicked.AddHandler(temp36, temp_eb1.OnEvent);
        temp36.Behaviors.Add(temp_eb1);
        temp6.Factories.Add(temp37);
        temp6.Factories.Add(temp38);
        temp41.Background = temp43;
        temp41.Children.Add(temp42);
        temp42.Value = "A3";
        _b.Name = "_b";
        _b.Children.Add(temp44);
        _b.Children.Add(temp47);
        _b.Children.Add(temp50);
        temp44.Background = temp46;
        temp44.Children.Add(temp45);
        temp45.Value = "B1";
        temp47.Background = temp49;
        temp47.Children.Add(temp48);
        temp48.Value = "B2";
        temp50.Background = temp52;
        temp50.Children.Add(temp51);
        temp51.Value = "B3";
        this.RootNode = temp7;
        this.Theme = Fuse.BasicTheme.BasicTheme.Singleton;
    }
}
