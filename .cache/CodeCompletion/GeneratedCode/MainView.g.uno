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
        var temp1 = new Fuse.Controls.DockPanel();
        var temp2 = new Fuse.Reactive.JavaScript();
        var temp3 = new Fuse.Controls.StatusBarBackground();
        var temp4 = new Fuse.Controls.ScrollView();
        var temp5 = new Fuse.Controls.StackPanel();
        var temp6 = new Fuse.Controls.Slider();
        var temp7 = new Fuse.Reactive.DataBinding<string>(temp_Text_inst, "buttontext");
        temp_eb0 = new Fuse.Reactive.EventBinding("click");
        var temp8 = new Fuse.Drawing.StaticSolidColor(float4(0.5647059f, 0.08235294f, 0.2666667f, 1f));
        var temp9 = new Fuse.Controls.Switch();
        this.Background = float4(1f, 0.9411765f, 0f, 1f);
        temp1.Children.Add(temp3);
        temp1.Children.Add(temp4);
        temp1.Behaviors.Add(temp2);
        temp2.Code = "var Observable = require('FuseJS/Observable');\n    var buttontext = Observable('Button');\n    var clickcount = 0;\n\n    function click() {\n        buttontext.value = 'Clicks: ' + ++clickcount;\n    }\n\n   module.exports = {\n            buttontext : buttontext,\n            click : click\n        }";
        temp2.LineNumber = 3;
        temp2.FileName = "MainView.ux";
        global::Fuse.Controls.DockPanel.SetDock(temp3, Fuse.Layouts.Dock.Top);
        temp4.ClipToBounds = true;
        temp4.Content = temp5;
        temp5.Children.Add(temp6);
        temp5.Children.Add(temp);
        temp5.Children.Add(temp9);
        global::Fuse.Gestures.Clicked.AddHandler(temp, temp_eb0.OnEvent);
        temp.Background = temp8;
        temp.Behaviors.Add(temp7);
        temp.Behaviors.Add(temp_eb0);
        temp9.Alignment = Fuse.Elements.Alignment.Left;
        this.RootNode = temp1;
        this.Theme = Fuse.BasicTheme.BasicTheme.Singleton;
    }
}
