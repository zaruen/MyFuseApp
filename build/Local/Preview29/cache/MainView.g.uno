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
    [global::Uno.UX.UXGlobalResource("MyPagesLogic")] public static readonly Fuse.Reactive.JavaScript MyPagesLogic;
    internal Fuse.Reactive.EventBinding temp_eb0;
    internal Fuse.Reactive.EventBinding temp_eb1;
    internal Fuse.Controls.PageControl _b;
    static MainView()
    {
        MyPagesLogic = new Fuse.Reactive.JavaScript();
        global::Uno.UX.Resource.SetGlobalKey(MyPagesLogic, "MyPagesLogic");
        MyPagesLogic.File = new global::Uno.UX.BundleFileSource(import global::Uno.BundleFile("../../../../MyPagesLogic.js"));
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
        var temp20 = new MyPage();
        var temp21 = new Fuse.Controls.Page();
        var temp22 = new Fuse.Controls.StackPanel();
        var temp23 = new Fuse.Controls.Text();
        var temp24 = new Fuse.Reactive.DataBinding<string>(temp_Value_inst, "myVariable");
        var temp25 = new Fuse.Reactive.DataBinding<string>(temp1_Value_inst, "uppercase");
        var temp26 = new Fuse.Reactive.DataBinding<string>(temp2_Value_inst, "lowercase");
        var temp27 = new Fuse.Reactive.DataBinding<bool>(temp3_Value_inst, "isThomas");
        var temp28 = new Fuse.Controls.Button();
        temp_eb0 = new Fuse.Reactive.EventBinding("button_clicked");
        var temp29 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0.8f, 0f, 1f));
        var temp30 = new Fuse.Controls.Page();
        var temp31 = new Fuse.Controls.StackPanel();
        var temp32 = new Fuse.Controls.StackPanel();
        var temp33 = new Fuse.Reactive.DataBinding<string>(temp4_Value_inst, "name");
        var temp34 = new Fuse.Reactive.DataBinding<string>(temp5_Value_inst, "age");
        var temp35 = new Fuse.Controls.Button();
        temp_eb1 = new Fuse.Reactive.EventBinding("submit");
        var temp36 = new Factory(this);
        var temp37 = new Factory1(this);
        var temp38 = new Fuse.Reactive.DataBinding<object>(temp6_Items_inst, "listUppercase");
        var temp39 = new Fuse.Drawing.StaticSolidColor(float4(0f, 1f, 0.8f, 1f));
        var temp40 = new Fuse.Controls.Page();
        var temp41 = new Fuse.Controls.Text();
        var temp42 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 0f, 1f, 1f));
        _b = new Fuse.Controls.PageControl();
        var temp43 = new Fuse.Controls.Page();
        var temp44 = new Fuse.Controls.Text();
        var temp45 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 1f, 0f, 1f));
        var temp46 = new Fuse.Controls.Page();
        var temp47 = new Fuse.Controls.Text();
        var temp48 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp49 = new Fuse.Controls.Page();
        var temp50 = new Fuse.Controls.Text();
        var temp51 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0f, 0.8f, 1f));
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
        _a.Children.Add(temp20);
        _a.Children.Add(temp21);
        _a.Children.Add(temp30);
        _a.Children.Add(temp40);
        temp21.Background = temp29;
        temp21.Children.Add(temp22);
        temp22.Children.Add(temp23);
        temp22.Children.Add(temp);
        temp22.Children.Add(temp1);
        temp22.Children.Add(temp2);
        temp22.Children.Add(temp3);
        temp22.Children.Add(temp28);
        temp23.Value = "A1";
        temp.Behaviors.Add(temp24);
        temp1.Behaviors.Add(temp25);
        temp2.Behaviors.Add(temp26);
        temp3.Behaviors.Add(temp27);
        temp28.Text = "Change the value!";
        global::Fuse.Gestures.Clicked.AddHandler(temp28, temp_eb0.OnEvent);
        temp28.Behaviors.Add(temp_eb0);
        temp30.Background = temp39;
        temp30.Children.Add(temp31);
        temp31.Children.Add(temp32);
        temp31.Behaviors.Add(temp38);
        temp31.Behaviors.Add(temp6);
        temp32.Children.Add(temp4);
        temp32.Children.Add(temp5);
        temp32.Children.Add(temp35);
        temp4.Behaviors.Add(temp33);
        temp5.Behaviors.Add(temp34);
        temp35.Text = "Submit";
        global::Fuse.Gestures.Clicked.AddHandler(temp35, temp_eb1.OnEvent);
        temp35.Behaviors.Add(temp_eb1);
        temp6.Factories.Add(temp36);
        temp6.Factories.Add(temp37);
        temp40.Background = temp42;
        temp40.Children.Add(temp41);
        temp41.Value = "A3";
        _b.Name = "_b";
        _b.Children.Add(temp43);
        _b.Children.Add(temp46);
        _b.Children.Add(temp49);
        temp43.Background = temp45;
        temp43.Children.Add(temp44);
        temp44.Value = "B1";
        temp46.Background = temp48;
        temp46.Children.Add(temp47);
        temp47.Value = "B2";
        temp49.Background = temp51;
        temp49.Children.Add(temp50);
        temp50.Value = "B3";
        this.RootNode = temp7;
        this.Theme = Fuse.BasicTheme.BasicTheme.Singleton;
    }
}
