sealed class FuseApp_FuseControlsTextControl_string_Value_Property: Uno.UX.Property<string>
{
    Fuse.Controls.TextControl _obj;
    public FuseApp_FuseControlsTextControl_string_Value_Property(Fuse.Controls.TextControl obj) { _obj = obj; obj.ValueChanged += this.OnValueChanged; }
    protected override string OnGet() { return _obj.Value; }
    protected override void OnSet(string v, object origin) { _obj.SetValue(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<string> listener) { _obj.ValueChanged -= listener; }
}
sealed class FuseApp_FuseControlsToggleControl_bool_Value_Property: Uno.UX.Property<bool>
{
    Fuse.Controls.ToggleControl _obj;
    public FuseApp_FuseControlsToggleControl_bool_Value_Property(Fuse.Controls.ToggleControl obj) { _obj = obj; obj.ValueChanged += this.OnValueChanged; }
    protected override bool OnGet() { return _obj.Value; }
    protected override void OnSet(bool v, object origin) { _obj.SetValue(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<bool> listener) { _obj.ValueChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<bool> listener) { _obj.ValueChanged -= listener; }
}
