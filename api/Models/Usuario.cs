using System;
using System.Collections.Generic;

namespace api.Models;

public partial class Usuario
{
    public int Id { get; set; }

    public string? Nome { get; set; }

    public DateOnly DataDeNascimento { get; set; }

    public string? Telefone { get; set; }

    public string Email { get; set; } = null!;

    public string Senha { get; set; } = null!;

    public short NivelAcesso { get; set; }

    public virtual ICollection<InfoView> InfoViews { get; set; } = new List<InfoView>();

    public virtual ICollection<Informaco> Informacos { get; set; } = new List<Informaco>();
}
