namespace GiraCom
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }
        private async void OnLabelTapped(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new NewPage1());
        }
        private async void OnClick(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new NewPage2());
        }
    }

}
