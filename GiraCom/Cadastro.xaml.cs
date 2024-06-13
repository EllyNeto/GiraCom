namespace GiraCom;

public partial class Cadastro : ContentPage
{
	public Cadastro()
	{
		InitializeComponent();
	}
    private async void OnClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MainPage());
    }
}