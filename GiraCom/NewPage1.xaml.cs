namespace GiraCom;

public partial class NewPage1 : ContentPage
{
	public NewPage1()
	{
		InitializeComponent();
	}
    private async void OnClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MainPage());
    }
}