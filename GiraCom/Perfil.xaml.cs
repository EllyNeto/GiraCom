namespace GiraCom;

public partial class Perfil : ContentPage
{
	public Perfil()
	{
		InitializeComponent();
	}
    private async void Perfl(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new Perfil());
    }
    private async void Hm(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new Home());
    }
    private async void Ev(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new Perfil());
    }
    private async void Nw(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new Perfil());
    }       }