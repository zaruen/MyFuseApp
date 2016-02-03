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
    public partial class Factory2: Uno.UX.Factory
    {
        internal readonly MainView __parent;
        public Factory2(MainView parent): base(null, false)
        {
            __parent = parent;
        }
        FuseApp_FuseControlsTextControl_string_Value_Property self_Value_inst;
        static Factory2()
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
    public partial class Factory3: Uno.UX.Factory
    {
        internal readonly MainView __parent;
        public Factory3(MainView parent): base(null, false)
        {
            __parent = parent;
        }
        FuseApp_FuseControlsTextControl_string_Value_Property self_Value_inst;
        static Factory3()
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
    FuseApp_FuseReactiveEach_object_Items_Property temp7_Items_inst;
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
        var temp7 = new Fuse.Reactive.Each();
        temp7_Items_inst = new FuseApp_FuseReactiveEach_object_Items_Property(temp7);
        var temp8 = new Fuse.Controls.ClientPanel();
        var temp9 = new Fuse.Controls.DockPanel();
        var temp10 = new Fuse.Controls.Grid();
        var temp11 = new Fuse.Controls.Button();
        var temp12 = new Fuse.Gestures.Clicked();
        var temp13 = new Fuse.Navigation.NavigateTo();
        var temp14 = new Fuse.Controls.Button();
        var temp15 = new Fuse.Gestures.Clicked();
        var temp16 = new Fuse.Navigation.NavigateTo();
        var temp17 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp18 = new Fuse.Controls.Panel();
        _mainNavigation = new Fuse.Navigation.LinearNavigation();
        var temp19 = new Fuse.Style();
        var temp20 = new Template(this) { Cascade = true, AffectSubtypes = true };
        _a = new Fuse.Controls.PageControl();
        var temp21 = new Fuse.Reactive.JavaScript();
        var temp22 = new MyPage();
        var temp23 = new Fuse.Controls.Page();
        var temp24 = new Fuse.Controls.StackPanel();
        var temp25 = new Fuse.Controls.Text();
        var temp26 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "myVariable");
        var temp27 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "uppercase");
        var temp28 = new Fuse.Reactive.DataBinding<string>(temp2_Value_inst, "lowercase");
        var temp29 = new Fuse.Reactive.DataBinding<bool>(temp3_Value_inst, "isThomas");
        var temp30 = new Fuse.Controls.Button();
        temp_eb0 = new Fuse.Reactive.EventBinding("button_clicked");
        var temp31 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0.8f, 0f, 1f));
        var temp32 = new Fuse.Controls.Page();
        var temp33 = new Fuse.Controls.StackPanel();
        var temp34 = new Fuse.Controls.StackPanel();
        var temp35 = new Fuse.Reactive.DataBinding<string>(temp4_Value_inst, "name");
        var temp36 = new Fuse.Reactive.DataBinding<string>(temp5_Value_inst, "age");
        var temp37 = new Fuse.Controls.Button();
        temp_eb1 = new Fuse.Reactive.EventBinding("submit");
        var temp38 = new Fuse.Controls.StackPanel();
        var temp39 = new Factory(this);
        var temp40 = new Factory1(this);
        var temp41 = new Fuse.Reactive.DataBinding<object>(temp6_Items_inst, "listUppercase");
        var temp42 = new Fuse.Controls.StackPanel();
        var temp43 = new Fuse.Controls.Text();
        var temp44 = new Factory2(this);
        var temp45 = new Factory3(this);
        var temp46 = new Fuse.Reactive.DataBinding<object>(temp7_Items_inst, "myPerson");
        var temp47 = new Fuse.Drawing.StaticSolidColor(float4(0f, 1f, 0.8f, 1f));
        var temp48 = new Fuse.Controls.Page();
        var temp49 = new Fuse.Controls.Text();
        var temp50 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 0f, 1f, 1f));
        _b = new Fuse.Controls.PageControl();
        var temp51 = new Fuse.Controls.Page();
        var temp52 = new Fuse.Controls.Text();
        var temp53 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 1f, 0f, 1f));
        var temp54 = new Fuse.Controls.Page();
        var temp55 = new Fuse.Controls.Text();
        var temp56 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp57 = new Fuse.Controls.Page();
        var temp58 = new Fuse.Controls.Text();
        var temp59 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0f, 0.8f, 1f));
        this.Background = float4(1f, 0.9411765f, 0f, 1f);
        temp8.Children.Add(temp9);
        temp9.Children.Add(temp10);
        temp9.Children.Add(temp18);
        temp10.ColumnCount = 2;
        global::Fuse.Controls.DockPanel.SetDock(temp10, Fuse.Layouts.Dock.Top);
        temp10.Background = temp17;
        temp10.Children.Add(temp11);
        temp10.Children.Add(temp14);
        temp11.Text = "A";
        temp11.Behaviors.Add(temp12);
        temp12.Actions.Add(temp13);
        temp13.Target = _a;
        temp13.NavigationContext = _mainNavigation;
        temp14.Text = "B";
        temp14.Behaviors.Add(temp15);
        temp15.Actions.Add(temp16);
        temp16.Target = _b;
        temp16.NavigationContext = _mainNavigation;
        global::Fuse.Controls.DockPanel.SetDock(temp18, Fuse.Layouts.Dock.Fill);
        temp18.Children.Add(_a);
        temp18.Children.Add(_b);
        temp18.Behaviors.Add(_mainNavigation);
        temp18.Styles.Add(temp19);
        _mainNavigation.Easing = Fuse.Animations.Easing.CubicInOut;
        temp19.Templates.Add(temp20);
        _a.Name = "_a";
        _a.Children.Add(temp22);
        _a.Children.Add(temp23);
        _a.Children.Add(temp32);
        _a.Children.Add(temp48);
        _a.Behaviors.Add(temp21);
        temp21.Code = "var Observable = require('FuseJS/Observable');\n\n        \t\t\t\tvar myVariable = Observable(\"some value\");\n        \t\t\t\tvar name = Observable(\"\");\n        \t\t\t\tvar age = Observable(\"\");\n\n        \t\t\t\tvar lowercase = myVariable.map(function(x){\n        \t\t\t\t\treturn x.toLowerCase();\n        \t\t\t\t});\n\n        \t\t\t\tvar uppercase = myVariable.map(function(x){\n        \t\t\t\t\treturn x.toUpperCase();\n        \t\t\t\t});\n\n\n        \t\t\t\tvar isThomas = myVariable.map(function(x){\n        \t\t\t\t\treturn x==\"Thomas\";\n        \t\t\t\t});\n\n        \t\t\t\tfunction button_clicked(){\n        \t\t\t\t\tmyVariable.value = \"some other value\";\n        \t\t\t\t\tdebug_log(myVariable);\n        \t\t\t\t}\n\n        \t\t\t\tfunction Person(name, age){\n        \t\t\t\t\tthis.name = name;\n        \t\t\t\t\tthis.age = age;\n        \t\t\t\t}\n\n        \t\t\t\tvar myPerson = Observable(\n        \t\t\t\t\tnew Person(\"Thomas\", 25),\n        \t\t\t\t\tnew Person(\"Cassandre\", 25)\n        \t\t\t\t);\n\n        \t\t\t\tvar listUppercase = myPerson\n        \t\t\t\t.map(function(x){\n\t\t\t\t\t\t\treturn new Person(x.name.toUpperCase(), x.age);\n        \t\t\t\t})\n        \t\t\t\t.where(function(x){\n        \t\t\t\t\treturn x.age > 30;\n        \t\t\t\t});\n\n        \t\t\t\tfunction submit(){\n        \t\t\t\t\tvar newPerson = new Person(name.value, age.value);\n        \t\t\t\t\tmyPerson.add(newPerson);\n        \t\t\t\t\tname.value=\"\";\n        \t\t\t\t\tage.value=\"\";\n        \t\t\t\t}\n\n        \t\t\t\tmodule.exports = {\n        \t\t\t\t\tmyVariable : myVariable,\n        \t\t\t\t\tbutton_clicked: button_clicked,\n        \t\t\t\t\tuppercase : uppercase,\n        \t\t\t\t\tlowercase : lowercase,\n        \t\t\t\t\tisThomas: isThomas,\n        \t\t\t\t\tmyPerson : myPerson,\n        \t\t\t\t\tname : name,\n        \t\t\t\t\tage: age,\n        \t\t\t\t\tsubmit : submit,\n        \t\t\t\t\tlistUppercase : listUppercase\n        \t\t\t\t}";
        temp21.LineNumber = 75;
        temp21.FileName = "C:\\Users\\TNeuraz\\Documents\\Perso\\FuseApp\\MainView.ux";
        temp23.Background = temp31;
        temp23.Children.Add(temp24);
        temp24.Children.Add(temp25);
        temp24.Children.Add(temp);
        temp24.Children.Add(temp1);
        temp24.Children.Add(temp2);
        temp24.Children.Add(temp3);
        temp24.Children.Add(temp30);
        temp25.Value = "A1";
        temp.Behaviors.Add(temp26);
        temp1.Behaviors.Add(temp27);
        temp2.Behaviors.Add(temp28);
        temp3.Behaviors.Add(temp29);
        temp30.Text = "Change the value!";
        global::Fuse.Gestures.Clicked.AddHandler(temp30, temp_eb0.OnEvent);
        temp30.Behaviors.Add(temp_eb0);
        temp32.Background = temp47;
        temp32.Children.Add(temp33);
        temp33.Children.Add(temp34);
        temp33.Children.Add(temp38);
        temp33.Children.Add(temp42);
        temp34.Children.Add(temp4);
        temp34.Children.Add(temp5);
        temp34.Children.Add(temp37);
        temp4.Behaviors.Add(temp35);
        temp5.Behaviors.Add(temp36);
        temp37.Text = "Submit";
        global::Fuse.Gestures.Clicked.AddHandler(temp37, temp_eb1.OnEvent);
        temp37.Behaviors.Add(temp_eb1);
        temp38.Behaviors.Add(temp41);
        temp38.Behaviors.Add(temp6);
        temp6.Factories.Add(temp39);
        temp6.Factories.Add(temp40);
        temp42.Children.Add(temp43);
        temp42.Behaviors.Add(temp46);
        temp42.Behaviors.Add(temp7);
        temp43.Value = "Full list";
        temp43.FontSize = 12f;
        temp43.TextColor = float4(0.972549f, 0.5215687f, 0.5215687f, 1f);
        temp7.Factories.Add(temp44);
        temp7.Factories.Add(temp45);
        temp48.Background = temp50;
        temp48.Children.Add(temp49);
        temp49.Value = "A3";
        _b.Name = "_b";
        _b.Children.Add(temp51);
        _b.Children.Add(temp54);
        _b.Children.Add(temp57);
        temp51.Background = temp53;
        temp51.Children.Add(temp52);
        temp52.Value = "B1";
        temp54.Background = temp56;
        temp54.Children.Add(temp55);
        temp55.Value = "B2";
        temp57.Background = temp59;
        temp57.Children.Add(temp58);
        temp58.Value = "B3";
        this.RootNode = temp8;
        this.Theme = Fuse.BasicTheme.BasicTheme.Singleton;
    }
}
