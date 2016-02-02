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
    internal Fuse.Navigation.LinearNavigation _mainNavigation;
    internal MyPageControlA _a;
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
        var temp = new Fuse.Controls.ClientPanel();
        var temp1 = new Fuse.Controls.DockPanel();
        var temp2 = new Fuse.Controls.Grid();
        var temp3 = new Fuse.Controls.Button();
        var temp4 = new Fuse.Gestures.Clicked();
        var temp5 = new Fuse.Navigation.NavigateTo();
        var temp6 = new Fuse.Controls.Button();
        var temp7 = new Fuse.Gestures.Clicked();
        var temp8 = new Fuse.Navigation.NavigateTo();
        var temp9 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp10 = new Fuse.Controls.Panel();
        _mainNavigation = new Fuse.Navigation.LinearNavigation();
        var temp11 = new Fuse.Style();
        var temp12 = new Template(this) { Cascade = true, AffectSubtypes = true };
        _a = new MyPageControlA();
        _b = new Fuse.Controls.PageControl();
        var temp13 = new Fuse.Controls.Page();
        var temp14 = new Fuse.Controls.Text();
        var temp15 = new Fuse.Drawing.StaticSolidColor(float4(0.8f, 1f, 0f, 1f));
        var temp16 = new Fuse.Controls.Page();
        var temp17 = new Fuse.Controls.Text();
        var temp18 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0.8f, 1f, 1f));
        var temp19 = new Fuse.Controls.Page();
        var temp20 = new Fuse.Controls.Text();
        var temp21 = new Fuse.Drawing.StaticSolidColor(float4(1f, 0f, 0.8f, 1f));
        this.Background = float4(1f, 0.9411765f, 0f, 1f);
        temp.Children.Add(temp1);
        temp1.Children.Add(temp2);
        temp1.Children.Add(temp10);
        temp2.ColumnCount = 2;
        global::Fuse.Controls.DockPanel.SetDock(temp2, Fuse.Layouts.Dock.Top);
        temp2.Background = temp9;
        temp2.Children.Add(temp3);
        temp2.Children.Add(temp6);
        temp3.Text = "A";
        temp3.Behaviors.Add(temp4);
        temp4.Actions.Add(temp5);
        temp5.Target = _a;
        temp5.NavigationContext = _mainNavigation;
        temp6.Text = "B";
        temp6.Behaviors.Add(temp7);
        temp7.Actions.Add(temp8);
        temp8.Target = _b;
        temp8.NavigationContext = _mainNavigation;
        global::Fuse.Controls.DockPanel.SetDock(temp10, Fuse.Layouts.Dock.Fill);
        temp10.Children.Add(_a);
        temp10.Children.Add(_b);
        temp10.Behaviors.Add(_mainNavigation);
        temp10.Styles.Add(temp11);
        _mainNavigation.Easing = Fuse.Animations.Easing.CubicInOut;
        temp11.Templates.Add(temp12);
        _a.Name = "_a";
        _b.Name = "_b";
        _b.Children.Add(temp13);
        _b.Children.Add(temp16);
        _b.Children.Add(temp19);
        temp13.Background = temp15;
        temp13.Children.Add(temp14);
        temp14.Value = "B1";
        temp16.Background = temp18;
        temp16.Children.Add(temp17);
        temp17.Value = "B2";
        temp19.Background = temp21;
        temp19.Children.Add(temp20);
        temp20.Value = "B3";
        this.RootNode = temp;
        this.Theme = Fuse.BasicTheme.BasicTheme.Singleton;
    }
}
