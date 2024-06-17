using System;
using System.Collections.Generic;

namespace api.Models;

public partial class Informaco
{
    public int Id { get; set; }

    public string Titulo { get; set; } = null!;

    public string Descricao { get; set; } = null!;

    public DateTime? Dataa { get; set; }

    public string Evento { get; set; } = null!;

    public string Organizacao { get; set; } = null!;

    public string? Foto { get; set; }

    public DateTime DataDeRealizacao { get; set; }

    public DateTime? CreatedAt { get; set; }

    public DateTime? UpdatedAt { get; set; }

    public int? Usuarioid { get; set; }

    public virtual ICollection<InfoView> InfoViews { get; set; } = new List<InfoView>();

    public virtual Usuario? Usuario { get; set; }
}
