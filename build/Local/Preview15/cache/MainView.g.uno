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
    FuseApp_FuseReactiveEach_object_Items_Property temp4_Items_inst;
    internal Fuse.Navigation.LinearNavigation _mainNavigation;
    internal Fuse.Controls.PageControl _a;
    internal Fuse.Reactive.EventBinding temp_eb0;
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
        var temp4 = new Fuse.Reactive.Each();
        temp4_Items_inst = new FuseApp_FuseReactiveEach_object_Items_Property(temp4);
        var temp5 = new Fuse.Controls.ClientPanel();
        var temp6 = new Fuse.Controls.DockPanel();
        var temp7 = new Fuse.Controls.Grid();
        var temp8 = new Fuse.Controls.Button();
        var temp9 = new Fuse.Gestures.Clicked();
        var temp10 = new Fuse.Navigation.NavigateTo();
        var temp11 = new Fuse.Controls.Button();
        var temp12 = new Fuse.Gestures.Clicked();
        var temp13 = new Fuse.Navigation.NavigateTo();
        var temp14 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp15 = new Fuse.Controls.Panel();
        _mainNavigation = new Fuse.Navigation.LinearNavigation();
        var temp16 = new Fuse.Style();
        var temp17 = new Template(this) { Cascade = true, AffectSubtypes = true };
        _a = new Fuse.Controls.PageControl();
        var temp18 = new Fuse.Reactive.JavaScript();
        var temp19 = new Fuse.Controls.Page();
        var temp20 = new Fuse.Controls.StackPanel();
        var temp21 = new Fuse.Controls.Text();
        var temp22 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "myVariable");
        var temp23 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "uppercase");
        var temp24 = new Fuse.Reactive.DataBinding<string>(temp2_Value_inst, "lowercase");
        var temp25 = new Fuse.Reactive.DataBinding<bool>(temp3_Value_inst, "isThomas");
        var temp26 = new Fuse.Controls.Button();
        temp_eb0 = new Fuse.Reactive.EventBinding("button_clicked");
        var temp27 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0.8f, 0f, 1f));
        var temp28 = new Fuse.Controls.Page();
        var temp29 = new Fuse.Controls.StackPanel();
        var temp30 = new Fuse.Controls.Text();
        var temp31 = new Factory(this);
        var temp32 = new Factory1(this);
        var temp33 = new Fuse.Reactive.DataBinding<object>(temp4_Items_inst, "myPerson");
        var temp34 = new Fuse.Drawing.StaticSolidColor(float4(0f, 1f, 0.8f, 1f));
        var temp35 = new Fuse.Controls.Page();
        var temp36 = new Fuse.Controls.Text();
        var temp37 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 0f, 1f, 1f));
        _b = new Fuse.Controls.PageControl();
        var temp38 = new Fuse.Controls.Page();
        var temp39 = new Fuse.Controls.Text();
        var temp40 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 1f, 0f, 1f));
        var temp41 = new Fuse.Controls.Page();
        var temp42 = new Fuse.Controls.Text();
        var temp43 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp44 = new Fuse.Controls.Page();
        var temp45 = new Fuse.Controls.Text();
        var temp46 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0f, 0.8f, 1f));
        this.Background = float4(1f, 0.9411765f, 0f, 1f);
        temp5.Children.Add(temp6);
        temp6.Children.Add(temp7);
        temp6.Children.Add(temp15);
        temp7.ColumnCount = 2;
        global::Fuse.Controls.DockPanel.SetDock(temp7, Fuse.Layouts.Dock.Top);
        temp7.Background = temp14;
        temp7.Children.Add(temp8);
        temp7.Children.Add(temp11);
        temp8.Text = "A";
        temp8.Behaviors.Add(temp9);
        temp9.Actions.Add(temp10);
        temp10.Target = _a;
        temp10.NavigationContext = _mainNavigation;
        temp11.Text = "B";
        temp11.Behaviors.Add(temp12);
        temp12.Actions.Add(temp13);
        temp13.Target = _b;
        temp13.NavigationContext = _mainNavigation;
        global::Fuse.Controls.DockPanel.SetDock(temp15, Fuse.Layouts.Dock.Fill);
        temp15.Children.Add(_a);
        temp15.Children.Add(_b);
        temp15.Behaviors.Add(_mainNavigation);
        temp15.Styles.Add(temp16);
        _mainNavigation.Easing = Fuse.Animations.Easing.CubicInOut;
        temp16.Templates.Add(temp17);
        _a.Name = "_a";
        _a.Children.Add(temp19);
        _a.Children.Add(temp28);
        _a.Children.Add(temp35);
        _a.Behaviors.Add(temp18);
        temp18.Code = "var Observable = require('FuseJS/Observable');\n\n\t\t\t\t\t\tvar myVariable = Observable(\"some value\");\n\n\t\t\t\t\t\tvar lowercase = myVariable.map(function(x){\n\t\t\t\t\t\t\treturn x.toLowerCase();\n\t\t\t\t\t\t});\n\n\t\t\t\t\t\tvar uppercase = myVariable.map(function(x){\n\t\t\t\t\t\t\treturn x.toUpperCase();\n\t\t\t\t\t\t});\n\n\n\t\t\t\t\t\tvar isThomas = myVariable.map(function(x){\n\t\t\t\t\t\t\treturn x==\"Thomas\";\n\t\t\t\t\t\t});\n\n\t\t\t\t\t\tfunction button_clicked(){\n\t\t\t\t\t\t\tmyVariable.value = \"some other value\";\n\t\t\t\t\t\t\tdebug_log(myVariable);\n\t\t\t\t\t\t}\n\n\t\t\t\t\t\tfunction Person(name, age){\n\t\t\t\t\t\t\tthis.name = name;\n\t\t\t\t\t\t\tthis.age = age;\n\t\t\t\t\t\t}\n\n\t\t\t\t\t\tvar myPerson = Observable(\n\t\t\t\t\t\t\tnew Person(\"Thomas\", 25),\n\t\t\t\t\t\t\tnew Person(\"Cassandre\", 25)\n\t\t\t\t\t\t);\n\n\t\t\t\t\t\tmodule.exports = {\n\t\t\t\t\t\t\tmyVariable : myVariable,\n\t\t\t\t\t\t\tbutton_clicked: button_clicked,\n\t\t\t\t\t\t\tuppercase : uppercase,\n\t\t\t\t\t\t\tlowercase : lowercase,\n\t\t\t\t\t\t\tisThomas: isThomas,\n\t\t\t\t\t\t\tmyPerson : myPerson\n\t\t\t\t\t\t}";
        temp18.LineNumber = 75;
        temp18.FileName = "C:\\Users\\TNeuraz\\Documents\\Perso\\FuseApp\\MainView.ux";
        temp19.Background = temp27;
        temp19.Children.Add(temp20);
        temp20.Children.Add(temp21);
        temp20.Children.Add(temp);
        temp20.Children.Add(temp1);
        temp20.Children.Add(temp2);
        temp20.Children.Add(temp3);
        temp20.Children.Add(temp26);
        temp21.Value = "A1";
        temp.Behaviors.Add(temp22);
        temp1.Behaviors.Add(temp23);
        temp2.Behaviors.Add(temp24);
        temp3.Behaviors.Add(temp25);
        temp26.Text = "Change the value!";
        global::Fuse.Gestures.Clicked.AddHandler(temp26, temp_eb0.OnEvent);
        temp26.Behaviors.Add(temp_eb0);
        temp28.Background = temp34;
        temp28.Children.Add(temp29);
        temp29.Children.Add(temp30);
        temp29.Behaviors.Add(temp33);
        temp29.Behaviors.Add(temp4);
        temp30.Value = "A2";
        temp4.Factories.Add(temp31);
        temp4.Factories.Add(temp32);
        temp35.Background = temp37;
        temp35.Children.Add(temp36);
        temp36.Value = "A3";
        _b.Name = "_b";
        _b.Children.Add(temp38);
        _b.Children.Add(temp41);
        _b.Children.Add(temp44);
        temp38.Background = temp40;
        temp38.Children.Add(temp39);
        temp39.Value = "B1";
        temp41.Background = temp43;
        temp41.Children.Add(temp42);
        temp42.Value = "B2";
        temp44.Background = temp46;
        temp44.Children.Add(temp45);
        temp45.Value = "B3";
        this.RootNode = temp5;
        this.Theme = Fuse.BasicTheme.BasicTheme.Singleton;
    }
}
