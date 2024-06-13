namespace GiraCom;

public partial class Home : ContentPage
{
	public Home()
	{
		InitializeComponent();
	}

    private async void Perfil(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new Perfil());
    }
}