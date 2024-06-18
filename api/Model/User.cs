using System.ComponentModel.DataAnnotations.Schema;

namespace api.Model
{
    public class User
    {
            public int Id { get; set; }

            public int? Nome { get; set; }
         
            public DateTime Data_de_nascimento { get; set; }
          
            public int Telefone { get; set; }
 
            public string? Email { get; set; }
            
            public string? Senha { get; set; }
          
            public int Nivel_Acesso { get; set; }

        }
    }


