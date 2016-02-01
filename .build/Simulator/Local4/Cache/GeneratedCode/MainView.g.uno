public partial class MainView: Fuse.App
{
    public sealed class Fuse_Controls_Button_string_Text_Property: Uno.UX.Property<string>
    {
        Fuse.Controls.Button _obj;
        public Fuse_Controls_Button_string_Text_Property(Fuse.Controls.Button obj) { _obj = obj; }
        protected override string OnGet() { return _obj.Text; }
        protected override void OnSet(string v, object origin) { _obj.SetText(v, origin); }
        protected override void OnAddListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.TextChanged += listener; }
        protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.TextChanged -= listener; }
    }
    MainView.Fuse_Controls_Button_string_Text_Property temp_Text_inst;
    internal Fuse.Reactive.EventBinding temp_eb0;
    static MainView()
    {
    }
    public MainView()
    {
        InitializeUX();
    }
    internal void InitializeUX()
    {
        var temp = new Fuse.Controls.Button();
        temp_Text_inst = new MainView.Fuse_Controls_Button_string_Text_Property(temp);
        var temp1 = new MyGraphicsTheme();
        var temp2 = new Fuse.Controls.DockPanel();
        var temp3 = new Fuse.Reactive.JavaScript();
        var temp4 = new Fuse.Controls.StatusBarBackground();
        var temp5 = new Fuse.Controls.ScrollView();
        var temp6 = new Fuse.Controls.StackPanel();
        var temp7 = new Fuse.Controls.Slider();
        var temp8 = new Fuse.Reactive.DataBinding<string>(temp_Text_inst, "buttontext");
        temp_eb0 = new Fuse.Reactive.EventBinding("click");
        var temp9 = new Fuse.Drawing.StaticSolidColor(float4(0f, 0f, 0f, 1f));
        var temp10 = new Fuse.Controls.Switch();
        this.Background = float4(1f, 0.9411765f, 0f, 1f);
        temp2.Children.Add(temp4);
        temp2.Children.Add(temp5);
        temp2.Behaviors.Add(temp3);
        temp3.Code = "var Observable = require('FuseJS/Observable');\n    var buttontext = Observable('Button');\n    var clickcount = 0;\n\n    function click() {\n        buttontext.value = 'Clicks: ' + ++clickcount;\n    }\n\n   module.exports = {\n            buttontext : buttontext,\n            click : click\n        }";
        temp3.LineNumber = 4;
        temp3.FileName = "MainView.ux";
        global::Fuse.Controls.DockPanel.SetDock(temp4, Fuse.Layouts.Dock.Top);
        temp5.ClipToBounds = true;
        temp5.Content = temp6;
        temp6.Children.Add(temp7);
        temp6.Children.Add(temp);
        temp6.Children.Add(temp10);
        global::Fuse.Gestures.Clicked.AddHandler(temp, temp_eb0.OnEvent);
        temp.Background = temp9;
        temp.Behaviors.Add(temp8);
        temp.Behaviors.Add(temp_eb0);
        temp10.Alignment = Fuse.Elements.Alignment.Left;
        this.RootNode = temp2;
        this.Theme = temp1;
    }
}
